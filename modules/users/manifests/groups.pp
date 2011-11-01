class users::groups { 
  
  # Special group with access to all commands via sudo
  group { 'superadmins':
    ensure => 'present',
    gid    => '517',
  }
  
  # Other system groups
  group { 'puppet':
    ensure => 'present',
    gid    => '500',
  }
  group { 'adm':
    ensure => 'present',
    gid    => '4',
  }
  group { 'audio':
    ensure => 'present',
    gid    => '63',
  }
  group { 'bin':
    ensure => 'present',
    gid    => '1',
  }
  group { 'cdrom':
    ensure => 'present',
    gid    => '11',
  }
  group { 'daemon':
    ensure => 'present',
    gid    => '2',
  }
  group { 'dbus':
    ensure => 'present',
    gid    => '81',
  }
  group { 'dialout':
    ensure => 'present',
    gid    => '18',
  }
  group { 'dip':
    ensure => 'present',
    gid    => '40',
  }
  group { 'disk':
    ensure => 'present',
    gid    => '6',
  }
  group { 'floppy':
    ensure => 'present',
    gid    => '19',
  }
  group { 'ftp':
    ensure => 'present',
    gid    => '50',
  }
  group { 'games':
    ensure => 'present',
    gid    => '20',
  }
  group { 'gopher':
    ensure => 'present',
    gid    => '30',
  }
  group { 'kmem':
    ensure => 'present',
    gid    => '9',
  }
  group { 'lock':
    ensure => 'present',
    gid    => '54',
  }
  group { 'lp':
    ensure => 'present',
    gid    => '7',
  }
  group { 'mail':
    ensure => 'present',
    gid    => '12',
  }
  group { 'mailnull':
    ensure => 'present',
    gid    => '47',
  }
  group { 'man':
    ensure => 'present',
    gid    => '15',
  }
  group { 'mem':
    ensure => 'present',
    gid    => '8',
  }
  group { 'nobody':
    ensure => 'present',
    gid    => '99',
  }
  group { 'ntp':
    ensure => 'present',
    gid    => '38',
  }
  group { 'postdrop':
    ensure => 'present',
    gid    => '90',
  }
  group { 'postfix':
    ensure => 'present',
    gid    => '89',
  }
  group { 'root':
    ensure => 'present',
    gid    => '0',
  }
  group { 'rpc':
    ensure => 'present',
    gid    => '32',
  }
  group { 'rpcuser':
    ensure => 'present',
    gid    => '29',
  }
  group { 'saslauth':
    ensure => 'present',
    gid    => '499',
  }
  group { 'smmsp':
    ensure => 'present',
    gid    => '51',
  }
  group { 'sshd':
    ensure => 'present',
    gid    => '74',
  }
  group { 'sys':
    ensure => 'present',
    gid    => '3',
  }
  group { 'tape':
    ensure => 'present',
    gid    => '33',
  }
  group { 'tty':
    ensure => 'present',
    gid    => '5',
  }
  group { 'users':
    ensure => 'present',
    gid    => '100',
  }
  group { 'utempter':
    ensure => 'present',
    gid    => '35',
  }
  group { 'utmp':
    ensure => 'present',
    gid    => '22',
  }
  group { 'uucp':
    ensure => 'present',
    gid    => '14',
  }
  group { 'video':
    ensure => 'present',
    gid    => '39',
  }
  group { 'wheel':
    ensure => 'present',
    gid    => '10',
  }
  
}
