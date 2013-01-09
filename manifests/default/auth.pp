class charybdis::default::auth {
  charybdis::auth { 'opers':
    order     => '1',
    users     => [
      '*@127.0.0.0/8',
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
