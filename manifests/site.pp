# default node applies to all servers managed by puppet
node default {
  include system, group, user
}

# developer web app
node webdev inherits default {
  include cache, web, app
}

# developer database
node dbdev inherits default {
  include database
}

# Mystery (test) developer
node 'db-mysterydev' inherits dbdev {
  user::person { 'mysterydev': }
}
node 'web-mysterydev' inherits webdev {
  user::person { 'mysterydev': }
  app::vhost { ['totsy', 'mamasource']: }
}

# Puppet configuration
file { '/etc/puppet/auth.conf':
  source   => 'puppet:///modules/puppet/auth.conf',
  ensure   => 'present',
  owner    => 'puppet',
  group    => 'root',
  mode     => '0640',
}

