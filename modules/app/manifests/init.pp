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
    '/etc/magento'
  ]

  file { $sitedirs:
    ensure  => directory,
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '775',
    require => Package['nginx']
  }

  package { $phpcore:
    ensure => '5.3.17-2.el6.remi',
  }

  package { 'php-pecl-apc': ensure => '3.1.13-2.el6.remi' }
 
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
    mode    => '775'
  }

  file { '/etc/magento/enterprise.xml':
    content => template('app/enterprise.xml.erb'),
    owner   => 'nobody',
    group   => 'nobody',
    mode    => '775'
  }

  file { '/etc/nginx/sites-available/totsy':
    content => template('app/site-totsy.conf.erb'),
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '604',
    notify  => Service['nginx'],
    require => [ Package['nginx'], File[$sitedirs] ]
  }

  file { '/etc/nginx/sites-enabled/totsy':
    ensure  => 'link',
    target  => '/etc/nginx/sites-available/totsy',
    require => File[$sitedirs]
  }

  service { 'php-fpm':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package[$phpcore]
  }
}

