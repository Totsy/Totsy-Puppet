# module: user

class user::data {
  $collection = {
    release => {
      name        => 'System Release User',
      uid         => 503,
      groups      => 'nginx',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEArWu1YeAzpMLDU51WOTe7zk3rkQjQBjot5qSgbxuWX2RBQ/qxXtdohMylXUXGxTNIjlWm+xtAQ0lm2M2BaIB0hUVPewECpi2afiTzpHC2L3qSXiW8f086gHojCt962qtdVfx3uuNYeqt+qxF2FRK0Zdxe77ZY4mhBOuoTb+XYMVODFy3cffQfrKo76ujJ+vwZcX1fHddSWG/yqJ84iR/wkQv7mlwtwocFmsK6lNv004KQnfQUx4J9iAIq0r5FnG1QpvQfxIKw6qEDmOeTxZCznyB2qaxn0g/sIuGo5VjzeIg1fQqZv1lBKUJ96bVMEaMoXkDjP8Y3Z1DRDaLQAIUrFQ==',
#      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD31uVd0ETse3bBSBWUhEVEB9FLG3feunkVrK+esKivEVpjzPWStGkDjDjH+n25goZ9HVOj7BOhXUDUzTk+LuQ0BVTngR6a5qfuuPxsiNAXCIxMPeHrHhngl9lawg6NzcwB1/LkkKEZLGciPgzb1h1nU2YduppePewDHYlSWKoNtxh1aWdwFsipDbXL/3/7KtWULzicAp0u14dCV7s04G/q+Nf5bEP2F/gPSFXMWOMU8N7vTS+XQwEn7Q8LETuAX1Jkz0h5v3ZxP2+6iF8bLD8tpiD69k7647+wPXAqOOv+n5eO/aIToUZjyqSmEMrL9H5F1urG3KIsSGVy7nYlFz4V',
      id_rsa      => true,
      known_hosts => true
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
      groups      => 'superadmins',
      ssh_pub_key => 'AAAAB3NzaC1kc3MAAACBALdYTITrnQwAEYTzFXlQw8IqMIZbMb6YBknKiXFLNSOoiwzvL9vyXdXeSvnhuY3xFvxeBsfp6GnAl2HkoA7ahr97stcDZ6BMv4qkHGrZk86/dOeoBkrUYFEs8yYs38NZjdIl6NqIgSk7yqOxozSNBZ0CXWaui3XhMfambMN+cjGJAAAAFQDl+fK+Cvzg0fl6CCcwfLYo/o3lOQAAAIBkm7sGutayoMx4BkndT4BCjzz8565/vsLkkegA4VGWAM6pAWNM7vIZdiuvJiNMcJimarGzqwQrliCeNPop0XWrMkzldH5FIiOwkjkXaMSPS3CgsCYy+8Yu2CvvH8kwZ7Q0geShb0EUNK/DDaJPF1KdiGYUHTOOUGiPnYBS6VvkrgAAAIAwaiUM835MfRRSnwdl7jZ3Dti8QqVBhJPvkQNb6BJIdSEPYiO9uEAV22eMGApeO/1wFx3Kd6Y+cyo/o14tZm7rXdr2vp3lZn9pYhgXmXY6IKDOxahsqDuOEMt37EYFV/VKQCTMNijQeLsJqG71jAwpbbDKIMisdVNA91xvruiYbA==',
      password    => '$6$pD3COtyw$pgOFm7A8Qkrgqo8qix0IQyhufuTLsDLsSS44qoprf7zc2m1DMx3S1bVSvTmNzE8Tld9RIhnsMn7ft9OxhY29L/'
    },

    esmith => {
      name        => 'Eric Smith',
      uid         => 1007,
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCw4Yo/FeVvE9Vy8B+84ovUeR+KE+GY9xe8Xa+KWJsU54ZdtD0aVBWchVZ6ECUQ2MtTM1n5TOmVXlSAh7HbLAiPL2XJmzOOWvcywpVGqOXZXr5pZub2hPFaTcKDqL5ZfajlM53UCJeHAzsXftTWCsXdrz4wgVta06my3x45r9Q/WKNn0z00mr0bEgXUIw/MxGidFqHLT239TU61JBzbuMjcfY4rYyvRnT4wX6phsXpypl9Vr+e1vboTYHMWyrmmunkh59IQOPk3RE+emiawmzCaAkMNNnOSGsr5O2itL5582ZwfvSicCmgPAEEBJzFsza0RjJ4oiH9LbyRylnbkaC1p',
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

    cdavidowski => {
      uid         => '1025',
      groups      => 'superadmins',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA1kC4lUt21ez0UxWMBkzUhVi0tntfwRZCuO/0dD/XC7Lj8+leh3o6aJ/r7cF/zKwX9tREqDISBMggaVIF7wQz9wefr4wqIp5EnuSB8x9/dCEnDOSZxBQbLNFHa1wqO1eKTg50jVsMwjCDLkcOUUWoG9uhuylsCvCxSHu8BfWsOx/HNM80CcbiDHZw7H7OVsgrNTSsxq3KHbK1cTb4J56zEEXeNhKImCsun+zUEOEd++Zoqok/Ji0wfrbnCMK5s0xDqkNlIheYytP7itmk5pStc+hrjoadiiUNOkPsohOLJ5X743ztdDSojInQccmdLd3JS0TS2wKBYRVXUlE/QqSi4w==',
      password    => '$6$TGOnYOMW$9CAWqMnlA7AB3R10eMtHD7cY8S7kcZf6Z.3W3XLf94gpvuiw/8sfYx.1muTjCpJR5n1bV4pgjHYlTy14Q/zMG/'
    },

    skosh => {
      uid         => '1005',
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAuk1R+G/2CvEHGlyqXhpHFRbXScIO6aSJj55dUdHfD/z7lXOu7srzQAnh3NkdYNz0tqAdRHFik/SIaGizsYh1B+djtfTSosR99V8RsgkO47gSWsuIPoWjplcXrft1ebVDwfUkdD5/ZS6g5kZBgv83fGe47xlC8/CMQ1F0B68WiiVtu90wTUF2bzjpXTMqTt7YjxiZT2hgpui3G8ReMx8SUq3wLmr4AtsWGAQrUebC/qk0P7wPLst4GKaI71Nvvi11UUkqxiyqk8v7qIDxyCBgM334r/Ej4D95eC5ITFjoubbHH8ihxarUXqryQ6VMWHavx3y8fvZZIx6ElA44BIcLqQ==',
      password => '$6$4G1QrzHe$4o5C.jWke9Tg2L.dN86MWtNx3NLdZb095XSlPvRjyHwdA1Ti7OIx2IPbWMv9notLdENoUmcf75LbXtOGXSgZY1'
    },

    jbogaty => {
      uid         => 1028,
      ssh_pub_key => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDDSKQ7QJcvC1AVR3UJUTfQLigo4+hEaq1TpwQGrE2FtZjZbfzexgzaCOFs0i475BJ2PywLT/d1Fi/G/fFV5sxu64TZhRGzWHWcdzaWNcSjKV3Cz88DuiUKWY0uTdu1jctOrZvuJsz+QryB3+UJCeJHf/Pz/58gNyRwbX5rXEobRmG0BiRJHmbqdBcG90pbttWE6ixUyvLBcSh1yW96by5EZ0MnhF+D41gLC3WlVU+KjTkriSpQP86dpWUD5M76jEOHhSrbf7d/wzxcyj4cDOjwKFUQRlYOl3H4/YwMqyK8m6lbwx/YDpKFi5KaFYLTZru7LlZE/+S2wNqCD4204KS0rUBhb76YEzlX3wodTIEdAb4JUG9+AfWUUT4FIPOd822fVUSIBoV1DyhCQlsVjLzhKQ+chls+l6S05kIynFZQGfePMI9P2bq5oNpZq6zFz9FmAMCYyOW8yBPmuNt1FZZlJia9XaeX+VinOBOgLYu9OzQJVxmjtw73Vyf5pJuhGKfCoHqxshGPSY7i6mpkINzIBp+eGOawOMaSlTANv8DOdi0t+SkwM5QGcm03KfPPdE1onsfeHNZ2HIZIEteoca1/tu3odoeaMBJ3qtqkOQZ+sU9QWINqNR0J5/j571UvOlJDo2lLiaM5pXQDUwAxS5wCrLlVL27QLxPUqLMO6T8pLw==',
      password    => '$6$UGlo.9zA$A5rdx/iWhKN54jpFe76lVxG2UlNQON0Y2lVCPwbfsCg18xR4lTq0z.6Etn4ajCFT2CB4ViBeyzmTglSktDRch/'
    },

    mmsbackup => {
      uid          => 1029,
      ssh_key_type => 'ssh-dss',
      ssh_pub_key  => 'AAAAB3NzaC1kc3MAAACBAPua1tDNZfCU1YQ/ftzSqfaMMZ1qazFz9uitVrcB+2tfh9vIKR6mE33D7y51lXz3ABLqB8elGoDUynb7cNDeNseUJpSvzuLNAMOyKFrfkoQ1G+wl91/f67+cHf+mYMxRZs3KWMB2S81YGbn7UhbL969ajmpKRHhlkJrmwAXSri5BAAAAFQDIhMqhp5I8RFSsJWyiq+zSvqBMVQAAAIEAq/r/7g6WCai2eJSbyHW+d4DorPHKTZqmZqj1XY7mYEgUKyvu9lMSWGnjfztzReJobHFy1cnEzKx4hv4Rf441Davi4fGYJr+QFB9b3+ULJa35BEa5ZcZflauV7GRPz0TW0pa05l/uG5bVUID0vcspen9LV9+O8/N1puD+cAKan9MAAACALoe6z+HriIXHw1A0rH9OpwdiXGfd2D42vU9hW/zr0wIF1Qmudhn9j6LrJ5L+6riWbIMs7LN/yw93pBZHvOL7AfMgGmv6Hy3RM1JsMFOZcPOtxRy0yvhvtutqWBxQ8Tc+3xa78ayg3IgPv2CPqmoA0Wwj7xK/9j8mPxPqP6om2WM='
    },

    jkaplan => {
      uid          => 1030,
      ssh_pub_key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAnS5Ad8FzJpjKC3t0CucnVcCjyT7u2P6uMwgiBjF+85ta/GPDQdZkqa+8jJR/P0thF7NIZiyLkE3eRsOf/+yswsyg/lHF3suQeb9khFcw+z+P1G2hzdBswz4OHMdeHhbJ/BOtIkL347eFxHgzaM1ZzduIasImKD7SDiDRY0Qa3P9+3TcBHgDxUwCYM1Ffx+f80RNbVBxR7fvPQFCFVa4wbMWZLN+P0vqkIhwq1DH1Hzlgo9wDQ+BnT/yBrQ6DmS72nWaTSE//xxb+L4SHKqc4FLVKpFhx292NL90soq3lYR3ijPU80eoRO3iyAgbPo/PO/5Z/netBVcQ/ybSbi3/s9Q==',
    },

    jgordon => {
      uid          => 1031,
      ssh_pub_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQClY8TgdL9fRg4H1KYVUCIqOY+zI1AxklEP8YBHpJihe6R/lDOxS5ZUWIW1SIuBQDRzME4TCxS/1WlHjF1m63efatmudP97EGKiFUHDiWeKFWVyyXU6ZPKy7vAok98mnbhkK6bSHF5IGFqn87kw/9CeaYVJYygW/rZOnX85J+tA1XtXuO60fK+0jyG9F2pie33P0pfUMcQwK9+isGgHCWdYG2jJED8XFQJVQ8G7L7Yf9izhZxGKwh/rY38YyGhMq7gLFbp/M14zFIYaDXh2vCWAJKGX6iEXM80UqxW8m/z3mnrg8N6AglwkwHoqYMxjK4UZFh6OwAFZWfusOsqJLV+z',
    },

    atonns => {
      uid          => 1033,
      ssh_key_type => 'ssh-dss',
      ssh_pub_key  => 'AAAAB3NzaC1kc3MAAACBALeCfGg8DWGrYX5vFSMl7/a+UDmrWPWV3qtlJBaS/CFH9zCaxq+4ncseNfUWto0Z3iCf7x6pO8+MSfCrqvnixqWyX5IM4lebS2KGqzr0neQtn0Dqvc1QNq43EIt+JvD+6lUAzYTXbuPnUIvuQyIbGQwmYj2OSnJkgui3c1KnYg99AAAAFQCdWygZtPlgOkDVvaF5D68euaT9IwAAAIB7zuz8oSj5d/Z49Ox4qvlmaqMQNUc61u0tl3fPRtv3m8Wh3BiWiWalOjyx70znrFDCMO6KyWht5Yzf4xlAg0y2yzYyQOB4tCU2TH+hZvPpdBHZTQBJpAbSZLcac/9KCcHU2kHEMiWaYK+cbpJY+Jkjf1n4i7wi9JQKczNJmjywPgAAAIANE3JtopJ9dwHY5p4lVWYWHjugKCXgmBtXPlNRgNFOLTwGrUBmpcBwl0A4C2B7ltcjSZkH1JmLJrPDce4gWOu1P3kN9OK/zcLWWWCTblo2fhHewLYBA9UAP5OhjceEWd5lpytY0cDJbr6v59F4FN6BGlJGEPqz3cRlGQ8P9kJlOA==',
    },

    lherold => {
      uid          => 1034,
      ssh_pub_key  => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA5eczuXeovLWs/GBNcAzqgkpbHUHt1JGF6V78NHbFt4DC/AUyHeJr6uHZrzAQd9HUkdVvb268eWXJL/3Jw+1yiiGe69MvFi0Rg+IaLl1kQAGhQkNGbh8yF4WyKMAPaiCLg3MGynOT6P7AsyksehH23SQehK3hp8yHSn8FBwkedfh2h/V/jbSuThws7N2k3T9RQIIgXnBkJUaE0irWiKXahaZF42UrB9VY1SN7cIoLvwmmyuxGCQIamn2aukT6/2092buxxE0x81ZLUlPZXktG1S6y4gfn6HTsW4PLeK4YoDt0NfXn7ywFi3OIBPA3CfUWbfRsZcbLz9lymj2Ue85Vuw==',
    },

    zselby => {
      uid          => 1035,
      ssh_pub_key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDHRrgH62blvoa00lGAoNVIZgYTl46hBAHUbFyUnlI+cvM96UtiNkT1QSrzB6Bs0joWHDZXPTKmS7lOUPEiKrb+2DrnJmxBWfHxrCBxLYZtBC4XvJep+jyP8Lz2IRYs0sG+j1S9nPseFN9oqcGzQatkJGOXKmCvcCMVW6AtyIdnG3d3ebDQUeQULRTCipMwZPPlNTqo4sT6Bm/SW+8l2ZWO7mTt30dyWgGln/pCCAOYejU/YKhXury2kRWnWoNlphkbSiBVogwlTb9DUatFwpKOd8NFzWexwJJ8vkUzgS9sRIydeDNZ6du/KnySbrry0ZcGxuUAgbzBZQ2Gi4CAVTHz',
      password     => '$6$QMcbTdeL$BkXSRLL6ClqSpH0Mv1dg78XfwTOcCDx.M8g3UpjKBDeuRUDZGLN0blih37daKZGUm89jWGm2F0fVB7C8lIk421'
    }
  }
}

