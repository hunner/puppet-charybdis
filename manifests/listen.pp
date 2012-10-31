class charybdis::listen (
  $hosts    = {
    'default' => {
      'port'    => '5000, 6665 .. 6669',
      'sslport' => '6697',
    }
  },
  $conffile = $charybdis::conffile,
) {
  concat::fragment { "listen conf":
    target  => $conffile,
    content => template("charybdis/listen.erb"),
    order   => '020',
  }
}
