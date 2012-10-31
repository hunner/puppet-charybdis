class charybdis::service (
  $conffile = $charybdis::conffile
) {
  concat::fragment { 'service conf':
    target  => $conffile,
    content => template('charybdis/service.erb'),
    order   => '050',
  }
}
