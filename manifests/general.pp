class charybdis::general (
  $settings = {},
  $conffile = $charybdis::conffile
) {
  concat::fragment { 'general conf':
    target  => $conffile,
    content => template('charybdis/general.erb'),
    order   => '120',
  }
}
