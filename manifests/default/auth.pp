class charybdis::default::auth {
  charybdis::auth { 'opers':
    order     => '1',
    users     => [
      '*@172.16.0.0/12',
      '*@fc88::*',
    ],
    password  => 'letmein',
    spoof     => 'I.still.hate.packets',
    flags     => [
      'kline_exempt',
      'exceed_limit',
    ],
    authclass => 'opers',
  }
  charybdis::auth { 'default':
    users     => '*@*',
    authclass => 'users',
  }
}
