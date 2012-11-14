# module: user

class user::person ($username) {
  include user::data

  if $username in $user::data::collection {
    $userinfo = $user::data::collection[$username]

    user { $username:
      ensure => present,
      home   => "/home/$username",
      managehome => true,
      membership => 'inclusive'
    }

    if 'groups' in $userinfo {
      User[$username] {
        groups => $userinfo['groups']
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

