define users::groupmng ($members) {
  $group = $title
  
  # Ensure group has only members specified
  exec { "gpasswd -M ${members} ${group}":
    path    => ['/bin','/usr/bin','/sbin','/usr/sbin'],
    require => [Group["$group"], User["${members}"]],
  }
}
