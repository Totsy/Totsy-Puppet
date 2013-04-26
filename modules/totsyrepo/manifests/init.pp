# module: web

$siteconfdir = '/etc/nginx/sites-enabled'
$fcgiconfdir = '/etc/nginx/fastcgi_params'

class web {
  package { 'nginx':
    ensure => '1.2.4-1.el6.ngx'
  }

  $repotools=['reposync', 'repoview']
  package {$repotools: ensure => 'latest'}

  file { '/etc/nginx/nginx.conf':
    source  => 'puppet:///modules/totsyrepo/nginx/nginx.conf',
    owner   => 'nginx',
    group   => 'nginx',
    mode    => '604',
    notify  => Service['nginx'],
    require => Package['nginx']
  }

  file { '/etc/nginx/conf.d/default.conf':
    source => 'puppet:///modules/totsyrepo/nginx/default.conf',
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

  file {'/etc/yum.repos.d':
    ensure => directory,
    recurse => true,
    purge => true,
    force => true,
    owner => "root",
    group => "root",
    mode => 0644,
    source => "puppet:///modules/totsyrepo/repos"
  } 
}

