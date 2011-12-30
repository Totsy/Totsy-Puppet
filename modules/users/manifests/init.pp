# Users class 
class users {

  # Make sure ruby-shadow is present
  # Used to ensure a system password for supreme sudo users
  #package { 'ruby-shadow':
  #  ensure => present,
  #  before => Group['root'],
  #}

  # Ensure we are using sha512 for passwords
  exec { 'authconfig --passalgo=sha512 --update':
    path    => ['/bin','/usr/bin','/sbin','/usr/sbin'],
    onlyif  => 'test "`authconfig --test | grep hashing | awk \'{print $NF}\'`" != "sha512"',
    before  => Group['root'],
  }

  include users::groups
  include users::system
  include users::human

  # Make sure superadmins only has what was declared in puppet
  #users::groupmng { 'superadmins':
  #  members => $users::human::superadmins
  #}

  # Remove any undeclared users
  resources { 'user':
    purge   => true,
  }
  # Remove any undeclared groups
  #resources { 'group':
  #  purge   => true,
  #}

  case $hostname {
    /^nginx.*/,/^web.*/: {

      file { '/home/release/.ssh/id_rsa':
        source  => 'puppet:///modules/users/release@totsy.com',
        ensure  => 'present',
        owner   => 'release',
        group   => 'root',
        mode    => '0600',
        require => User['release'],
      }

      file { '/root/.ssh/id_rsa':
        source  => 'puppet:///modules/users/release@totsy.com',
        ensure  => 'present',
        owner   => 'root',
        group   => 'root',
        mode    => '0600',
        require => User['root'],
      }

      file { '/home/release/.ssh/known_hosts':
        source  => 'puppet:///modules/users/known_hosts',
        ensure  => 'present',
        owner   => 'release',
        group   => 'root',
        mode    => '0600',
        require => User['release'],
      }

    }
  }

}
