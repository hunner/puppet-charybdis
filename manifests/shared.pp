define charybdis::shared (
  $oper     = '*@*',
  $server   = '*',
  $flags    = [
    'all',
    'rehash',
  ],
  $conffile = $charybdis::conffile
) {
  concat::fragment { "$name shared":
    target  => $conffile,
    content => template('charybdis/shared.erb'),
    order   => '070',
  }
}
