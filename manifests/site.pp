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

# production web servers
node /^web\d+-dc0$/ inherits baseweb {
  include app, user

  if $hostname in [ 'web9-dc0' ] { # staging web servers
    include cache

    app::vhost { 'totsy': options => { 'servername' => 'staging.totsy.com' } }
    app::vhost { 'api': options => { 'servername' => 'api-staging.totsy.com' } }
    host { 'db_rw': ensure => present, ip => '10.68.1.67', name => 'db_read', host_aliases => 'db_write' }
  } else { # production web servers
    app::vhost { [ 'totsy', 'api' ]:  }

    host {
      'service.myspeedtax.com': ensure => present, ip => '204.12.84.39';
      'ics2ws.ic3.com':         ensure => present, ip => '66.185.180.169';
      'db_write':               ensure => present, ip => '10.68.1.65';
    }

    if $hostname in [ 'web0-dc0', 'web1-dc0', 'web2-dc0' ] {
      host { 'db_read': ensure => present, ip => '10.68.1.66' }
    } else {
      host { 'db_read': ensure => present, ip => '10.68.1.65' }
    }
  }

  $scout_key = $hostname ? {
    'web9-dc0' => '4903064d-2f06-4a3d-9cec-3c4536f89527',
    'web7-dc0' => 'c6fe7a7c-77a4-40a4-8027-c312f760e8ca',
    'web4-dc0' => 'd457880f-e4f1-482b-a9cd-29ac0d89ccd4',
    'web3-dc0' => '2d2abd27-219d-4825-8e93-c51aea54e703',
    'web2-dc0' => 'bf7fcb60-d138-4971-9cd4-05b2ffc44f99',
    'web1-dc0' => '3a4aaefd-6a9d-47cf-892f-ebcfb79602bb',
    'web0-dc0' => '9f29b420-0588-47e0-9647-da4b25b957a9',
    default    => '0'
  }

  if $scout_key != '0' {
    include scout
  }

  user::person { [ 'release', 'kdowley', 'skharlamov', 'tbhuvanendran', 'cdavidowski', 'troyer' ]: }
}

# Jenkins continuous integration server
node 'jenkins' inherits default {
  user::person { 'tbhuvanendran': }
}

# Tharsan Bhuvanendran
node 'db-tharsan' inherits devdb {
  user::person { 'tbhuvanendran': }
}
node 'web-tharsan' inherits devweb {
  user::person { 'tbhuvanendran': }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.196', name => 'db_read', host_aliases => 'db_write' }
}

# Eric Smith
node 'db-eric' inherits devdb {
  user::person { 'esmith': groups => 'superadmins' }
}
node 'web-eric' inherits devweb {
  user::person { 'esmith': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.186', name => 'db_read', host_aliases => 'db_write' }
}

# Tom Royer
node 'db-tom' inherits devdb {
  user::person { 'troyer': groups => 'superadmins' }
}
node 'web-tom' inherits devweb {
  user::person { 'troyer': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.185', name => 'db_read', host_aliases => 'db_write' }
}

# Evan Ubiera
node 'db-evan' inherits devdb {
  user::person { 'eubiera': groups => 'superadmins' }
}
node 'web-evan' inherits devweb {
  user::person { 'eubiera': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.187', name => 'db_read', host_aliases => 'db_write' }
}

# David Gowrie
node 'db-david' inherits devdb {
  user::person { 'dgowrie': groups => 'superadmins' }
}
node 'web-david' inherits devweb {
  user::person { 'dgowrie': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.191', name => 'db_read', host_aliases => 'db_write' }
}

# Lawrenberg Hanson
node 'db-lawren' inherits devdb {
  user::person { 'lhanson': groups => 'superadmins' }
}
node 'web-lawren' inherits devweb {
  user::person { 'lhanson': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.192', name => 'db_read', host_aliases => 'db_write' }
}

# Chris Davidowski
node 'db-chris' inherits devdb {
  user::person { 'cdavidowski': groups => 'superadmins' }
}
node 'web-chris' inherits devweb {
  user::person { 'cdavidowski': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.197', name => 'db_read', host_aliases => 'db_write' }
}

# Jason Grim
node 'db-jason' inherits devdb {
  user::person { 'jgrim': groups => 'superadmins' }
}
node 'web-jason' inherits devweb {
  user::person { 'jgrim': groups => 'superadmins' }
  app::vhost { 'totsy': }
  host { 'db_rw': ensure => present, ip => '10.68.18.198', name => 'db_read', host_aliases => 'db_write' }
}

