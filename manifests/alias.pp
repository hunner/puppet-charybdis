define charybdis::alias (
  $target,
  $conffile = $charybdis::conffile
) {
  concat::fragment { "$name alias":
    target  => $conffile,
    content => template('charybdis/alias.erb'),
    order   => '110',
  }
}
