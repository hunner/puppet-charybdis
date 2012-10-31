class charybdis::cluster (
  $clustername = '*',
  $flags       = [
    'kline',
    'tkline',
    'unkline',
    'xline',
    'txline',
    'unxline',
    'resv',
    'tresv',
    'unresv',
  ],
  $conffile    = $charybdis::conffile
) {
  concat::fragment { 'cluster conf':
    target  => $conffile,
    content => template('charybdis/cluster.erb'),
    order   => '060',
  }
}
