# module: web

$siteconfdir = '/etc/nginx/sites-enabled'
$fcgiconfdir = '/etc/nginx/fastcgi_params'

class web {
  package { 'nginx':
    ensure => '1.2.4-1.el6.ngx'
  }

  file { '/etc/nginx/nginx.conf':
    source  => 'puppet:///modules/web/nginx.conf',
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '604',
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { '/etc/nginx/conf.d/default.conf':
    content => template('web/conf.d/default.conf.erb'),
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '604',
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  service { 'nginx':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true
  }
}

