# module: app

class app {
  $phpcore = [
    'php',
    'php-cli',
    'php-common',
    'php-devel',
    'php-fpm',
    'php-gd',
    'php-mcrypt',
    'php-mysql',
    'php-pdo',
    'php-soap',
    'php-xml',
  ]

  $sitedirs = [
    '/etc/nginx/sites-available',
    '/etc/nginx/sites-enabled',
    '/usr/share/magento',
    '/etc/magento'
  ]

  case $environment {
    /^(dev|stg)$/: {
      $redis_obj_host = '127.0.0.1'
      $redis_obj_port = '6379'
      $redis_session_host = '127.0.0.1'
      $redis_session_port = '6379'
    }
    default: {
      $redis_obj_host = '10.68.1.97'
      $redis_obj_port = '6379'
      $redis_session_host = '10.68.1.97'
      $redis_session_port = '6380'
    }
  }

  file { $sitedirs:
    ensure  => directory,
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '775',
    require => Package['nginx']
  }

  package { $phpcore:
    ensure  => '5.3.17-2.el6.remi'
  }

  package {
    'php-pecl-apc': ensure => '3.1.13-2.el6.remi';
    'php-redis':    ensure => '2.2.2-5.git6f7087f.el6';

    'nfs-utils': ensure => latest;
    'git':       ensure => latest
  }
 
  file { '/etc/php.ini':
    source  => 'puppet:///modules/app/php.ini',
    owner   => 'root',
    group   => 'root',
    mode    => '604',
    notify  => Service['php-fpm'],
    require => Package['php-fpm']
  }

  file { '/etc/php-fpm.conf':
    source  => 'puppet:///modules/app/php-fpm.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '604',
    notify  => Service['php-fpm'],
    require => Package['php-fpm']
  }

  file { '/etc/php-fpm.d/www.conf':
    source  => 'puppet:///modules/app/php-fpm.d/www.conf',
    owner   => 'root',
    group   => 'root',
    mode    => '604',
    notify  => Service['php-fpm'],
    require => Package['php-fpm']
  }

  file { '/etc/php.d/apc.ini':
    source  => 'puppet:///modules/app/php.d/apc.ini',
    owner   => 'root',
    group   => 'root',
    mode    => '604',
    notify  => Service['php-fpm'],
    require => Package['php-fpm']
  }

  file { '/etc/php.d/redis.ini':
    source  => 'puppet:///modules/app/php.d/redis.ini',
    owner   => 'root',
    group   => 'root',
    mode    => '604',
    notify  => Service['php-fpm'],
    require => Package['php-fpm']
  }

  file { '/etc/nginx/fastcgi_params':
    source  => 'puppet:///modules/app/fastcgi_params',
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '604',
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { '/etc/magento/local.xml':
    content => template('app/local.xml.erb'),
    owner   => 'nobody',
    group   => 'nobody',
    mode    => '775',
    require => File[$sitedirs]
  }

  file { '/etc/magento/local-alt.xml':
    content => template('app/local-alt.xml.erb'),
    owner   => 'nobody',
    group   => 'nobody',
    mode    => '775',
    require => File[$sitedirs]
  }

  file { '/usr/share/magento/magento-enterprise-1.11.1.tar.bz2':
    source  => 'puppet:///modules/app/magento-enterprise-1.11.1.tar.bz2',
    owner   => 'nobody',
    group   => 'nobody',
    mode    => '775',
    require => File[$sitedirs]
  }

  service { 'php-fpm':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package[$phpcore]
  }

  file { '/srv/share':
    ensure => directory
  }

  if $hostname != 'web7-dc0' {
    if $environment == 'production' {
        $mountopts = 'rw'
    } else {
        $mountopts = 'ro'
    }

    mount { '/srv/share':
      ensure   => mounted,
      device   => '10.68.1.123:/srv/share',
      fstype   => 'nfs',
      options  => $mountopts,
      remounts => true,
      atboot   => true,
      require  => [ File['/srv/share'], Package['nfs-utils'] ]
    }
  }

  # Install PHP Composer
  exec { "curl -s https://getcomposer.org/installer | php && sudo mv composer.phar /usr/local/bin/composer":
    creates => "/usr/local/bin/composer",
    path    => "/usr/bin:/bin"
  }
}

