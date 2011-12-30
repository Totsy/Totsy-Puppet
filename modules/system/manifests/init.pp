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

 
  case $hostname { 
    puppet:  { $sudoers = "sudoers.puppet" }
    default: { $sudoers = "sudoers" }
    /^web.*/: { $sudoers = "sudoers.web" }
    /^nginx.*/: { $sudoers = "sudoers.web" }
  }

  # /etc/hosts - Used so that all puppet communication happens on internal network
  file { '/etc/hosts':
    source  => "puppet:///modules/system/hosts",
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }

  file { '/etc/sudoers':
    source  => "puppet:///modules/system/$sudoers",
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
  }

  case $hostname {
    puppet:  { }
    default: {
      file { '/etc/rc.d/rc.local':
        source => 'puppet:///modules/system/rc.local',
        ensure => 'present',
        owner  => 'root',
        group  => 'root',
        mode   => '0755',
      }
      file { '/etc/rc.local':
        ensure => link,
        target => '/etc/rc.d/rc.local',
      }
    }
  }

  case $fqdn {
    /^nginx.*totsystaging.com/: {
      file { '/var/www':
        ensure => directory,
        owner  => 'release',
        group  => 'nginx',
        require => [User['release'], Group['nginx']],
      }
      file { '/var/www/www.totsy.com':
        ensure => link,
        target => 'current',
        force  => true,
      }
      file { '/etc/nginx/sites-enabled/totsy':
        ensure => absent,
      }
      file { '/etc/nginx/sites-enabled/totsystaging':
        ensure => link,
        target => '../sites-available/totsystaging',
      }
    }
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
