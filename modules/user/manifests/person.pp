# module: user

define user::person ($groups = undef) {
  include user::data

  $username = "$title"

  if $username in $user::data::collection {
    $userinfo = $user::data::collection[$username]

    user { $username:
      ensure => present,
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

    if 'ssh_pub_key' in $userinfo {
      ssh_authorized_key { $username:
        ensure => present,
        user   => $username,
        type   => 'ssh-rsa',
        key    => $userinfo['ssh_pub_key']
      }
    }  
  }
}

