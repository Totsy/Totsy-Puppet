# module: cache

class cache {
  package { 'redis':
    ensure => '2.4.10-1.el6',
  }

  file { '/etc/redis.conf':
    source  => 'puppet:///modules/cache/redis.conf',
    owner   => 'root',
    group   => 'redis',
    mode    => '775',
    notify  => Service['redis'],
    require => Package['redis']
  }

  service { 'redis':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true
  }
}

