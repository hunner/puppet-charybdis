define charybdis::exempt (
  $ip       = '127.0.0.1',
  $conffile = $charybdis::conffile
) {
  concat::fragment { "$name exempt":
    target  => $conffile,
    content => template('charybdis/exempt.erb'),
    order   => '075',
  }
}
