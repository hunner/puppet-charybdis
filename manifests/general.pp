class charybdis::general (
  $quoted   = {},
  $unquoted = {},
  $conffile = $charybdis::conffile
) {
  concat::fragment { 'general conf':
    target  => $conffile,
    content => template('charybdis/general.erb'),
    order   => '120',
  }
}
