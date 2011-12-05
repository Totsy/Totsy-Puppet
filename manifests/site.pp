# Generic system settings for all nodes
include system

# Puppet configuration
file { '/etc/puppet/auth.conf':
  source   => 'puppet:///modules/puppet/auth.conf',
  ensure   => 'present',
  owner    => 'puppet',
  group    => 'root',
  mode     => '0640',
}

include iptables

# Users, groups and ssh keys in the users module
# /etc/puppet/modules/users/manifests/init.pp
include users
