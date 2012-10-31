class charybdis::default::class {
  charybdis::class { 'users':
    ping_time            => '2 minutes',
    number_per_ident     => '10',
    number_per_ip        => '10',
    number_per_ip_global => '50',
    cidr_ipv4_bitlen     => '24',
    cidr_ipv6_bitlen     => '64',
    number_per_cidr      => '200',
    max_number           => '3000',
    sendq                => '400 kbytes',
  }
  charybdis::class { 'opers':
    ping_time     => '5 minutes',
    number_per_ip => '10',
    max_number    => '1000',
    sendq         => '1 megabyte',
  }
  charybdis::class { 'server':
    ping_time   => '5 minutes',
    connectfreq => '5 minutes',
    max_number  => '1',
    sendq       => '4 megabytes',
  }
}
