# module: web

class web {
  yumrepo { 'nginx':
    baseurl  => 'http://nginx.org/packages/centos/6/x86_64/',
    gpgcheck => 0,
    enabled => 1
  }

  package { 'nginx':
    ensure => '1.2.4-1.el6.ngx'
  }

  $sitedirs = [ '/etc/nginx/sites-available', '/etc/nginx/sites-enabled' ]

  file { $sitedirs:
    ensure => directory,
    owner  => nginx,
    group  => nginx,
    mode   => '775'
  }

  file { '/etc/nginx/sites-available/totsy':
    content => template('web/nginx.totsy.conf'),
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

  service { 'nginx':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true
  }
}

