class charybdis::serverinfo (
  $restartpass,
  $diepass,
  $server_name         = 'ircd.int',
  $server_id           = '42X',
  $server_description  = 'IRC server',
  $network_name        = 'IRC network',
  $network_description = 'IRC network',
  $ssl_private_key     = false,
  $ssl_cert            = false,
  $ssl_dh_params       = false,
  $ssld_count          = '1',
  $hub                 = true,
  $max_clients         = '1024',
  $virtual_ipv4        = false,
  $virtual_ipv6        = false,
  $conffile            = $charybdis::conffile
) {
  #TODO Make the user/group for ircd to run as an option
  $hubtext = $hub ? {
    true  => 'yes',
    false => 'no',
  }

  Exec {
    logoutput => 'on_failure',
    path      => [
      '/bin',
      '/sbin',
      '/usr/bin',
      '/usr/sbin',
    ],
  }
  if $ssl_private_key and $ssl_cert {
    exec { 'Create private key and cert':
      command => "openssl req -x509 -nodes -newkey rsa:1024 -keyout ${ssl_private_key} -out ${ssl_cert} -subj '/C=US/ST=Oregon/L=Portland/O=PuppetLabs/CN=${server_name}'",
      creates => $ssl_private_key,
      require => Package['charybdis'],
      before  => [
        Concat[$conffile],
        File[$ssl_private_key],
        File[$ssl_cert],
      ],
    }
    file { $ssl_private_key:
      owner => 'root',
      group => 'charybdis',
    }
    file { $ssl_cert:
      owner => 'root',
      group => 'charybdis',
    }
  }
  if $ssl_dh_params {
    exec { 'Create dhparam':
      command => "openssl dhparam -out $ssl_dh_params 1024",
      creates => $ssl_dh_params,
      require => Package['charybdis'],
      before  => [
        Concat[$conffile],
        File[$ssl_dh_params],
      ],
    }
    file { $ssl_dh_params:
      owner => 'root',
      group => 'charybdis',
    }
  }

  concat::fragment { 'serverinfo conf':
    target  => $conffile,
    content => template('charybdis/serverinfo.erb'),
    order   => '002',
  }
}
