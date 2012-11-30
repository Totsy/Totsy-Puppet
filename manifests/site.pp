###########################################################
# Base node configuration
###########################################################

# default node applies to all servers managed by puppet
node default {
  include system, group, user
}

# base web node applies to all web servers
node baseweb inherits default {
  include web, app
  class { 'iptables': allowports => [ 80, 443 ] }
}

# base db node applies to all database servers
node basedb inherits default {
  include database
  class { 'iptables': allowports => 3306 }
}

# development web node for developers (and staging) includes web cache
node devweb inherits baseweb {
  include cache
}

# development database node for developers (and staging)
node devdb inherits basedb {
}

###########################################################
# Specific node configuration
###########################################################

# Tharsan Bhuvanendran
node 'db-tharsan' inherits devdb {
  user::person { 'tbhuvanendran': }
}
node 'web-tharsan' inherits devweb {
  user::person { 'tbhuvanendran': }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.155', name => 'db_read', host_aliases => 'db_write' }
}

# Eric Smith
node 'db-eric' inherits devdb {
  user::person { 'esmith': groups => 'superadmins' }
}
node 'web-eric' inherits devweb {
  user::person { 'esmith': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.154', name => 'db_read', host_aliases => 'db_write' }
}

# Tom Royer
node 'db-tom' inherits devdb {
  user::person { 'troyer': groups => 'superadmins' }
}
node 'web-tom' inherits devweb {
  user::person { 'troyer': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.158', name => 'db_read', host_aliases => 'db_write' }
}

# Evan Ubiera
node 'db-evan' inherits devdb {
  user::person { 'eubiera': groups => 'superadmins' }
}
node 'web-evan' inherits devweb {
  user::person { 'eubiera': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.175', name => 'db_read', host_aliases => 'db_write' }
}

# David Gowrie
node 'db-david' inherits devdb {
  user::person { 'dgowrie': groups => 'superadmins' }
}
node 'web-david' inherits devweb {
  user::person { 'dgowrie': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.156', name => 'db_read', host_aliases => 'db_write' }
}

# Lawrenberg Hanson
node 'db-lawren' inherits devdb {
  user::person { 'lhanson': groups => 'superadmins' }
}
node 'web-lawren' inherits devweb {
  user::person { 'lhanson': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.159', name => 'db_read', host_aliases => 'db_write' }
}

