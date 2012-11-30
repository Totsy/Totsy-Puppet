# module: database

class database {
  $environment = $hostname ? {
    /db\d?-dc0/ => 'prd',
    default     => 'dev',
  }

  package { 'percona-release':
    ensure => installed,
    provider => rpm,
    source => 'http://www.percona.com/downloads/percona-release/percona-release-0.0-1.x86_64.rpm'
  }

  package { 'Percona-Server-server-55':
    ensure => '5.5.28-rel29.1.335.rhel6',
    require => [ Package['percona-release'], Package['mysql-libs'] ]
  }

  package { 'Percona-Server-client-55':
    ensure => '5.5.28-rel29.1.335.rhel6',
    require => [ Package['percona-release'], Package['mysql-libs'] ]
  }

  package { 'mysql-libs': ensure => absent    }

  service { 'mysql':
    ensure => running,
    require => Package['Percona-Server-server-55']
  }

  file { '/etc/my.cnf':
    content => template("database/${environment}.my.cnf.erb"),
    owner   => 'mysql',
    group   => 'mysql',
    mode    => '644',
    notify  => Service['mysql'],
    require => Package['Percona-Server-server-55']
  }

  file { '/usr/local/bin/totsydbsync':
    content => template('database/bin/totsydbsync'),
    owner   => 'root',
    group   => 'root',
    mode    => '755'
  }
}

