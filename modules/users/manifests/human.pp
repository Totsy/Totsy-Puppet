class users::human {

  users::add { 'jhuntwork':
    uid      => '1001',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9fkzIQvktYWwKdPKK+W0sECMmGiPBR6JNs8aXJdgJnYv7pvAD2cc4isItl+D/Cavqa+QuU5JsvWFnMD6RD1dkHL3XZ5xvOadSGylS7+IbnbzmGc0QV0PbWvMrGmxWxmV7+R1j9EwfU2ttqKSzLx3QSHZhTv4ay7qBdV5Qi0AJPjITYLVKfMVpvlAQqrHVFGIYpqRp5LaFLUiQU6+DF6g4jmg9wQF1IQ1PhJeK/TEczpkVfUclsmIL+G+9LA8+AiXYUCTTeMPOWFpJOW4mB91whRuHcxKhbBlm6yBPWwOpGrQiHEm8mHqFPiQaxcaKRYRV1FEKkq+GqNFSlEq5C8Vz',
    password => '$6$fu2IypHR$KYI0/Zcmi8/ilpSs6bynb2xD1AaAFezo9F7t/K/BTQQm.zhKTqbuD9hufCFTGTW1UuFPsvU8whoeyDF4GWRhy0',
}
users::add { 'rminns':
    uid      => '1029',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDU+ZP/Xsh5H7R1BN9kQ7XU59XZ/N839cmnzyd2v/PLEk8fnbn7JSvel0ZH3gZsq8WPnlFHiczTJkkSo6agaREN+eiN90FBOa1TRUL9Py7C6iLNEPfQGLVo0hL+dDPYWoo8gU/g+npbFCxfTv/1Kq2yjpruAhvbbIzi5J1wzafMhtQbf+EqkN+Ld/aN2WovG6V++Q/Ve4Iud+SFId70tDksbrdGMz3rnIkCTDW3yK281z0A9oe4qtCU6AbGzBITn2nAqfNlzxVujB1UfcbQsTeplTxYXgvneFycz3q8Ql9o6+AObg4XRl7uJXEwGSmUBBFADQks6dWdQWUDZBs4YsK7',
    password => '$6$UOhh1bpL$OY5VZCK/gO2pChFnUVxUOW6KvyZG7V2gm9JkfE0PPW/x79r8meD0L3BrFd/S8flTgQ9Ji.sLMX99tS9CM1QBT/',
  }
 users::add { 'tbhuvanendran':
           uid => '1023',
           key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwgLGEMIvyx3lg8nyRvlAHkhb3gOG6eSLdPkx76tFKOBjZvOrYKmTQeEielOA//AGqNWJNRZG+1pzqio/KDnZFelf+SHzNhSD5xAOf/HRUdqfhHCVUcv+GMXTFJpCHOwcoQvWjkdMzUpcpvkg9ooBg1ktJFnAVr7KkLjQsHccjVmVbGopTAnnI9Rgp6xwf9ZumUVl6yMkXlelRLhlM7ipT83piipQJyRK03h+nbpGeBemRXPXbYPbgiW5oaDY1eMq+AajLH+x/3M5qIeTSy6Ri3BaWmrrF94M4ybV3uoxqhWcfkaBLOJIa7AJdjgmbn8SLK5uOBZmuebcwpSTef22J',
           password => '$6$tRhCK8wV$Sp330AdHtlfdLPR82BIqKtvX58tQjiHuWWuDpsXOUC60S/d0Xmyp08SeDNvuJfB49qb6FdgFNJI2NCfj3bLlX/',
 }
  users::add { 'pdavidoff':
    uid      => '1002',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzSJGoP/PKmkGBwLu/T1VpBPvUASxetOrh8j0TyH35VjsVTKzMqNOQlxxcV4Et7+EP79SThybb/p12X1XMo5YdcT/Qw7w+FyK8HmWd4mD4pdzmD3Jj+XXtsLmRXoczIPm4J0yZziWxQj045vulmOz+QRq4Xc6eQ6GHP2Q1KiupPrTnBfTO+NB6stJAXlsLc4IpD3Wo6//8ODWUt6nveI5eS5Dd/+qvk72UyaQgZ3cGS746zGVQydtJ+s7JI/5M9d1jPLGKoNs9b7JYR5Rs8CukoiOEdIZQVzqRwO1Zt5CIjIX/VW20x0I22bNCltND962F19K/A32LVClod0kP3e6j',
    password => '$6$MUBEsAbH$VYJfsM5fWmY0fJ6LEArbLVJ2NpNY4hSiht5XBnWz24JvedGa0qCTspzXXlICUffA7p/QvN27dUO0i5E4jhy.M/',
  }

  users::add { 'kdowley':
    uid      => '1009',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDLtfOqbKCu4zf3tr5iabnNbGw/XSmuPpjXxKUak0AVnDzARyxfMhf4FVGIBuLgkAthZwhxbPhJ9PCe808ggORTAyyfeJHWHOMMJtixsZUOiupa6Vu9lx2/PXu4uEdwNQEtuJq/FmKgaLHEpLFnPnxG6zEM9oJBJSeNpdIJVBj0pg9ToUO0hD7GZCvpRfjjSDqypMViORjVkNElgil10RfO895ln37JoRL6dOf7D3fx55lEMY1ryClY6UGau2FGHMmCgvsqoHMQKqgvkUovNzM1A1Ily++peRU/tYg7O4gnm9VJLG///27ulJKL1NOpJnQONXe7XMGGSBMo16sai+W1',
    password => '$6$jh3gjfTq$WHKEIcW36FNgDYYYPC7BZ1vaLvgFmNIQ5LM8DcqUlBRmGOsmy8D397mX7JaEpqIhDucXG2snEWlxWXlT2uwU71',
  }

   users::add { 'skharlamov':
    uid      => '1032',
    key      => 'AAAAB3NzaC1kc3MAAACBALdYTITrnQwAEYTzFXlQw8IqMIZbMb6YBknKiXFLNSOoiwzvL9vyXdXeSvnhuY3xFvxeBsfp6GnAl2HkoA7ahr97stcDZ6BMv4qkHGrZk86/dOeoBkrUYFEs8yYs38NZjdIl6NqIgSk7yqOxozSNBZ0CXWaui3XhMfambMN+cjGJAAAAFQDl+fK+Cvzg0fl6CCcwfLYo/o3lOQAAAIBkm7sGutayoMx4BkndT4BCjzz8565/vsLkkegA4VGWAM6pAWNM7vIZdiuvJiNMcJimarGzqwQrliCeNPop0XWrMkzldH5FIiOwkjkXaMSPS3CgsCYy+8Yu2CvvH8kwZ7Q0geShb0EUNK/DDaJPF1KdiGYUHTOOUGiPnYBS6VvkrgAAAIAwaiUM835MfRRSnwdl7jZ3Dti8QqVBhJPvkQNb6BJIdSEPYiO9uEAV22eMGApeO/1wFx3Kd6Y+cyo/o14tZm7rXdr2vp3lZn9pYhgXmXY6IKDOxahsqDuOEMt37EYFV/VKQCTMNijQeLsJqG71jAwpbbDKIMisdVNA91xvruiYbA==',
    password => '$6$pD3COtyw$pgOFm7A8Qkrgqo8qix0IQyhufuTLsDLsSS44qoprf7zc2m1DMx3S1bVSvTmNzE8Tld9RIhnsMn7ft9OxhY29L/',
  }


   users::add { 'chrismage':
        uid      => '1025',
        key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA1kC4lUt21ez0UxWMBkzUhVi0tntfwRZCuO/0dD/XC7Lj8+leh3o6aJ/r7cF/zKwX9tREqDISBMggaVIF7wQz9wefr4wqIp5EnuSB8x9/dCEnDOSZxBQbLNFHa1wqO1eKTg50jVsMwjCDLkcOUUWoG9uhuylsCvCxSHu8BfWsOx/HNM80CcbiDHZw7H7OVsgrNTSsxq3KHbK1cTb4J56zEEXeNhKImCsun+zUEOEd++Zoqok/Ji0wfrbnCMK5s0xDqkNlIheYytP7itmk5pStc+hrjoadiiUNOkPsohOLJ5X743ztdDSojInQccmdLd3JS0TS2wKBYRVXUlE/QqSi4w==',
        password => '$6$.LXZ3R3w$rib.pVf3iGJAt74fOOZ6O0WfczQ8u2PIkXNo7TlgXovowSbRlRKYR4FoH8.b0rgC0Z6gHl8tulpBYVR9ginZ1/'
     }

  case $hostname {

    puppet, master, hv0-dc0, /^dev.*/: {

      users::add { 'jsquillets':
        uid => '1004',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDjv7wPUahRapfDnL7cAwXhAZH9g7ZMgLRKP/SkU3YnNZH66f7kglfwWYIFHE8RmILPOJZZptT0SlzqnP1P7I/aowBjtsRLE7rPrnZWnbQqlk6b4K8ldZTXfIHqujbkXO6fGDCEGrDPDdgijU8GkIZ7Iv95Z/AHPjBq/126cRoWrd+4+lh0fKYVp4pF1N+qrkd9mCPggXL2udGWopVQPCCT807qovFkQp+SVC80EJGxXhIDK02fszk2yKrt51pD45dNTcS4IYFmRRZ9Y7roJlWvGbCo52q6+3PkaNDc/Au0MUFRSf1wmZYa7Iau8IClGP3s6X7cxKFJApxgJm1gozE/',
      }

 users::add { 'bfeder':
        uid => '1026',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDC7CxkML8UKdMhIOUJAUpTlMkpZB3LZy2Yu5QbZ+qOKLPITODLDWLlPXmiBHQ0M2Wt7EXARvfBsJQc4JDDgZO6stCAkBPcr6TWwFI3XTDtQWOEYgu1JcCqpOkUKEsE+tRyiETxFLD1J1BflJACl/JwywbcXMYD8wqBvLfAw77hACU/xx8wx/HlXrq+wCO4XSxyAxbgkUc/ZYo1JpkF77YLly11pnFJVBTXOkLuKt6guMj20SLaScl5mExBPDJochC7TVujgu+avCd0gWBzjfhXPD+HmuvvgJ+ZfkwgPrmd/1o87PlaMsbsDTa7WuFl/p9U8jkvMQcgJLPzPFLSxU2t',
      }

      users::add { 'skosh':
        uid => '1005',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAuk1R+G/2CvEHGlyqXhpHFRbXScIO6aSJj55dUdHfD/z7lXOu7srzQAnh3NkdYNz0tqAdRHFik/SIaGizsYh1B+djtfTSosR99V8RsgkO47gSWsuIPoWjplcXrft1ebVDwfUkdD5/ZS6g5kZBgv83fGe47xlC8/CMQ1F0B68WiiVtu90wTUF2bzjpXTMqTt7YjxiZT2hgpui3G8ReMx8SUq3wLmr4AtsWGAQrUebC/qk0P7wPLst4GKaI71Nvvi11UUkqxiyqk8v7qIDxyCBgM334r/Ej4D95eC5ITFjoubbHH8ihxarUXqryQ6VMWHavx3y8fvZZIx6ElA44BIcLqQ==',
      }

      users::add { 'jwidro':
        uid => '1006',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwTTkek90gZFQrmjpU7ly5VfiVshtddTQxF+on345qjkL0B/V1mook1fBPDickV2Hnn+mcCxcfUZquC5yB2hQFkSYJmU7N102GAKxjh+XItn3GXHQLPXfsdYwY31blZOxh9CDjM+bh01lspibaFCvZLwmFKhdjSfuaRw1Nx0VVF9x4NcwqXW16hMvZoBALYbKrKYzFEu163ixjqa/OEV/NrqhAhiLG6JSr+cjQ8uff+e6H+LySIHw7Q7U2HtLEMOhp9QMf5/DdaG3z1NkeV5UIUEfAGU8Q4s+XODFjg71QGJAixhAgLib6uSXr/+hA+QcdpMtHeA4ulepZOgoAALYLw==',
      }

      users::add { 'esmith':
        uid => '1007',
	key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYSzGHqNDcD7lScKzheL06EyF8g5Gp4IHY9a0eCYDW38pr3kHQREFd7Tc//wMvzIHNApysgWMddlcvkY/b9Wx+d9UsGbnrK4rRjTJPAm7VhxP2yGWb4ZLyDE4DmbcUyvEe7JtHMf0VDSxz3hEgqAf0mko+T/J/cYJeWgjXKsMo7t2vtrQ1lYgzkZjuT56Cdb70cW8dmGRrABSEsZDIR2tOxzQAE+3fVCrWGDUZHa6cEHqFX5TnldP/11XPAgiTuPemA2fXCPd6raZmKynK9yJOLXKtv7lPdrrUB6sczh4oY09ydG2Tw9kQdA+RE7HKVwdSZUWz2bUybhsiwcnfCexP',
      }

      users::add { 'eubiera':
        uid => '1008',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwtNoTrPxgnYMbV6LjdHyJsAvpRhFisHeJ8iiQXw2WekSoFh7rlsGBG7J9KNoSWGMwUC7De5gUVXNjGr9Jn4XK5btfEWLT9DmCPdti0JuSTDkiGjH+8pnE4BKKF7B7kbejP9cJREgsUkeyi04upELDf9H1apP02Uu29hDW8nZtAV9JrdP/TjxNc4bp3RZ6TJoXK1UrMNU0X74Bd5424h/tKtLexk4J5jXXw4hl6llPgpdLILNwWaKGFq9c1/Ue+vfgFDsM7vsY5Tg6Vt/f0BUXCJ4VPOmKEVd4ZMzUIOHQTvzfaoYQ3lvK+kRepDjBHTjqbGlBHXLPH4xGbjwWDWT1Q==',
      }
      users::add { 'lhanson':
    	uid      => '1003',
    	key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA3k0iVUM/8CQkyosmta8pUIsHVLyIDHfKEaYGpqnNtJPTarBCxUOneHB3tf+Z+C/VZRRAE12Vz7jkwCddZ48iP07+o/xRiFgfuuI/O0cS0toAXZ2IIjqUOAaQiXm4b0+nT3PFs/Mp5JuoH4+6v0v4eoqwB2NYmRY1Em0aST3svdbsS+8Sx67uFY2YsYkALRinudtmDJ+KM27jGFtHzwNTAlRfZk2rqaC+mJ914AFmPUdvjGCbItw0wLEue+2wbWn96wsfFRSp/qq1ZshjMDulBOmJflqGxnBtS+HOhEkC0MbRsbmL45Sl6ghZ90my71nb6AgaQdqCa+GDelxi/z/JTQ==',
     }
      users::add { 'jbogaty':
	uid	=> '1040',
	key	=> 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDDSKQ7QJcvC1AVR3UJUTfQLigo4+hEaq1TpwQGrE2FtZjZbfzexgzaCOFs0i475BJ2PywLT/d1Fi/G/fFV5sxu64TZhRGzWHWcdzaWNcSjKV3Cz88DuiUKWY0uTdu1jctOrZvuJsz+QryB3+UJCeJHf/Pz/58gNyRwbX5rXEobRmG0BiRJHmbqdBcG90pbttWE6ixUyvLBcSh1yW96by5EZ0MnhF+D41gLC3WlVU+KjTkriSpQP86dpWUD5M76jEOHhSrbf7d/wzxcyj4cDOjwKFUQRlYOl3H4/YwMqyK8m6lbwx/YDpKFi5KaFYLTZru7LlZE/+S2wNqCD4204KS0rUBhb76YEzlX3wodTIEdAb4JUG9+AfWUUT4FIPOd822fVUSIBoV1DyhCQlsVjLzhKQ+chls+l6S05kIynFZQGfePMI9P2bq5oNpZq6zFz9FmAMCYyOW8yBPmuNt1FZZlJia9XaeX+VinOBOgLYu9OzQJVxmjtw73Vyf5pJuhGKfCoHqxshGPSY7i6mpkINzIBp+eGOawOMaSlTANv8DOdi0t+SkwM5QGcm03KfPPdE1onsfeHNZ2HIZIEteoca1/tu3odoeaMBJ3qtqkOQZ+sU9QWINqNR0J5/j571UvOlJDo2lLiaM5pXQDUwAxS5wCrLlVL27QLxPUqLMO6T8pLw==',
     }
      users::add { 'dgowrie':
        uid      => '1022',
        key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNtEQi+Ck8EYulxMNADGOeurA2XBoH+DLJ6DCpmxabr1rNwMLRSFW/smOTq8QOhIQrlaPlw0k+Q5/SLGT1HyQRzABumh8Kx7kcqyzbuGcxiw+nkvYA1Fr7N7keBs2qLUuB/tUmACAnyILuXNnbR99CRglgL0N1jdlUY4cipkTv3/F+GVTKTq0yl33/lY6C7ryBFxN7si7EwR0PeWSexA+l8g8dkzf9zlZxdcuA1mvEVi+QR1Slrl6FogSY3r0fZ1FeIflwy8GznyRuTFEL88nZ5Hac8XL5oAvsZaO3bcNzoWgg4UL7sQLf8SXBFwVqGHMrtvQO8sWRiWHDc04r2csF',
     }
      users::add { 'rkamphausen':
        uid      => '1024',
        key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9cMFTCA2rc0JfRe9ldw9fo+hneqllr6dC9YsfqHB8Sns8dZomvfxNnnVvG5E1OqwJuo1lYJSeKIm+OUuXiO+BG+mlcU3te5Qc8/Mo7zJWQPzxwCK34nzklYEIZOziwUE23OHYxgWD9r8Nxkv+yeeaYrmgNmvzckzRS6h/xMCJjYZKcpDcLma5leqx8ZD5RJ7+3juKLVJWh6qQQreK2TW+pn91kCZ2C+eGbGLDnIlyb4GlB7CGqveF6q3jkEzCPTKGnisW2U24k5mFKRjFhssmJlcp1HqZovO8aCNfov1Cpmbqxlwz0N0TkwKjkL3z6yb5/USGZjwov2qDVRnhBfCN',
     }
	users::add { 'rstreet':
        uid      => '1028',
        key      => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAl2ZkL6lyYbjWSFRz7InaZFtEO1KyjojQKS4mWoKusvTWfYJApJa/o1KUpG336XZITKG6giumSBP9++/uyar4A8YQQF0kQQvdBomE9wd/+F8MJ2U89Wwgf4O/x8vUzjnva5XusAGY/FZssYioY15aB9sJAetMm6beqpjtMNRq6Rs=',
     }	
      users::add { 'jgrim':
        uid      => '1027',
        key      => 'AAAAB3NzaC1kc3MAAACBAKEzPD45bkA7VxaxQkDCsnFQC9fX+lo5V+qs5qLowxRYi/kCMLdyEvRkhOvwp6ehy+fp0TfEqQs6qkNSmXJve48mcEWIeRPHM3GqSHux2Fa6MpTSO/nzLRkrLHAxJDMxqePMJrgstQAGrvDlAMlTjeWbhhehEzkb5COusJTXn1vTAAAAFQCkq0b17U1nHMlezWgKLNxxDGrnIQAAAIByBjgkyj1UZBLcgYnmOYdf+L4FalFeWbPILVeLKJX0quh2g6h+l4o7ogsctwdGmDyyf63nogk3eKNasuxA0L2yA5n6PmKY1Ec3EW7VzZNtVgcJ9aHLG9NML6eFxtP8cmm5AbVhLSlLG6Pc9GlQmvK7dg26rywfuocp+n+7BNmJ5QAAAIEAixRPOWctQ0tz7qX8j0ilGAcnY3Y6APvvd7V1ZiXyIY6RzwdsGolEmCWEfnImvPQGskIT4VPUoyDGvC8oein7hUZ+6rGWiW8450v2uMjz2lGz85mWq66BAK15qz7eZHX3+7bv17/Zyh4FmXCyZApCXX6TSyC3yRkjvdwKRbDY3fI=',
     }

    }

    web6-dc0, /.*-slav/: {
	users::add { 'skosh':
           uid => '1005',
           key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAuk1R+G/2CvEHGlyqXhpHFRbXScIO6aSJj55dUdHfD/z7lXOu7srzQAnh3NkdYNz0tqAdRHFik/SIaGizsYh1B+djtfTSosR99V8RsgkO47gSWsuIPoWjplcXrft1ebVDwfUkdD5/ZS6g5kZBgv83fGe47xlC8/CMQ1F0B68WiiVtu90wTUF2bzjpXTMqTt7YjxiZT2hgpui3G8ReMx8SUq3wLmr4AtsWGAQrUebC/qk0P7wPLst4GKaI71Nvvi11UUkqxiyqk8v7qIDxyCBgM334r/Ej4D95eC5ITFjoubbHH8ihxarUXqryQ6VMWHavx3y8fvZZIx6ElA44BIcLqQ==',
	   password => '$6$4G1QrzHe$4o5C.jWke9Tg2L.dN86MWtNx3NLdZb095XSlPvRjyHwdA1Ti7OIx2IPbWMv9notLdENoUmcf75LbXtOGXSgZY1',
      }
    }
 cluster1-dc0, cluster2-dc0, cluster3-dc0, db0-dc0, db1-dc0: {
        users::add { 'percona':
           uid => '1000',
           key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEApP15RVFMg5kn9muPXWvPjNcITaTSs/GAPC8bw6HKtUGdP34J7Ytc2HMSDWKe22zZ8P2mz8E/FHgkE6mKZfiBryC8W0lzSittDlYLaaL77VvdB3JtNtyn0AwvBvjMFWvIK16Etcz5mXTSnfSoGxnW2HuN47BhAsPyUWoGm4+B+PUNLqjxfj5slYAah6SQmLzHyP5tC9h3E5yQ69bKBZXOZsyY0icu/q+AWzIe0d5A8PsgsIBl5iS65wMv/hVUR1Moz7tSzjpPm0KHl3exHGy0RMhAaZXU7+CmzM5rNpVQWrJmskfNm4dzGYJxqbSd12rMd+SdhsMapNxolYh0SKeX/w==',
           password => '$6$C99Z9EX9$WC4HueRtyUV16jWeY92lkbAn8KtfTcDWhVvtdisLTNOh0knZnF3II4hfzyW2.ynDF7tJQ/JBnLP6/uFWsSb3T.',
      }
    }


    /.*-tharsan/: {
        users::add { 'tbhuvanendran':
           uid => '1023',
           key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCwgLGEMIvyx3lg8nyRvlAHkhb3gOG6eSLdPkx76tFKOBjZvOrYKmTQeEielOA//AGqNWJNRZG+1pzqio/KDnZFelf+SHzNhSD5xAOf/HRUdqfhHCVUcv+GMXTFJpCHOwcoQvWjkdMzUpcpvkg9ooBg1ktJFnAVr7KkLjQsHccjVmVbGopTAnnI9Rgp6xwf9ZumUVl6yMkXlelRLhlM7ipT83piipQJyRK03h+nbpGeBemRXPXbYPbgiW5oaDY1eMq+AajLH+x/3M5qIeTSy6Ri3BaWmrrF94M4ybV3uoxqhWcfkaBLOJIa7AJdjgmbn8SLK5uOBZmuebcwpSTef22J',
	   password => '$6$tRhCK8wV$Sp330AdHtlfdLPR82BIqKtvX58tQjiHuWWuDpsXOUC60S/d0Xmyp08SeDNvuJfB49qb6FdgFNJI2NCfj3bLlX/',
        }
      } 
    /.*-tom/: {
	 users::add { 'troyer':
    	   uid      => '1014',
    	   key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1LFtyj3MIcFumzvUzlt9DMMcvrjPwoM5AJTLR+H4w56vhnFsuO/QVl31aIWoH6tObsUE4oucY7jDMIXQs9VDjd2fsxX/eXmLoI0FbJhFV/hg9w2wMDfgSqUcPg09+bo6vvd/kqPTmsazTeBFKdCM9Si57xuLx8elS40q8Ey7CVhfeY9OB690a+WQy5NxmU5uFe/JQ63vfG7jDroMzAe5Ew37ba9kN82lok/x4LYKlE9yzcWEcHukvyBfHvyWQh22rWfevHaoq5gsF4AIvSavT6F9QMkLHpDzLMo220/hE35hETaslGPvvpfY6QuV6YpPcosm8OqxrM4B99yrMInH5',
	   password => '$6$iW2GqBGZ$4.qmmIMEAaX2G7O/j5bSha//4BWtfA0ZxaKXp8Ubv2RZa0zX4CB/E6KjohoUxI8CVwy9hKN0PbG0YHvluvSD90',
       }
     }
    /.*-lawren/:{
 	 users::add { 'lhanson':
    	  uid      => '1003',
    	  key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA3k0iVUM/8CQkyosmta8pUIsHVLyIDHfKEaYGpqnNtJPTarBCxUOneHB3tf+Z+C/VZRRAE12Vz7jkwCddZ48iP07+o/xRiFgfuuI/O0cS0toAXZ2IIjqUOAaQiXm4b0+nT3PFs/Mp5JuoH4+6v0v4eoqwB2NYmRY1Em0aST3svdbsS+8Sx67uFY2YsYkALRinudtmDJ+KM27jGFtHzwNTAlRfZk2rqaC+mJ914AFmPUdvjGCbItw0wLEue+2wbWn96wsfFRSp/qq1ZshjMDulBOmJflqGxnBtS+HOhEkC0MbRsbmL45Sl6ghZ90my71nb6AgaQdqCa+GDelxi/z/JTQ==',
          password => '$6$31UM.D1b$M/MhIQ1vls0H1Ry.WUoaXC2oFFkt.k.DC5rwa6PGDXqkSBpqGrjQjxqoLjNGhNn3xPCVjBQq4ODQdLCvFPgLC1'      
	}
	users::add { 'chrismage':
        	uid      => '1025',
        	key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA1kC4lUt21ez0UxWMBkzUhVi0tntfwRZCuO/0dD/XC7Lj8+leh3o6aJ/r7cF/zKwX9tREqDISBMggaVIF7wQz9wefr4wqIp5EnuSB8x9/dCEnDOSZxBQbLNFHa1wqO1eKTg50jVsMwjCDLkcOUUWoG9uhuylsCvCxSHu8BfWsOx/HNM80CcbiDHZw7H7OVsgrNTSsxq3KHbK1cTb4J56zEEXeNhKImCsun+zUEOEd++Zoqok/Ji0wfrbnCMK5s0xDqkNlIheYytP7itmk5pStc+hrjoadiiUNOkPsohOLJ5X743ztdDSojInQccmdLd3JS0TS2wKBYRVXUlE/QqSi4w==',
     	} 
    }
   /.*-evan/:{
 	users::add { 'eubiera':
        uid => '1008',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwtNoTrPxgnYMbV6LjdHyJsAvpRhFisHeJ8iiQXw2WekSoFh7rlsGBG7J9KNoSWGMwUC7De5gUVXNjGr9Jn4XK5btfEWLT9DmCPdti0JuSTDkiGjH+8pnE4BKKF7B7kbejP9cJREgsUkeyi04upELDf9H1apP02Uu29hDW8nZtAV9JrdP/TjxNc4bp3RZ6TJoXK1UrMNU0X74Bd5424h/tKtLexk4J5jXXw4hl6llPgpdLILNwWaKGFq9c1/Ue+vfgFDsM7vsY5Tg6Vt/f0BUXCJ4VPOmKEVd4ZMzUIOHQTvzfaoYQ3lvK+kRepDjBHTjqbGlBHXLPH4xGbjwWDWT1Q==',
	password => '$6$eUaYvKwB$VZW1W/aHJNyWlLlPQipPe6CH4O17ss3anXlY2thSd7gwuMAUsBSYslrJ9pFJJuPFq3yxb6CcBVFcssXVpXWq5.',
      }
    }
   /.*-jason/:{
        users::add { 'jgrim':
        uid => '1027',
	key => 'AAAAB3NzaC1kc3MAAACBAKEzPD45bkA7VxaxQkDCsnFQC9fX+lo5V+qs5qLowxRYi/kCMLdyEvRkhOvwp6ehy+fp0TfEqQs6qkNSmXJve48mcEWIeRPHM3GqSHux2Fa6MpTSO/nzLRkrLHAxJDMxqePMJrgstQAGrvDlAMlTjeWbhhehEzkb5COusJTXn1vTAAAAFQCkq0b17U1nHMlezWgKLNxxDGrnIQAAAIByBjgkyj1UZBLcgYnmOYdf+L4FalFeWbPILVeLKJX0quh2g6h+l4o7ogsctwdGmDyyf63nogk3eKNasuxA0L2yA5n6PmKY1Ec3EW7VzZNtVgcJ9aHLG9NML6eFxtP8cmm5AbVhLSlLG6Pc9GlQmvK7dg26rywfuocp+n+7BNmJ5QAAAIEAixRPOWctQ0tz7qX8j0ilGAcnY3Y6APvvd7V1ZiXyIY6RzwdsGolEmCWEfnImvPQGskIT4VPUoyDGvC8oein7hUZ+6rGWiW8450v2uMjz2lGz85mWq66BAK15qz7eZHX3+7bv17/Zyh4FmXCyZApCXX6TSyC3yRkjvdwKRbDY3fI=',
	password => '$6$vI0Uclss$B9oIS.FOzbYlBqXwoeOF5q9RrSHnpN0TPF4Gyu6uX135.yBvX2NlYLWrX4P89S7hvXY2t/dk3dB578qc0/jkT.',
      }
      users::add { 'chrismage':
        uid      => '1025',
        key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA1kC4lUt21ez0UxWMBkzUhVi0tntfwRZCuO/0dD/XC7Lj8+leh3o6aJ/r7cF/zKwX9tREqDISBMggaVIF7wQz9wefr4wqIp5EnuSB8x9/dCEnDOSZxBQbLNFHa1wqO1eKTg50jVsMwjCDLkcOUUWoG9uhuylsCvCxSHu8BfWsOx/HNM80CcbiDHZw7H7OVsgrNTSsxq3KHbK1cTb4J56zEEXeNhKImCsun+zUEOEd++Zoqok/Ji0wfrbnCMK5s0xDqkNlIheYytP7itmk5pStc+hrjoadiiUNOkPsohOLJ5X743ztdDSojInQccmdLd3JS0TS2wKBYRVXUlE/QqSi4w==',
      }
    }
  /.*-jonathan/:{
 	users::add { 'jwidro':
        uid => '1006',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwTTkek90gZFQrmjpU7ly5VfiVshtddTQxF+on345qjkL0B/V1mook1fBPDickV2Hnn+mcCxcfUZquC5yB2hQFkSYJmU7N102GAKxjh+XItn3GXHQLPXfsdYwY31blZOxh9CDjM+bh01lspibaFCvZLwmFKhdjSfuaRw1Nx0VVF9x4NcwqXW16hMvZoBALYbKrKYzFEu163ixjqa/OEV/NrqhAhiLG6JSr+cjQ8uff+e6H+LySIHw7Q7U2HtLEMOhp9QMf5/DdaG3z1NkeV5UIUEfAGU8Q4s+XODFjg71QGJAixhAgLib6uSXr/+hA+QcdpMtHeA4ulepZOgoAALYLw==',
	password => '$6$l6E.zXWn$4FB5/ivz.clEp76FiOvPuEG0x5SToUO.rR7lAH3rJR/3Rdr4/OBOaiOW64eZj/tl93q0fD3raYd.YcE4OIiUw.',
      }
      users::add { 'esmith':
        uid => '1007',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYSzGHqNDcD7lScKzheL06EyF8g5Gp4IHY9a0eCYDW38pr3kHQREFd7Tc//wMvzIHNApysgWMddlcvkY/b9Wx+d9UsGbnrK4rRjTJPAm7VhxP2yGWb4ZLyDE4DmbcUyvEe7JtHMf0VDSxz3hEgqAf0mko+T/J/cYJeWgjXKsMo7t2vtrQ1lYgzkZjuT56Cdb70cW8dmGRrABSEsZDIR2tOxzQAE+3fVCrWGDUZHa6cEHqFX5TnldP/11XPAgiTuPemA2fXCPd6raZmKynK9yJOLXKtv7lPdrrUB6sczh4oY09ydG2Tw9kQdA+RE7HKVwdSZUWz2bUybhsiwcnfCexP',
      }
    }
  /.*-eric/:{
 	users::add { 'esmith':
        uid => '1007',
	key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYSzGHqNDcD7lScKzheL06EyF8g5Gp4IHY9a0eCYDW38pr3kHQREFd7Tc//wMvzIHNApysgWMddlcvkY/b9Wx+d9UsGbnrK4rRjTJPAm7VhxP2yGWb4ZLyDE4DmbcUyvEe7JtHMf0VDSxz3hEgqAf0mko+T/J/cYJeWgjXKsMo7t2vtrQ1lYgzkZjuT56Cdb70cW8dmGRrABSEsZDIR2tOxzQAE+3fVCrWGDUZHa6cEHqFX5TnldP/11XPAgiTuPemA2fXCPd6raZmKynK9yJOLXKtv7lPdrrUB6sczh4oY09ydG2Tw9kQdA+RE7HKVwdSZUWz2bUybhsiwcnfCexP',
	password => '$6$RwBTQ5xu$HSPlMd.hnAwxYL/M0jdnW/4zrX4l235hNR/kaY7RehgynCdJyCVbJqEYNRKgvVw5130zCdpovyHTzSNywQp8Z/',
      }
    }
  /.*-josh/:{
	users::add { 'jsquillets':
        uid => '1004',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDjv7wPUahRapfDnL7cAwXhAZH9g7ZMgLRKP/SkU3YnNZH66f7kglfwWYIFHE8RmILPOJZZptT0SlzqnP1P7I/aowBjtsRLE7rPrnZWnbQqlk6b4K8ldZTXfIHqujbkXO6fGDCEGrDPDdgijU8GkIZ7Iv95Z/AHPjBq/126cRoWrd+4+lh0fKYVp4pF1N+qrkd9mCPggXL2udGWopVQPCCT807qovFkQp+SVC80EJGxXhIDK02fszk2yKrt51pD45dNTcS4IYFmRRZ9Y7roJlWvGbCo52q6+3PkaNDc/Au0MUFRSf1wmZYa7Iau8IClGP3s6X7cxKFJApxgJm1gozE/',
	password => '$6$/b0uk1O7$7ksyLNYZJdmW2WAGSiMtxOj95Z8SyhbZGZG2WaqItI24.cyCyYlTI1aZRVoZ2VKp1acxT1oSeinJPVhXaD/oX1',      
      }
    }

  /.*-ben/:{
 	users::add { 'bfeder':
        uid => '1026',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDC7CxkML8UKdMhIOUJAUpTlMkpZB3LZy2Yu5QbZ+qOKLPITODLDWLlPXmiBHQ0M2Wt7EXARvfBsJQc4JDDgZO6stCAkBPcr6TWwFI3XTDtQWOEYgu1JcCqpOkUKEsE+tRyiETxFLD1J1BflJACl/JwywbcXMYD8wqBvLfAw77hACU/xx8wx/HlXrq+wCO4XSxyAxbgkUc/ZYo1JpkF77YLly11pnFJVBTXOkLuKt6guMj20SLaScl5mExBPDJochC7TVujgu+avCd0gWBzjfhXPD+HmuvvgJ+ZfkwgPrmd/1o87PlaMsbsDTa7WuFl/p9U8jkvMQcgJLPzPFLSxU2t',
     	password => '$6$TwnBjFBc$MBazvuHftBwtEZlKxSb9FUnt/fuDeiD0pClCr1d7NQvqsDi27WkGGLV8uBPbXabfXcSIgETCPV0dlYffs75nw.'
     }
   }

  /.*-rob/:{
        users::add { 'rkamphausen':
        uid => '1024',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9cMFTCA2rc0JfRe9ldw9fo+hneqllr6dC9YsfqHB8Sns8dZomvfxNnnVvG5E1OqwJuo1lYJSeKIm+OUuXiO+BG+mlcU3te5Qc8/Mo7zJWQPzxwCK34nzklYEIZOziwUE23OHYxgWD9r8Nxkv+yeeaYrmgNmvzckzRS6h/xMCJjYZKcpDcLma5leqx8ZD5RJ7+3juKLVJWh6qQQreK2TW+pn91kCZ2C+eGbGLDnIlyb4GlB7CGqveF6q3jkEzCPTKGnisW2U24k5mFKRjFhssmJlcp1HqZovO8aCNfov1Cpmbqxlwz0N0TkwKjkL3z6yb5/USGZjwov2qDVRnhBfCN',
     }
   }

  /.*-ryan/:{
        users::add { 'rstreet':
        uid => '1028',
        key => 'AAAAB3NzaC1yc2EAAAABJQAAAIEAl2ZkL6lyYbjWSFRz7InaZFtEO1KyjojQKS4mWoKusvTWfYJApJa/o1KUpG336XZITKG6giumSBP9++/uyar4A8YQQF0kQQvdBomE9wd/+F8MJ2U89Wwgf4O/x8vUzjnva5XusAGY/FZssYioY15aB9sJAetMm6beqpjtMNRq6Rs=',
     }	
        users::add { 'chrismage':
        uid      => '1025',
        key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA1kC4lUt21ez0UxWMBkzUhVi0tntfwRZCuO/0dD/XC7Lj8+leh3o6aJ/r7cF/zKwX9tREqDISBMggaVIF7wQz9wefr4wqIp5EnuSB8x9/dCEnDOSZxBQbLNFHa1wqO1eKTg50jVsMwjCDLkcOUUWoG9uhuylsCvCxSHu8BfWsOx/HNM80CcbiDHZw7H7OVsgrNTSsxq3KHbK1cTb4J56zEEXeNhKImCsun+zUEOEd++Zoqok/Ji0wfrbnCMK5s0xDqkNlIheYytP7itmk5pStc+hrjoadiiUNOkPsohOLJ5X743ztdDSojInQccmdLd3JS0TS2wKBYRVXUlE/QqSi4w==',
	password => '$6$.LXZ3R3w$rib.pVf3iGJAt74fOOZ6O0WfczQ8u2PIkXNo7TlgXovowSbRlRKYR4FoH8.b0rgC0Z6gHl8tulpBYVR9ginZ1/',
      }
   }
 /.*-jon/:{
	users::add { 'jbogaty':
	uid => '1040',
	key => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDDSKQ7QJcvC1AVR3UJUTfQLigo4+hEaq1TpwQGrE2FtZjZbfzexgzaCOFs0i475BJ2PywLT/d1Fi/G/fFV5sxu64TZhRGzWHWcdzaWNcSjKV3Cz88DuiUKWY0uTdu1jctOrZvuJsz+QryB3+UJCeJHf/Pz/58gNyRwbX5rXEobRmG0BiRJHmbqdBcG90pbttWE6ixUyvLBcSh1yW96by5EZ0MnhF+D41gLC3WlVU+KjTkriSpQP86dpWUD5M76jEOHhSrbf7d/wzxcyj4cDOjwKFUQRlYOl3H4/YwMqyK8m6lbwx/YDpKFi5KaFYLTZru7LlZE/+S2wNqCD4204KS0rUBhb76YEzlX3wodTIEdAb4JUG9+AfWUUT4FIPOd822fVUSIBoV1DyhCQlsVjLzhKQ+chls+l6S05kIynFZQGfePMI9P2bq5oNpZq6zFz9FmAMCYyOW8yBPmuNt1FZZlJia9XaeX+VinOBOgLYu9OzQJVxmjtw73Vyf5pJuhGKfCoHqxshGPSY7i6mpkINzIBp+eGOawOMaSlTANv8DOdi0t+SkwM5QGcm03KfPPdE1onsfeHNZ2HIZIEteoca1/tu3odoeaMBJ3qtqkOQZ+sU9QWINqNR0J5/j571UvOlJDo2lLiaM5pXQDUwAxS5wCrLlVL27QLxPUqLMO6T8pLw==',
      password => '$6$UGlo.9zA$A5rdx/iWhKN54jpFe76lVxG2UlNQON0Y2lVCPwbfsCg18xR4lTq0z.6Etn4ajCFT2CB4ViBeyzmTglSktDRch/',
      }
   }
 /.*-david/:{
	users::add { 'dgowrie':
        uid => '1022',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNtEQi+Ck8EYulxMNADGOeurA2XBoH+DLJ6DCpmxabr1rNwMLRSFW/smOTq8QOhIQrlaPlw0k+Q5/SLGT1HyQRzABumh8Kx7kcqyzbuGcxiw+nkvYA1Fr7N7keBs2qLUuB/tUmACAnyILuXNnbR99CRglgL0N1jdlUY4cipkTv3/F+GVTKTq0yl33/lY6C7ryBFxN7si7EwR0PeWSexA+l8g8dkzf9zlZxdcuA1mvEVi+QR1Slrl6FogSY3r0fZ1FeIflwy8GznyRuTFEL88nZ5Hac8XL5oAvsZaO3bcNzoWgg4UL7sQLf8SXBFwVqGHMrtvQO8sWRiWHDc04r2csF',
      password => '$6$yL/fWIrd$IeAbkM2ucNNyLlqkUCXxrXwbRm2c0T62Xfr5o/86TiCxZsQM2q4NIS/V/R/MyrBT47tgvkKQ4f9PE0Xf5qhwZ.',
      }
    }
  }
}
