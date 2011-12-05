class users::system {
  user { 'adm':
    ensure           => 'present',
    comment          => 'adm',
    gid              => '4',
    groups           => ['sys', 'adm'],
    home             => '/var/adm',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '3',
  }
  user { 'bin':
    ensure           => 'present',
    comment          => 'bin',
    gid              => '1',
    groups           => ['bin', 'daemon', 'sys'],
    home             => '/bin',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '1',
  }
  user { 'daemon':
    ensure           => 'present',
    comment          => 'daemon',
    gid              => '2',
    groups           => ['bin', 'daemon', 'adm', 'lp'],
    home             => '/sbin',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '2',
  }
  user { 'dbus':
    ensure           => 'present',
    comment          => 'System message bus',
    gid              => '81',
    home             => '/',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '81',
  }
  user { 'ftp':
    ensure           => 'present',
    comment          => 'FTP User',
    gid              => '50',
    home             => '/var/ftp',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '14',
  }
  user { 'games':
    ensure           => 'present',
    comment          => 'games',
    gid              => '100',
    home             => '/usr/games',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '12',
  }
  user { 'gopher':
    ensure           => 'present',
    comment          => 'gopher',
    gid              => '30',
    home             => '/var/gopher',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '13',
  }
  user { 'halt':
    ensure           => 'present',
    comment          => 'halt',
    gid              => '0',
    home             => '/sbin',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/halt',
    uid              => '7',
  }
  user { 'lp':
    ensure           => 'present',
    comment          => 'lp',
    gid              => '7',
    groups           => ['lp'],
    home             => '/var/spool/lpd',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '4',
  }
  user { 'mail':
    ensure           => 'present',
    comment          => 'mail',
    gid              => '12',
    groups           => ['mail'],
    home             => '/var/spool/mail',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '8',
  }
  user { 'mailnull':
    ensure           => 'present',
    gid              => '47',
    home             => '/var/spool/mqueue',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '47',
  }
  user { 'nobody':
    ensure           => 'present',
    comment          => 'Nobody',
    gid              => '99',
    home             => '/',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '99',
  }
  user { 'ntp':
    ensure           => 'present',
    gid              => '38',
    home             => '/etc/ntp',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '38',
  }
  user { 'operator':
    ensure           => 'present',
    comment          => 'operator',
    gid              => '0',
    home             => '/root',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '11',
  }
  user { 'postfix':
    ensure           => 'present',
    gid              => '89',
    groups           => ['mail'],
    home             => '/var/spool/postfix',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '89',
  }
  user { 'root':
    ensure           => 'present',
    comment          => 'root',
    gid              => '0',
    groups           => ['root', 'bin', 'daemon', 'sys', 'adm', 'disk', 'wheel'],
    home             => '/root',
    password         => '$6$IyPl3RNN$oDxLzPKeawJVjb2YlrHNvyg3rzZpxFaARlGhNx65YQft8WYTOaczi/xK0TmZYESMj7hyPVlz6GKz2NWS6mF370',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '0',
  }
  user { 'rpc':
    ensure           => 'present',
    comment          => 'Rpcbind Daemon',
    gid              => '32',
    home             => '/var/lib/rpcbind',
    password         => '!!',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '32',
  }
  user { 'rpcuser':
    ensure           => 'present',
    comment          => 'RPC Service User',
    gid              => '29',
    home             => '/var/lib/nfs',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '29',
  }
  user { 'saslauth':
    ensure           => 'present',
    comment          => '"Saslauthd user"',
    gid              => '499',
    home             => '/var/empty/saslauth',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '499',
  }
  user { 'shutdown':
    ensure           => 'present',
    comment          => 'shutdown',
    gid              => '0',
    home             => '/sbin',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/shutdown',
    uid              => '6',
  }
  user { 'smmsp':
    ensure           => 'present',
    gid              => '51',
    home             => '/var/spool/mqueue',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '51',
  }
  user { 'sshd':
    ensure           => 'present',
    comment          => 'Privilege-separated SSH',
    gid              => '74',
    home             => '/var/empty/sshd',
    password         => '!!',
    password_max_age => '-1',
    password_min_age => '-1',
    shell            => '/sbin/nologin',
    uid              => '74',
  }
  user { 'sync':
    ensure           => 'present',
    comment          => 'sync',
    gid              => '0',
    home             => '/sbin',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/sync',
    uid              => '5',
  }
  user { 'uucp':
    ensure           => 'present',
    comment          => 'uucp',
    gid              => '14',
    groups           => ['uucp'],
    home             => '/var/spool/uucp',
    password         => '*',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '10',
  }
  user { 'puppet':
    ensure           => 'present',
    gid              => '500',
    home             => '/home/puppet',
    password         => '!!',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '500',
  }
  user { 'nagios':
    ensure           => 'present',
    gid              => '501',
    home             => '/home/nagios',
    password         => '!!',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '501',
  }
  user { 'mongod':
    ensure           => 'present',
    gid              => '502',
    home             => '/srv/mongodb',
    password         => '!!',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/sbin/nologin',
    uid              => '502',
  }

  user { 'release' :
      ensure     => 'present',
      uid        => "503",
      gid        => 'nginx',
      shell      => '/bin/bash',
      home       => "/home/release",
      managehome => true,
      membership => 'inclusive',
      require    => Group['nginx'],
  }

  ssh_authorized_key { "release@totsy.com":
    ensure     => 'present',
    type       => 'ssh-rsa',
    user       => "release",
    key        => "AAAAB3NzaC1yc2EAAAADAQABAAABAQD31uVd0ETse3bBSBWUhEVEB9FLG3feunkVrK+esKivEVpjzPWStGkDjDjH+n25goZ9HVOj7BOhXUDUzTk+LuQ0BVTngR6a5qfuuPxsiNAXCIxMPeHrHhngl9lawg6NzcwB1/LkkKEZLGciPgzb1h1nU2YduppePewDHYlSWKoNtxh1aWdwFsipDbXL/3/7KtWULzicAp0u14dCV7s04G/q+Nf5bEP2F/gPSFXMWOMU8N7vTS+XQwEn7Q8LETuAX1Jkz0h5v3ZxP2+6iF8bLD8tpiD69k7647+wPXAqOOv+n5eO/aIToUZjyqSmEMrL9H5F1urG3KIsSGVy7nYlFz4V"
  }

}
