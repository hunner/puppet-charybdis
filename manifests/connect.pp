define charybdis::connect (
  $ip,
  $send_password,
  $accept_password,
  $port,
  $ipv6     = false,
  $hub_mask = '*',
  $class    = 'server',
  $flags    = [
    'ssl',
    'topicburst',
  ],
  $conffile = $charybdis::conffile
) {
  $connectclass = $class

  concat::fragment { "${name} operator":
    target  => $conffile,
    content => template("charybdis/connect.erb"),
    order   => '040',
  }
}
