define charybdis::channel (
  $value,
  $conffile = $charybdis::conffile
) {
  concat::fragment { "${name} channel":
    target  => $conffile,
    content => template('charybdis/channel.erb'),
    order   => '080',
  }
  if ! defined(Concat::Fragment['channel open']) {
    concat::fragment { 'channel open':
      target  => $conffile,
      content => "channel {\n",
      order   => '079',
    }
  }
  if ! defined(Concat::Fragment['channel close']) {
    concat::fragment { 'channel close':
      target  => $conffile,
      content => "};\n",
      order   => '081',
    }
  }
}
