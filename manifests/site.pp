# default node applies to all servers managed by puppet
node default {
  include system, group, user
}

# developer web app
node webdev inherits default {
  include cache, web, app
  class { 'iptables': allowports => [ 80, 443 ] }
}

# developer database
node dbdev inherits default {
  include database
  class { 'iptables': allowports => 3306 }
}

# Tharsan Bhuvanendran
node 'db-tharsan' inherits dbdev {
  user::person { 'tbhuvanendran': }
}
node 'web-tharsan' inherits webdev {
  user::person { 'tbhuvanendran': }
  app::vhost { 'totsy': }
}

