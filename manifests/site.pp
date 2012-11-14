# node: application server
node /^web-(.+)\.totsy.net$/ {
  include system, group, user
  include cache, web, app
}

# node: database server
node /^db-(.+)\.totsy.net$/ {
  include system, group, user

  include database
}

# node: unrecognized
node default {
  include system, group, user
}

# Puppet configuration
file { '/etc/puppet/auth.conf':
  source   => 'puppet:///modules/puppet/auth.conf',
  ensure   => 'present',
  owner    => 'puppet',
  group    => 'root',
  mode     => '0640',
}

