class charybdis::modules (
  $paths    = [],
  $conffile = $charybdis::conffile,
) {
  concat::fragment { 'modules conf':
    target  => $conffile,
    content => template('charybdis/modules.erb'),
    order   => '130',
  }
}
