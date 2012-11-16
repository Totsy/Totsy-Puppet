node /^web\d?-(.+)\.totsy.net$/ inherits 'webapp' {}

node /^db\d?-(.+)\.totsy.net$/ inherits 'db' {}

node 'db' inherits default {
  include database
}

node 'webapp' inherits default {
  include cache, web, app
}

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

