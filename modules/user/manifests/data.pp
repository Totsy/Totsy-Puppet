# module: user

class user::data {
  $collection = {
    release => {
      name        => 'System Release User',
      uid         => 503,
      groups      => 'nginx',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD31uVd0ETse3bBSBWUhEVEB9FLG3feunkVrK+esKivEVpjzPWStGkDjDjH+n25goZ9HVOj7BOhXUDUzTk+LuQ0BVTngR6a5qfuuPxsiNAXCIxMPeHrHhngl9lawg6NzcwB1/LkkKEZLGciPgzb1h1nU2YduppePewDHYlSWKoNtxh1aWdwFsipDbXL/3/7KtWULzicAp0u14dCV7s04G/q+Nf5bEP2F/gPSFXMWOMU8N7vTS+XQwEn7Q8LETuAX1Jkz0h5v3ZxP2+6iF8bLD8tpiD69k7647+wPXAqOOv+n5eO/aIToUZjyqSmEMrL9H5F1urG3KIsSGVy7nYlFz4V',
      known_hosts => true,
      id_rsa      => true
    },

    tbhuvanendran => {
      name        => 'Tharsan Bhuvanendran',
      uid         => 1023,
      groups      => 'superadmins',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwgLGEMIvyx3lg8nyRvlAHkhb3gOG6eSLdPkx76tFKOBjZvOrYKmTQeEielOA//AGqNWJNRZG+1pzqio/KDnZFelf+SHzNhSD5xAOf/HRUdqfhHCVUcv+GMXTFJpCHOwcoQvWjkdMzUpcpvkg9ooBg1ktJFnAVr7KkLjQsHccjVmVbGopTAnnI9Rgp6xwf9ZumUVl6yMkXlelRLhlM7ipT83piipQJyRK03h+nbpGeBemRXPXbYPbgiW5oaDY1eMq+AajLH+x/3M5qIeTSy6Ri3BaWmrrF94M4ybV3uoxqhWcfkaBLOJIa7AJdjgmbn8SLK5uOBZmuebcwpSTef22J',
      password    => '$6$tRhCK8wV$Sp330AdHtlfdLPR82BIqKtvX58tQjiHuWWuDpsXOUC60S/d0Xmyp08SeDNvuJfB49qb6FdgFNJI2NCfj3bLlX/'
    },

    kdowley => {
      name        => 'Kyle Dowley',
      uid         => 1009,
      groups      => 'superadmins',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLtfOqbKCu4zf3tr5iabnNbGw/XSmuPpjXxKUak0AVnDzARyxfMhf4FVGIBuLgkAthZwhxbPhJ9PCe808ggORTAyyfeJHWHOMMJtixsZUOiupa6Vu9lx2/PXu4uEdwNQEtuJq/FmKgaLHEpLFnPnxG6zEM9oJBJSeNpdIJVBj0pg9ToUO0hD7GZCvpRfjjSDqypMViORjVkNElgil10RfO895ln37JoRL6dOf7D3fx55lEMY1ryClY6UGau2FGHMmCgvsqoHMQKqgvkUovNzM1A1Ily++peRU/tYg7O4gnm9VJLG///27ulJKL1NOpJnQONXe7XMGGSBMo16sai+W1',
      password    => '$6$jh3gjfTq$WHKEIcW36FNgDYYYPC7BZ1vaLvgFmNIQ5LM8DcqUlBRmGOsmy8D397mX7JaEpqIhDucXG2snEWlxWXlT2uwU71'
    },

    skharlamov => {
      name        => 'Sergey Kharlamov',
      uid         => 1032,
      ssh_pub_key => 'AAAAB3NzaC1kc3MAAACBALdYTITrnQwAEYTzFXlQw8IqMIZbMb6YBknKiXFLNSOoiwzvL9vyXdXeSvnhuY3xFvxeBsfp6GnAl2HkoA7ahr97stcDZ6BMv4qkHGrZk86/dOeoBkrUYFEs8yYs38NZjdIl6NqIgSk7yqOxozSNBZ0CXWaui3XhMfambMN+cjGJAAAAFQDl+fK+Cvzg0fl6CCcwfLYo/o3lOQAAAIBkm7sGutayoMx4BkndT4BCjzz8565/vsLkkegA4VGWAM6pAWNM7vIZdiuvJiNMcJimarGzqwQrliCeNPop0XWrMkzldH5FIiOwkjkXaMSPS3CgsCYy+8Yu2CvvH8kwZ7Q0geShb0EUNK/DDaJPF1KdiGYUHTOOUGiPnYBS6VvkrgAAAIAwaiUM835MfRRSnwdl7jZ3Dti8QqVBhJPvkQNb6BJIdSEPYiO9uEAV22eMGApeO/1wFx3Kd6Y+cyo/o14tZm7rXdr2vp3lZn9pYhgXmXY6IKDOxahsqDuOEMt37EYFV/VKQCTMNijQeLsJqG71jAwpbbDKIMisdVNA91xvruiYbA==',
      password    => '$6$pD3COtyw$pgOFm7A8Qkrgqo8qix0IQyhufuTLsDLsSS44qoprf7zc2m1DMx3S1bVSvTmNzE8Tld9RIhnsMn7ft9OxhY29L/'
    },

    esmith => {
      name        => 'Eric Smith',
      uid         => 1007,
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYSzGHqNDcD7lScKzheL06EyF8g5Gp4IHY9a0eCYDW38pr3kHQREFd7Tc//wMvzIHNApysgWMddlcvkY/b9Wx+d9UsGbnrK4rRjTJPAm7VhxP2yGWb4ZLyDE4DmbcUyvEe7JtHMf0VDSxz3hEgqAf0mko+T/J/cYJeWgjXKsMo7t2vtrQ1lYgzkZjuT56Cdb70cW8dmGRrABSEsZDIR2tOxzQAE+3fVCrWGDUZHa6cEHqFX5TnldP/11XPAgiTuPemA2fXCPd6raZmKynK9yJOLXKtv7lPdrrUB6sczh4oY09ydG2Tw9kQdA+RE7HKVwdSZUWz2bUybhsiwcnfCexP',
      password => '$6$RwBTQ5xu$HSPlMd.hnAwxYL/M0jdnW/4zrX4l235hNR/kaY7RehgynCdJyCVbJqEYNRKgvVw5130zCdpovyHTzSNywQp8Z/'
    },

    troyer => {
      name        => 'Tom Royer',
      groups      => 'superadmins',
      uid         => 1014,
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1LFtyj3MIcFumzvUzlt9DMMcvrjPwoM5AJTLR+H4w56vhnFsuO/QVl31aIWoH6tObsUE4oucY7jDMIXQs9VDjd2fsxX/eXmLoI0FbJhFV/hg9w2wMDfgSqUcPg09+bo6vvd/kqPTmsazTeBFKdCM9Si57xuLx8elS40q8Ey7CVhfeY9OB690a+WQy5NxmU5uFe/JQ63vfG7jDroMzAe5Ew37ba9kN82lok/x4LYKlE9yzcWEcHukvyBfHvyWQh22rWfevHaoq5gsF4AIvSavT6F9QMkLHpDzLMo220/hE35hETaslGPvvpfY6QuV6YpPcosm8OqxrM4B99yrMInH5',
      password    => '$6$iW2GqBGZ$4.qmmIMEAaX2G7O/j5bSha//4BWtfA0ZxaKXp8Ubv2RZa0zX4CB/E6KjohoUxI8CVwy9hKN0PbG0YHvluvSD90'
    },

    eubiera => {
      name        => 'Evan Ubiera',
      uid         => '1008',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwtNoTrPxgnYMbV6LjdHyJsAvpRhFisHeJ8iiQXw2WekSoFh7rlsGBG7J9KNoSWGMwUC7De5gUVXNjGr9Jn4XK5btfEWLT9DmCPdti0JuSTDkiGjH+8pnE4BKKF7B7kbejP9cJREgsUkeyi04upELDf9H1apP02Uu29hDW8nZtAV9JrdP/TjxNc4bp3RZ6TJoXK1UrMNU0X74Bd5424h/tKtLexk4J5jXXw4hl6llPgpdLILNwWaKGFq9c1/Ue+vfgFDsM7vsY5Tg6Vt/f0BUXCJ4VPOmKEVd4ZMzUIOHQTvzfaoYQ3lvK+kRepDjBHTjqbGlBHXLPH4xGbjwWDWT1Q==',
      password => '$6$eUaYvKwB$VZW1W/aHJNyWlLlPQipPe6CH4O17ss3anXlY2thSd7gwuMAUsBSYslrJ9pFJJuPFq3yxb6CcBVFcssXVpXWq5.'
    },

    lhanson => {
      name        => 'Lawren Hanson',
      uid         => 1003,
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA3k0iVUM/8CQkyosmta8pUIsHVLyIDHfKEaYGpqnNtJPTarBCxUOneHB3tf+Z+C/VZRRAE12Vz7jkwCddZ48iP07+o/xRiFgfuuI/O0cS0toAXZ2IIjqUOAaQiXm4b0+nT3PFs/Mp5JuoH4+6v0v4eoqwB2NYmRY1Em0aST3svdbsS+8Sx67uFY2YsYkALRinudtmDJ+KM27jGFtHzwNTAlRfZk2rqaC+mJ914AFmPUdvjGCbItw0wLEue+2wbWn96wsfFRSp/qq1ZshjMDulBOmJflqGxnBtS+HOhEkC0MbRsbmL45Sl6ghZ90my71nb6AgaQdqCa+GDelxi/z/JTQ==',
      password    => '$6$31UM.D1b$M/MhIQ1vls0H1Ry.WUoaXC2oFFkt.k.DC5rwa6PGDXqkSBpqGrjQjxqoLjNGhNn3xPCVjBQq4ODQdLCvFPgLC1'      
    },

    dgowrie => {
      uid         => 1022,
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNtEQi+Ck8EYulxMNADGOeurA2XBoH+DLJ6DCpmxabr1rNwMLRSFW/smOTq8QOhIQrlaPlw0k+Q5/SLGT1HyQRzABumh8Kx7kcqyzbuGcxiw+nkvYA1Fr7N7keBs2qLUuB/tUmACAnyILuXNnbR99CRglgL0N1jdlUY4cipkTv3/F+GVTKTq0yl33/lY6C7ryBFxN7si7EwR0PeWSexA+l8g8dkzf9zlZxdcuA1mvEVi+QR1Slrl6FogSY3r0fZ1FeIflwy8GznyRuTFEL88nZ5Hac8XL5oAvsZaO3bcNzoWgg4UL7sQLf8SXBFwVqGHMrtvQO8sWRiWHDc04r2csF',
      password    => '$6$yL/fWIrd$IeAbkM2ucNNyLlqkUCXxrXwbRm2c0T62Xfr5o/86TiCxZsQM2q4NIS/V/R/MyrBT47tgvkKQ4f9PE0Xf5qhwZ.'
    },

    crownchris => {
      uid         => '1025',
      groups      => 'superadmin',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA1kC4lUt21ez0UxWMBkzUhVi0tntfwRZCuO/0dD/XC7Lj8+leh3o6aJ/r7cF/zKwX9tREqDISBMggaVIF7wQz9wefr4wqIp5EnuSB8x9/dCEnDOSZxBQbLNFHa1wqO1eKTg50jVsMwjCDLkcOUUWoG9uhuylsCvCxSHu8BfWsOx/HNM80CcbiDHZw7H7OVsgrNTSsxq3KHbK1cTb4J56zEEXeNhKImCsun+zUEOEd++Zoqok/Ji0wfrbnCMK5s0xDqkNlIheYytP7itmk5pStc+hrjoadiiUNOkPsohOLJ5X743ztdDSojInQccmdLd3JS0TS2wKBYRVXUlE/QqSi4w=='
    }
  }
}

