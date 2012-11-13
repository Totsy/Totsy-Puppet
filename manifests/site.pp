# node: application server
node /^web-(.+)\.totsy.net$/ {
  include system
  include cache
  include web
}

# node: database server
node /^db-(.+)\.totsy.net$/ {
  include system
  include database
}

# node: unrecognized
node 'default' {
  include system
}

# Puppet configuration
file { '/etc/puppet/auth.conf':
  source   => 'puppet:///modules/puppet/auth.conf',
  ensure   => 'present',
  owner    => 'puppet',
  group    => 'root',
  mode     => '0640',
}

