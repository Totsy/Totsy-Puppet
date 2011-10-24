define users::add ($uid,$key,$password = undef) {

  $username = $title
  $comment  = "${username}@totsy.com"

  user { "$username" :
    ensure     => 'present',
    uid        => "$uid",
    gid        => 'users',
    shell      => '/bin/bash',
    home       => "/home/$username",
    managehome => true,
    membership => 'inclusive',
    password   => "$password",
  }

  ssh_authorized_key { "$comment":
    ensure     => 'present',
    type       => 'ssh-rsa',
    user       => "$username",
    key        => "$key",
  }

}
