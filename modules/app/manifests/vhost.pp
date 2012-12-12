# module: app

define app::vhost ($site = $title, $options = {}, $port = 80) {

  case $hostname {
    /^web\d+-dc0$/: { # production (and staging)
      case $site {
        'api':   { $documentroot = 'api.totsy.com' }
        default: { $documentroot = 'www.totsy.com' }
      }
    }
    /^web-/: { # development
      $documentroot = regsubst($hostname, 'web-(.+)', '\1.totsy.com')
    }
  }

  if 'servername' in $options {
    $servername = $options['servername']
  } else {
    $servername = $documentroot
  }

  if $site == 'totsy' {
    if 'disablecron' in $options or $environment in [ 'dev', 'stg' ] or $hostname != 'web7-dc0'{
      $cronensure = 'absent'
    } else {
      $cronensure = 'present'
    }

    cron { 'magento':
      ensure  => $cronensure,
      command => "/usr/bin/php /var/www/$servername/current/cron.php",
      user    => 'nginx',
      hour    => '*',
      minute  => '*/5',
      require => Package['nginx']
    }

    cron { 'sailthruqueue':
      ensure  => $cronensure,
      command => "/usr/bin/php /var/www/$servername/current/dev/queue.php",
      user    => 'nginx',
      hour    => '*',
      minute  => '*/5',
      require => Package['nginx']
    }
  }

  if $site == 'api' {
    file { "/etc/totsy-api":
      ensure => directory,
      owner  => 'root',
      group  => 'root',
    }

    file { "/etc/totsy-api/logger.yaml":
      source  => "puppet:///modules/app/totsy-api-logger.yaml",
      owner   => 'root',
      group   => 'root',
      mode    => '644',
      require => File['/etc/totsy-api']
    }
  }

  file {
    "/etc/nginx/sites-available/$site":
      content => template("app/vhost/$site.conf.erb"),
      owner   => 'nginx',
      group   => 'nginx',
      mode    => '604',
      notify  => Service['nginx'],
      require => Package['nginx'];

    "/etc/nginx/sites-enabled/$site":
      ensure  => 'link',
      target  => "/etc/nginx/sites-available/$site",
      require => File["/etc/nginx/sites-available/$site"];

    "/var/www/$servername":
      ensure  => directory,
      group   => 'nginx',
      mode    => '0755',
      require => Package['nginx']
  }

  if $hostname =~ /^web\d+-dc0$/ {
    File["/var/www/$servername"] {
      owner => 'release'
    }

    cron { "release-prune-$site":
      command => "/bin/find /var/www/$servername/releases -mindepth 1 -maxdepth 1 -type d -mtime +4 ! -wholename \"$(readlink -f /var/www/$servername/current)\" -exec rm -rf {} +",
      user    => 'release',
      hour    => 0,
      minute  => 0,
      require => User['release']
    }
  }
}

