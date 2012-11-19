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

# Tharsan Bhuvanendran
node 'db-tharsan' inherits dbdev {
  user::person { 'tbhuvanendran': }
}
node 'web-tharsan' inherits webdev {
  user::person { 'tbhuvanendran': }
  app:::vhost { 'totsy': }
}

