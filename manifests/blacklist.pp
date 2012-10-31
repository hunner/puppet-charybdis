class charybdis::blacklist (
  $hosts    = {},
  $conffile = $charybdis::conffile
) {
  concat::fragment { 'blacklist conf':
    target  => $conffile,
    content => template('charybdis/blacklist.erb'),
    order   => '100',
  }
}
