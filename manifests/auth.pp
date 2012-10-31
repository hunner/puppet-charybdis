define charybdis::auth (
  $authclass,
  $users    = [],
  $order    = '5',
  $password = false,
  $spoof    = false,
  $flags    = [],
  $conffile = $charybdis::conffile
) {
  $authname = $name

  # Possible flags:
  #
  # encrypted                 | password is encrypted with mkpasswd
  # spoof_notice              | give a notice when spoofing hosts
  # exceed_limit (old > flag) | allow user to exceed class user limits
  # kline_exempt (old ^ flag) | exempt this user from k/g/xlines&dnsbls
  # dnsbl_exempt              | exempt this user from dnsbls
  # spambot_exempt            | exempt this user from spambot checks
  # shide_exempt              | exempt this user from serverhiding
  # jupe_exempt               | exempt this user from generating
  #                             warnings joining juped channels
  # resv_exempt               | exempt this user from resvs
  # flood_exempt              | exempt this user from flood limits
  #                                    USE WITH CAUTION.
  # no_tilde     (old - flag) | don't prefix ~ to username if no ident
  # need_ident   (old + flag) | require ident for user in this class
  # need_ssl                  | require SSL/TLS for user in this class
  # need_sasl                 | require SASL id for user in this class
  concat::fragment { "$authname auth":
    target  => $conffile,
    content => template("charybdis/auth.erb"),
    order   => "025-${order}",
  }
}
