class charybdis::default::operator {
  charybdis::operator { 'root':
    users    => ['*root@127.0.0.1'],
    privset  => 'admin',
    password => 'password',
    snomask  => '+Zbfkrsuy',
    flags   => [
      '~encrypted',
      'need_ssl',
    ],
    umodes  => [
      'locops',
      'servnotice',
      'operwall',
      'wallop',
    ],
  }
}
