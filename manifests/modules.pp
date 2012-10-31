define charybdis::modules (
  $conffile = $charybdis::conffile
) {
  concat::fragment { "${name} modules":
    target  => $conffile,
    content => template('charybdis/modules.erb'),
    order   => '130',
  }
  if ! defined(Concat::Fragment['modules open']) {
    concat::fragment { 'modules open':
      target  => $conffile,
      content => "modules {\n",
      order   => '129',
    }
  }
  if ! defined(Concat::Fragment['modules close']) {
    concat::fragment { 'modules close':
      target  => $conffile,
      content => "};\n",
      order   => '131',
    }
  }
}
