# module: user

define user::person ($groups = undef) {
  include user::data

  $username = "$title"

  if $username in $user::data::collection {
    $userinfo = $user::data::collection[$username]

    user { $username:
      ensure => present,
      uid     => $userinfo['uid'],
      comment => $userinfo['name'],
      home   => "/home/$username",
      managehome => true,
      membership => 'inclusive'
    }

    if $groups == undef {
      if 'groups' in $userinfo {
        $usergroups = $userinfo['groups']
      } else {
        $usergroups = ''
      }
    } else {
      $usergroups = $groups
    }

    if $usergroups != '' {
      User[$username] {
        groups => $usergroups
      }
    }

    if 'password' in $userinfo {
      User[$username] {
        password => $userinfo['password']
      }
    }

    if 'known_hosts' in $userinfo {
      file { "/home/$username/.ssh/known_hosts":
        source  => "puppet:///modules/user/known_hosts/$username",
        owner   => $username,
        group   => 'nobody',
        mode    => '600',
        require => [ User[$username], Ssh_authorized_key[$username] ]
      }
    }

    if 'id_rsa' in $userinfo {
      file { "/home/$username/.ssh/id_rsa":
        source  => "puppet:///modules/user/id_rsa/$username",
        owner   => $username,
        group   => 'nobody',
        mode    => '600',
        require => User[$username]
      }
    }

    if 'ssh_pub_key' in $userinfo {
      ssh_authorized_key { $username:
        ensure  => present,
        user    => $username,
        key     => $userinfo['ssh_pub_key']
      }
    }  

    if 'ssh_key_type' in $userinfo {
      Ssh_authorized_key[$username] {
        type => $userinfo['ssh_key_type']
      }
    } else {
      Ssh_authorized_key[$username] {
        type => 'ssh-rsa'
      }
    }
  }
}

