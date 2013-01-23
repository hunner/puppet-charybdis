define charybdis::listen (
  $port = undef,
  $sslport = undef,
  $host = undef,
  $conffile = $charybdis::conffile
) {
  if ! $port and ! $sslport {
    fail("Charybdis::Listen[${name}]: port and/or sslport parameters required.")
  }

  concat::fragment { "${name} listen":
    target  => $conffile,
    content => template("charybdis/listen.erb"),
    order   => '020',
  }
  if ! defined(Concat::Fragment['listen open']) {
    concat::fragment { 'listen open':
      target  => $conffile,
      content => "listen {\n",
      order   => '019',
    }
  }
  if ! defined(Concat::Fragment['listen close']) {
    concat::fragment { 'listen close':
      target  => $conffile,
      content => "};\n",
      order   => '021',
    }
  }
}
