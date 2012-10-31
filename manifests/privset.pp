define charybdis::privset (
  $extends  = false,
  $privs    = [],
  $order    = '99',
  $conffile = $charybdis::conffile
) {
  $privset = $name
  concat::fragment { "$privset privset":
    target  => $conffile,
    content => template('charybdis/privset.erb'),
    order   => "030-${order}",
  }
}
