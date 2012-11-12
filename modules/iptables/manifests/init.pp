# Firewall rules for various servers
class iptables {

  # Select which rules list to use
  case $fqdn {
    /^nginx.*/:               { $filename = "iptables.web" }
    /^db.*totsy.com/:         { $filename = "iptables.db" }
    /^db.*totsystaging.com/:  { $filename = "iptables.db" }
    /^dev.*/:                 { $filename = "iptables.web" }
    /^web.*/:                 { $filename = "iptables.web" }
    /^puppet.*/:              { $filename = "iptables.puppet" }
    default:                  { $filename = "iptables.default" }
  }

  file { '/etc/sysconfig/iptables':
    source  => "puppet:///modules/iptables/$filename",
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
  }

  service { 'iptables':
    hasrestart => true,
    subscribe  => File['/etc/sysconfig/iptables'],
  }

}
