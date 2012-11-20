define charybdis::listen (
  $port,
  $sslport,
  $host = undef,
  $conffile = $charybdis::conffile
) {
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
