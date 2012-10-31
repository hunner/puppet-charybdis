class charybdis::default::serverhide {
  charybdis::serverhide { 'flatten_links' : value => 'yes', }
  charybdis::serverhide { 'links_delay'   : value => '5 minutes', }
  charybdis::serverhide { 'hidden'        : value => 'no', }
  charybdis::serverhide { 'disable_hidden': value => 'no', }
}
