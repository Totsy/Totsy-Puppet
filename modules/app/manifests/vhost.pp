# module: app

define app::vhost ($site = $title, $port = 80) {
  file { "/etc/nginx/sites-available/$site":
    content => template('app/site-totsy.conf.erb'),
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '604',
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { "/etc/nginx/sites-enabled/$site":
    ensure  => 'link',
    target  => "/etc/nginx/sites-available/$site",
    require => File["/etc/nginx/sites-available/$site"]
  }
}

