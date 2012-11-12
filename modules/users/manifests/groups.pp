class users::groups { 
  
  # Special group with access to all commands via sudo
  group { 'superadmins':
    ensure => 'present',
    gid    => '517',
  }
  group { 'puppet':
    ensure => 'present',
    gid    => '500',
  } 
  group { 'totsydevs':
    ensure => 'present',
    gid    => '503',
  }
  group { 'users':
    ensure => 'present',
    gid    => '100',
  }
  group { 'root':
    ensure => 'present',
    gid    => '0',
  }
}
