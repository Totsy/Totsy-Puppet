# module: app

define app::vhost ($site = $title, $port = 80) {

  $documentroot = regsubst($hostname, 'web-(.+)', '\1.totsy.com')
  $servername   = regsubst($hostname, 'web-(.+)', '\1.totsy.com')

  if $site != 'totsy' {
    $servername = "#{$site}-#{$servername}"
  } else {
    cron { 'magento':
      command => "/usr/bin/php /var/www/$documentroot/cron.php",
      user    => 'nginx',
      hour    => '*',
      minute  => '*/5',
      require => Package['nginx']
    }
  }

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

