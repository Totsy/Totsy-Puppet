# Manages scoutapp.com agent
class scout {
  package { 'rubygems':   ensure => latest }
  package { 'ruby-devel': ensure => latest }

  package { ['scout', 'SystemTimer', 'elif', 'request-log-analyzer']:
    ensure   => 'installed',
    provider => 'gem',
    require  => [ Package['rubygems'], Package['ruby-devel'] ]
  }

  # set up the cronjob that runs the agent every minute
  if $scout_key {
    cron { 'root':
      command => "scout ${scout_key}",
      user	=> 'root';
    }
  }
}
