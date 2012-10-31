class charybdis::default::modules {
  class { 'charybdis::modules':
    paths => [
      'modules',
      'modules/autoload',
    ],
  }
}
