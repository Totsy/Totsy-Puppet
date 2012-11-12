class users::system {
  user { 'puppet':
    ensure           => 'present',
    gid              => '500',
    home             => '/home/puppet',
    password         => '!!',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '500',
    require         => Group['puppet'],
  }
  user { 'root':
    ensure           => 'present',
    comment          => 'root',
    gid              => '0',
    groups           => ['root', 'bin', 'daemon', 'sys', 'adm', 'disk', 'wheel'],
    home             => '/root',
    password         => '$6$18ehVBs.$ldedEYjX3R3NWfoJuV4l8U72kzf33GKaO3UHb9tDs57c7vTcP1F0u810qyom/ynhXehST9Yh3hDI0LrZ1xA0q0',
    password_max_age => '99999',
    password_min_age => '0',
    shell            => '/bin/bash',
    uid              => '0',
  }

  case $hostname {
    /^web.*/: {
      user { 'release' :
        ensure     => 'present',
        uid        => "503",
        gid        => '503',
        shell      => '/bin/bash',
        home       => "/home/release",
        managehome => true,
        membership => 'inclusive',
      }
      ssh_authorized_key { "release@totsy.com":
        ensure     => 'present',
        type       => 'ssh-rsa',
        user       => "release",
        key        => "AAAAB3NzaC1yc2EAAAADAQABAAABAQD31uVd0ETse3bBSBWUhEVEB9FLG3feunkVrK+esKivEVpjzPWStGkDjDjH+n25goZ9HVOj7BOhXUDUzTk+LuQ0BVTngR6a5qfuuPxsiNAXCIxMPeHrHhngl9lawg6NzcwB1/LkkKEZLGciPgzb1h1nU2YduppePewDHYlSWKoNtxh1aWdwFsipDbXL/3/7KtWULzicAp0u14dCV7s04G/q+Nf5bEP2F/gPSFXMWOMU8N7vTS+XQwEn7Q8LETuAX1Jkz0h5v3ZxP2+6iF8bLD8tpiD69k7647+wPXAqOOv+n5eO/aIToUZjyqSmEMrL9H5F1urG3KIsSGVy7nYlFz4V"
      }
    }
  }
}
