class charybdis::default::serverinfo {
  class { 'charybdis::serverinfo':
    restartpass => 'changeme',
    diepass     => 'changeme',
  }
}
