define charybdis::blacklist (
  $reason,
  $conffile = $charybdis::conffile
) {
  $host = $name
  concat::fragment { "$name blacklist":
    target  => $conffile,
    content => template('charybdis/blacklist.erb'),
    order   => '100',
  }
  if ! defined(Concat::Fragment['blacklist open']) {
    concat::fragment { 'blacklist open':
      target  => $conffile,
      content => "blacklist {\n",
      order   => '099',
    }
  }
  if ! defined(Concat::Fragment['blacklist close']) {
    concat::fragment { 'blacklist close':
      target  => $conffile,
      content => "};\n",
      order   => '101',
    }
  }
}
