class charybdis::admin (
  $name         = "Lazy Admin",
  $description  = "IRC network admin",
  $email        = "admin@127.0.0.1",
) {
  concat::fragment { 'admin conf':
    target  => $conffile
    content => template('charybdis/admin.erb'),
    order   => '004',
  }
}
