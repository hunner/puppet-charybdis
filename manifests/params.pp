class charybdis::params {
  # Location of the conf file based on operating system
  case $osfamily {
    'Debian': {
      $conffile = '/etc/charybdis/ircd.conf'
    }
    default: {
      fail("\$osfamily ${osfamily} is not supported by the charybdis module")
    }
  }
}
