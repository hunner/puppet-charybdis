class charybdis::default::blacklist {
  charybdis::blacklist { 'rbl.efnetrbl.org':
    reason => '${nick}, your IP (${ip}) is listed in EFnet\'s RBL. For assistance, see http://efnetrbl.org/?i=${ip}',
  }
  charybdis::blacklist { 'ircbl.ahbl.org':
    reason => '${nick}, your IP (${ip}) is listed in ${dnsbl-host} for having an open proxy. In order to protect ${network-name} from abuse, we are not allowing connections with open proxies to connect.',
  }
  charybdis::blacklist { 'tor.ahbl.org':
    reason => '${nick}, your IP (${ip}) is listed as a TOR exit node. In order to protect ${network-name} from tor-based abuse, we are not allowing TOR exit nodes to connect to our network.',
  }
}
