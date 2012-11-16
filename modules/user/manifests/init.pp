# module: user

class user {
  # install base users always
  user::person { 'tbhuvanendran': }

  # install host-specific users
  case $hostname {
    'db-test-puppet': { user::person { 'kdowley': groups => 'superadmins' } }
  }
}

