# Generic system properties for all nodes
class system {

  file { '/etc/bashrc':
    source  => 'puppet:///modules/system/bashrc',
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/sysconfig/clock':
    source  => 'puppet:///modules/system/clock',
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/localtime':
    ensure  => 'link',
    target  => '/usr/share/zoneinfo/UTC',
  } 

 
  case $hostname { 
    master:  { $sudoers = "sudoers.master" }
    default: { $sudoers = "sudoers" }
    /^web-/: { $sudoers = "sudoers.web" }
  }

  file { '/etc/sudoers':
    source  => "puppet:///modules/system/$sudoers",
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
  }

  # Some core services
  file { '/etc/ssh/sshd_config':
    source  => 'puppet:///modules/system/sshd_config',
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
  }
  service { 'sshd':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    subscribe  => File['/etc/ssh/sshd_config'],
  }
  service { 'crond':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }

  package { 'ntp':
    ensure => latest
  }
  service { 'ntpd':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['ntp'],
  }

  package { 'rsync':
    ensure => latest
  }

  yumrepo { 'totsyrepo':
    baseurl => 'http://master.totsy.net:18724/6/x86_64/',
    name    => 'totsy',
    descr   => 'Totsy Repository',
    enabled => 1,
    gpgcheck => 0
  }
}
