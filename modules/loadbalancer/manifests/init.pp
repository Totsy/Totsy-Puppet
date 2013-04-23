# Manages load balancing
class loadbalancer {
  package { 'haproxy':     ensure => 'latest' }
  $named = ["bind", "bind-utils", "bind-libs"]
  package { $named:        ensure => 'latest'}
  $release = defined(User['release'])
  package { "stunnel":     ensure => "latest" }
  package { "logrotate":   ensure => "latest" }
  
  file { "/etc/ssl/certs":
   ensure => directory,
   recurse => true,
   force => true,
   purge => false,
   owner => "root",
   group => "root",
   mode => 0600,
   source => "puppet:///modules/loadbalancer/totsy_certs"
  }

 file { '/etc/stunnel/stunnel.conf':
    content => template("loadbalancer/stunnel/stunnel.conf.erb"),
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  exec { "run_stunnel":
    command => "/usr/bin/stunnel /etc/stunnel/stunnel.conf",
    require => [Package['stunnel'], File['/etc/stunnel/stunnel.conf']]
  }

  cron { "stunnel_keepalive":
    command  => '/usr/bin/stunnel /etc/stunnel/stunnel.conf',
    hour     => '*',
    minute   => '1',
    monthday => '*',
    month    => '*',
    require  => [Package['stunnel'], File['/etc/stunnel/stunnel.conf']]
  }

  service { 'haproxy':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require => Package['haproxy']
  }

  service { 'named':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require => Package[$named],
  }

  file { '/etc/haproxy/all-active':
    content => template("loadbalancer/haproxy/all-active.erb"),
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

  file { '/etc/haproxy/haproxy.cfg':
    ensure => 'link',
    target => '/etc/haproxy/all-active',
    notify => Service["haproxy"],
    require => Package["haproxy"]
  }

  file { "/var/named":
    ensure => directory,
    recurse => true,
    purge => true,
    force => true,
    owner => "root",
    group => "named",
    mode => 0644,
    source => "puppet:///modules/loadbalancer/named",
    notify => Service["named"],
    require => Package["bind"]
  }
}
