# Class: charybdis
#
# This module manages charybdis and its config
#
# Actions:
#
# Requires:
#  ripienaar-concat module
#
class charybdis (
  $conffile = $charybdis::params::conffile,
) inherits charybdis::params {

  # Location of the conf file based on operating system
  case $osfamily {
    'Debian': {
      $conffile = '/etc/charybdis/ircd.conf',
    }
    default: {
      fail("\$osfamily ${osfamily} is not supported by the charybdis module")
    }
  }
  package { 'charybdis':
    ensure => present,
  }
  service { 'charybdis':
    ensure  => running,
    enable  => true,
    restart => '/sbin/service charybdis reload',
  }
  concat { $conffile:
    owner   => "irc",
    group   => "irc",
    mode    => "400",
    require => Package['charybdis'],
    notify  => Service['charybdis'],
  }
}
