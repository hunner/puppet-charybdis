class charybdis::default::listen {
  charybdis::listen { 'default':
    port    => '5000, 6665 .. 6669',
    sslport => '6697',
  }
}
