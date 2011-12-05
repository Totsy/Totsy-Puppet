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
    target  => '/usr/share/zoneinfo/America/New_York',
  } 
 
  # /etc/hosts - Used so that all puppet communication happens on internal network
  file { '/etc/hosts':
    source  => 'puppet:///modules/system/hosts',
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  case $hostname { 
    puppet:  { $sudoers = "sudoers.puppet" }
    default: { $sudoers = "sudoers" }
  }

  # Sudo configuration
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
    ensure     => 'present',
  }
  service { 'ntpd':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['ntp'],
  }

  package { 'sendmail': ensure => 'absent' }
  package { 'postfix' : ensure => 'present'}

  service { 'postfix':
    ensure     => 'running',
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
    require    => Package['postfix'],
  }

  # Stop some extra services
  service { 'rhnsd':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
  service { 'haldaemon':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
  service { 'messagebus':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
  service { 'rpcgssd':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
  service { 'rpcsvcgssd':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
  service { 'nfslock':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
  service { 'netfs':
    ensure     => 'stopped',
    enable     => false,
    hasstatus  => true,
    hasrestart => true,
  }
}
