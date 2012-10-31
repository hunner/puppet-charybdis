define charybdis::class (
  $ping_time,
  $sendq,
  $max_number,
  $connectfreq          = false,
  $number_per_ident     = false,
  $number_per_ip        = false,
  $number_per_ip_global = false,
  $number_per_cidr      = false,
  $cidr_ipv4_bitlen     = false,
  $cidr_ipv6_bitlen     = false,
  $conffile             = $charybdis::conffile
) {
  $classname = $name

  concat::fragment { "$classname class":
    target  => $conffile,
    content => template('charybdis/class.erb'),
    order   => '010',
  }
}
