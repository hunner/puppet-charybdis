# Port configuration options
class { "portconf": }
portconf::port { "irc/unreal":
  with    => ["hub","ziplinks","ssl","ipv6","prefixaq"],
  without => ["nospoof","remote"],
}

Class["portconf"] -> Class["ircd"]
include ircd
include ircd::package

ircd::server { "dmin.puppetlabs.com":
  numeric        => "1",
  defaultserver  => "irc.puppetlabs.com",
  servicesserver => "services.puppetlabs.com",
  cloaks         => ["aoAr1HnR6gl3sJ7hVz4Zb7x4YwpW","g40jg0j52j9hg2F9J49H4JF9HF9F","F02J3F09HJRO23flldfj02jFKJF1"],
  restartpass    => "changeme",
  diepass        => "changeme",
}

ircd::op { "hunner":
  hostmasks => "hunner@*.cat.pdx.edu",
  password  => "md5hash",
  level     => "netadmin",
}
ircd::listen {
  "standard":
    port => "6667";
  "standard-ssl":
    port => "6697",
    ssl  => true;
  "alt-ssl":
    port => "9999",
    ssl  => true;
  "services":
    port => "7030";
  "irc2-link":
    port => "7089",
    ssl  => true;
}
ircd::link {
  "irc2.puppetlabs.com":
    hostname => "::ffff:192.168.159.145",
    port     => "7089",
    password => "l33t",
    options  => ["autoconnect","ssl","zip"];
  "services.puppetlabs.com":
    hostname => "::ffff:192.168.159.144",
    port     => "*",
    password => "l33tservices";
}
