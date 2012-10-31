class charybdis::serverhide (
  settings  = {
    'flatten_links'  = 'yes',
    'links_delay'    = '5 minutes',
    'hidden'         = 'no',
    'disable_hidden' = 'no',
  },
  $conffile = $charybdis::conffile
) {
  concat::fragment { 'serverhide conf':
    target  => $conffile,
    content => template('charybdis/serverhide.erb'),
    order   => '090',
  }
}
