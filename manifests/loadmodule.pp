define charybdis::loadmodule (
  $conffile = $charybdis::conffile
) {
  concat::fragment { "$name loadmodule":
    target  => $conffile,
    content => template('charybdis/loadmodule.erb'),
    order   => '000',
  }
}
