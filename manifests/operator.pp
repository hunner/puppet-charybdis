# Example:
# charybdis::operator { 'god':
#   users               => ['*god@127.0.0.1'],
#   privset             => 'admin',
#   rsa_public_key_file => '/etc/charybdis/oper.pub',
#   fingerprint         => 'c77106576abf7f9f90cca0f63874a60f2e40a64b',
#   snomask             => '+Zbfkrsuy',
#   flags               => [
#     'encrypted',
#     'need_ssl'
#   ],
#   umodes              => [
#     'locops',
#     'servnotice',
#     'operwall',
#     'wallop',
#   ],
# }
define charybdis::operator (
  $users,
  $privset,
  $password            = false,
  $rsa_public_key_file = false,
  $umodes              = [],
  $fingerprint         = false,
  $snomask             = false,
  $flags               = [],
  $conffile            = $charybdis::conffile
) {
  if ! $password and ! $rsa_public_key_file {
    fail("Must supply either `password` or `rsa_public_key_file` to Charybdis::Operator[$name]")
  }

  concat::fragment { "${name} operator":
    target  => $conffile,
    content => template('charybdis/operator.erb'),
    order   => '040',
  }
}
