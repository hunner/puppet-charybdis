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
  $conffile = $charybdis::params::conffile
) inherits charybdis::params {

  package { 'charybdis':
    ensure => present,
  }
  service { 'charybdis':
    ensure  => running,
    enable  => true,
    restart => '/bin/kill -HUP `cat /var/run/charybdis/ircd.pid`',
  }
  include concat::setup
  concat { $conffile:
    owner   => "root",
    group   => "charybdis",
    mode    => "440",
    require => Package['charybdis'],
    notify  => Service['charybdis'],
  }
}
