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

  concat::fragment { 'serverinfo conf':
    target  => $conffile,
    content => template('charybdis/serverinfo.erb'),
    order   => '001',
  }
}
