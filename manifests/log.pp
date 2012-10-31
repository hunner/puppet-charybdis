class charybdis::log (
  $userlog    = '/var/log/charybdis/userlog',
  $fuserlog   = '/var/log/charybdis/fuserlog',
  $operlog    = '/var/log/charybdis/operlog',
  $foperlog   = '/var/log/charybdis/foperlog',
  $serverlog  = '/var/log/charybdis/serverlog',
  $klinelog   = '/var/log/charybdis/klinelog',
  $killlog    = '/var/log/charybdis/killlog',
  $operspylog = '/var/log/charybdis/operspylog',
  $ioerrorlog = '/var/log/charybdis/ioerror',
  $conffile   = $charybdis::conffile
) {
  concat::fragment { 'log conf':
    target  => $conffile,
    content => template('charybdis/log.erb'),
    order   => '005',
  }
}
