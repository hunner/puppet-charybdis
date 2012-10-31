class charybdis::default::serverinfo {
  class { 'charybdis::serverinfo':
    restartpass     => 'changeme',
    diepass         => 'changeme',
    ssl_private_key => '/etc/charybdis/test.key',
    ssl_cert        => '/etc/charybdis/test.cert',
    ssl_dh_params   => '/etc/charybdis/dh.pem',
  }
}
