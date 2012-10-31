class charybdis::default inherits charybdis {
  include charybdis::admin
  include charybdis::cluster
  include charybdis::log

  include charybdis::default::alias
  include charybdis::default::auth
  include charybdis::default::blacklist
  include charybdis::default::class
  include charybdis::default::general
  include charybdis::default::modules
  include charybdis::default::privset
  include charybdis::default::serverinfo

  charybdis::exempt { 'default': }
  charybdis::shared { 'default': }
}
