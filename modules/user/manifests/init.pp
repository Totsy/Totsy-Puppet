# module: user

class user {
  case $hostname {
    'web-test-puppet': {
      class { 'user::person': username => 'tbhuvanendran' }
    }
  }
}

