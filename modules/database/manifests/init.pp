# module: database

class database ($environment = 'dev') {
  package { 'Percona-Server-server-55': ensure  => latest }
  package { 'Percona-Server-client-55': ensure  => latest }

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

