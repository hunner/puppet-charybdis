class charybdis::default inherits charybdis {
  include charybdis::admin
  include charybdis::channel
  include charybdis::cluster
  include charybdis::listen
  include charybdis::log
  include charybdis::serverhide

  include charybdis::default::alias
  include charybdis::default::auth
  include charybdis::default::blacklist
  include charybdis::default::class
  include charybdis::default::general
  include charybdis::default::loadmodule
  include charybdis::default::modules
  include charybdis::default::operator
  include charybdis::default::privset
  include charybdis::default::serverinfo

  charybdis::exempt { 'default': }
  charybdis::shared { 'default': }
}
