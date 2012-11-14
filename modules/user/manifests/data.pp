# module: user

class user::data {
  $collection = {
    tbhuvanendran => {
      name        => 'Tharsan Bhuvanendran',
      groups      => 'superadmins',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwgLGEMIvyx3lg8nyRvlAHkhb3gOG6eSLdPkx76tFKOBjZvOrYKmTQeEielOA//AGqNWJNRZG+1pzqio/KDnZFelf+SHzNhSD5xAOf/HRUdqfhHCVUcv+GMXTFJpCHOwcoQvWjkdMzUpcpvkg9ooBg1ktJFnAVr7KkLjQsHccjVmVbGopTAnnI9Rgp6xwf9ZumUVl6yMkXlelRLhlM7ipT83piipQJyRK03h+nbpGeBemRXPXbYPbgiW5oaDY1eMq+AajLH+x/3M5qIeTSy6Ri3BaWmrrF94M4ybV3uoxqhWcfkaBLOJIa7AJdjgmbn8SLK5uOBZmuebcwpSTef22J',
      password    => '$6$tRhCK8wV$Sp330AdHtlfdLPR82BIqKtvX58tQjiHuWWuDpsXOUC60S/d0Xmyp08SeDNvuJfB49qb6FdgFNJI2NCfj3bLlX/'
    },
    kdowley => {
      name        => 'Kyle Dowley',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLtfOqbKCu4zf3tr5iabnNbGw/XSmuPpjXxKUak0AVnDzARyxfMhf4FVGIBuLgkAthZwhxbPhJ9PCe808ggORTAyyfeJHWHOMMJtixsZUOiupa6Vu9lx2/PXu4uEdwNQEtuJq/FmKgaLHEpLFnPnxG6zEM9oJBJSeNpdIJVBj0pg9ToUO0hD7GZCvpRfjjSDqypMViORjVkNElgil10RfO895ln37JoRL6dOf7D3fx55lEMY1ryClY6UGau2FGHMmCgvsqoHMQKqgvkUovNzM1A1Ily++peRU/tYg7O4gnm9VJLG///27ulJKL1NOpJnQONXe7XMGGSBMo16sai+W1',
      password    => '$6$jh3gjfTq$WHKEIcW36FNgDYYYPC7BZ1vaLvgFmNIQ5LM8DcqUlBRmGOsmy8D397mX7JaEpqIhDucXG2snEWlxWXlT2uwU71'
    },
    skharlamov => {
      name        => 'Sergey Kharlamov',
      ssh_pub_key => 'AAAAB3NzaC1kc3MAAACBALdYTITrnQwAEYTzFXlQw8IqMIZbMb6YBknKiXFLNSOoiwzvL9vyXdXeSvnhuY3xFvxeBsfp6GnAl2HkoA7ahr97stcDZ6BMv4qkHGrZk86/dOeoBkrUYFEs8yYs38NZjdIl6NqIgSk7yqOxozSNBZ0CXWaui3XhMfambMN+cjGJAAAAFQDl+fK+Cvzg0fl6CCcwfLYo/o3lOQAAAIBkm7sGutayoMx4BkndT4BCjzz8565/vsLkkegA4VGWAM6pAWNM7vIZdiuvJiNMcJimarGzqwQrliCeNPop0XWrMkzldH5FIiOwkjkXaMSPS3CgsCYy+8Yu2CvvH8kwZ7Q0geShb0EUNK/DDaJPF1KdiGYUHTOOUGiPnYBS6VvkrgAAAIAwaiUM835MfRRSnwdl7jZ3Dti8QqVBhJPvkQNb6BJIdSEPYiO9uEAV22eMGApeO/1wFx3Kd6Y+cyo/o14tZm7rXdr2vp3lZn9pYhgXmXY6IKDOxahsqDuOEMt37EYFV/VKQCTMNijQeLsJqG71jAwpbbDKIMisdVNA91xvruiYbA==',
      password    => '$6$pD3COtyw$pgOFm7A8Qkrgqo8qix0IQyhufuTLsDLsSS44qoprf7zc2m1DMx3S1bVSvTmNzE8Tld9RIhnsMn7ft9OxhY29L/'
    }
  }
}

