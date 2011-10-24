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

# Basic IPtables rules
# FIXME: May need to do it differently below for various classes
file { '/etc/sysconfig/iptables':
  source  => 'puppet:///modules/iptables/iptables',
  ensure  => 'present',
  owner   => 'root',
  group   => 'root',
  mode    => '0600',
}
service { 'iptables':
  hasrestart => true,
  subscribe  => File['/etc/sysconfig/iptables'],
}

# Users, groups and ssh keys in the users module
# /etc/puppet/modules/users/manifests/init.pp
include users
