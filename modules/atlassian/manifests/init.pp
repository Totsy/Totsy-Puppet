# module: atlassian

class atlassian {
  $db=['Percona-Server-server-55', 'Percona-Server-client-55', 'percona-xtrabackup']
  $tools=['nfs-utils', 'wget', 'curl']
  package { $tools: ensure => latest }
  package { $db: ensure => latest }

  service { 'mysql':
    ensure => running,
    require => [File['/etc/my.cnf'], Package[$db]]
  }
  
file { '/etc/my.cnf':
    content  => template("atlassian/my.cnf.erb"),
    owner   => 'mysql',
    group   => 'mysql',
    mode    => '644',
    notify  => Service['mysql'],
    require => Package[$db]
  }

  file { '/usr/local/bin/atlassiansync.sh':
    source  => 'puppet:///modules/atlassian/atlassiansync.sh',
    owner   => 'root',
    group   => 'root',
    mode    => '755'
  }

  file { '/srv/atlassian':
    ensure => "directory"
  }

  mount { "/srv/atlassian":
    device => "10.68.19.10:/tank/atlassian",
    fstype => "nfs4",
    ensure => "mounted",
    options => "rw",
    atboot => true,
    require => [ File['/srv/atlassian'], Package['nfs-utils'] ]
  }

  cron { "atlassian_sync":
    command  => '/usr/local/bin/atlassian_bak.sh > /dev/null 2>&1',
    hour     => '3',
    minute   => '0',
    monthday => '*',
    month    => '*',
    require  => File['/usr/local/bin/atlassiansync.sh']
  }
}

