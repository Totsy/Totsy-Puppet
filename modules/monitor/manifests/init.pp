# Manages monitoring
class monitor {
  package { "nagios":     ensure => "latest" }
  package { "cacti":   ensure => "latest" }
  
  file { "/var/www/nagios.totsy.com":
   ensure => directory,
   recurse => true,
   force => true,
   purge => false,
   owner => "nginx",
   group => "nginx",
   mode => 0755,
   source => "puppet:///modules/monitor/www/nagios.totsy.com"
  }

  file { '/var/www/cacti.totsy.com':
    ensure => 'link',
    target => '/usr/share/cacti',
    require => Package["cacti"]
  }

  file { "/etc/nagios":
   ensure => directory,
   recurse => true,
   force => true,
   purge => false,
   owner => "nginx",
   group => "nagios",
   mode => 0755,
   source => "puppet:///modules/monitor/nagios"
  }

 file { '/etc/cacti/db.php':
    content => 'puppet:///modules/monitor/cacti/db.php',
    ensure => 'present',
    owner  => 'cacti',
    group  => 'nginx',
    mode   => '0644',
  }

  cron { "cacti_poller":
    command  => '/usr/bin/php /usr/share/cacti/poller.php --force --debug >> /var/log/cacti/poller.log 2>&1',
    hour     => '*',
    minute   => '5',
    monthday => '*',
    month    => '*',
    require  => [Package['cacti']]
  }
}
