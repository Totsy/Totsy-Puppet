class users::human {

  users::add { 'jhuntwork':
    uid      => '1001',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9fkzIQvktYWwKdPKK+W0sECMmGiPBR6JNs8aXJdgJnYv7pvAD2cc4isItl+D/Cavqa+QuU5JsvWFnMD6RD1dkHL3XZ5xvOadSGylS7+IbnbzmGc0QV0PbWvMrGmxWxmV7+R1j9EwfU2ttqKSzLx3QSHZhTv4ay7qBdV5Qi0AJPjITYLVKfMVpvlAQqrHVFGIYpqRp5LaFLUiQU6+DF6g4jmg9wQF1IQ1PhJeK/TEczpkVfUclsmIL+G+9LA8+AiXYUCTTeMPOWFpJOW4mB91whRuHcxKhbBlm6yBPWwOpGrQiHEm8mHqFPiQaxcaKRYRV1FEKkq+GqNFSlEq5C8Vz',
    password => '$6$fu2IypHR$KYI0/Zcmi8/ilpSs6bynb2xD1AaAFezo9F7t/K/BTQQm.zhKTqbuD9hufCFTGTW1UuFPsvU8whoeyDF4GWRhy0',
  }

  users::add { 'pdavidoff':
    uid      => '1002',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzSJGoP/PKmkGBwLu/T1VpBPvUASxetOrh8j0TyH35VjsVTKzMqNOQlxxcV4Et7+EP79SThybb/p12X1XMo5YdcT/Qw7w+FyK8HmWd4mD4pdzmD3Jj+XXtsLmRXoczIPm4J0yZziWxQj045vulmOz+QRq4Xc6eQ6GHP2Q1KiupPrTnBfTO+NB6stJAXlsLc4IpD3Wo6//8ODWUt6nveI5eS5Dd/+qvk72UyaQgZ3cGS746zGVQydtJ+s7JI/5M9d1jPLGKoNs9b7JYR5Rs8CukoiOEdIZQVzqRwO1Zt5CIjIX/VW20x0I22bNCltND962F19K/A32LVClod0kP3e6j',
    password => '$6$MUBEsAbH$VYJfsM5fWmY0fJ6LEArbLVJ2NpNY4hSiht5XBnWz24JvedGa0qCTspzXXlICUffA7p/QvN27dUO0i5E4jhy.M/',
  }

  users::add { 'lhanson':
    uid      => '1003',
    key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA3k0iVUM/8CQkyosmta8pUIsHVLyIDHfKEaYGpqnNtJPTarBCxUOneHB3tf+Z+C/VZRRAE12Vz7jkwCddZ48iP07+o/xRiFgfuuI/O0cS0toAXZ2IIjqUOAaQiXm4b0+nT3PFs/Mp5JuoH4+6v0v4eoqwB2NYmRY1Em0aST3svdbsS+8Sx67uFY2YsYkALRinudtmDJ+KM27jGFtHzwNTAlRfZk2rqaC+mJ914AFmPUdvjGCbItw0wLEue+2wbWn96wsfFRSp/qq1ZshjMDulBOmJflqGxnBtS+HOhEkC0MbRsbmL45Sl6ghZ90my71nb6AgaQdqCa+GDelxi/z/JTQ==',
  }

  users::add { 'gsuper':
    uid      => '1010',
    key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA7H63xq0s3Q7uvqb3rasyxhfdj7ecQmUda0L/bm43F/hkKX3QhdpSwfa2A8rVtNhHnpc8HnR6kswMW0Gdzr1Yvpt54ko3jXgyL3UMS0yMFL61k7SToD2WEp17IAaC62EhISo7b7kQSFGe5aOijOjSkZpIR4qyeosB7mtNN9ZAcD/SnOlqAm9phvAPFnhewF6vzfOR6YVt8Gixx1NK0rB9OKWZkdVjAIgyzTFVm9TrTJCf8lSu7uOTaMjNk0Oi7YIYgKwySiNycMCxGGDm5BBJVX3OxE5OvQ41PVdWjnj/1WuCjgpK921gnUbSppJMSb5uOo1wkWgGV9w9l0b3WunBVQ==',
  }

  users::add { 'nate':
    uid      => '1013',
    key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAoI/2hquj77ff+M6DkpxlxPDcwJ87mR/vw8CfgIY5wW5mxgNbinDyE1tVnJVry/UY6ki/gTTJVka+q9blBXNAVEtks36AbA+hiSfdtE25zpN9KFmMxE7bb4wcUatGgoFYIPRs/mqlkkzyPivSVaf5otCZ1tfG3YCeqdpnv4aq/DIbr6v86grO0ZA9GykZ3c7p2M47gkJRMVQrZKwmLLanrKXyaES5GvZbDT15BaZqsY9gXq6MgBE3OHUzvqE9mAmHShPbJZ3PDmj525kn0muZs0Egy24obeLH0cTssdHuJvYXF5fT4gW1Ilz+PD5C06SUbl6Pm3fXrp2JkgzX8NMJhQ==',
  }

  users::add { 'troyer':
    uid      => '1014',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1LFtyj3MIcFumzvUzlt9DMMcvrjPwoM5AJTLR+H4w56vhnFsuO/QVl31aIWoH6tObsUE4oucY7jDMIXQs9VDjd2fsxX/eXmLoI0FbJhFV/hg9w2wMDfgSqUcPg09+bo6vvd/kqPTmsazTeBFKdCM9Si57xuLx8elS40q8Ey7CVhfeY9OB690a+WQy5NxmU5uFe/JQ63vfG7jDroMzAe5Ew37ba9kN82lok/x4LYKlE9yzcWEcHukvyBfHvyWQh22rWfevHaoq5gsF4AIvSavT6F9QMkLHpDzLMo220/hE35hETaslGPvvpfY6QuV6YpPcosm8OqxrM4B99yrMInH5',
  }

  users::add { 'fitz':
    uid      => '1015',
    key      => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA3YwHmzp2n08VftcK0r3Fpvz6UMweEFY0iBXbLo9GDRVxmFLTf4cjsiTFigPFcT2oTA48l3Q3Ct+go16TIA2aeYhMtMXRlsF+i05ODfSEhxUGS6G0OXltEMXzm34e2FwE6NF+DZ+KjtHjLrannZzFuaB/mPdRl2N0Xji1mdeQZnoCQ7JmFzm5B+8JoupU0hSJl1R3L8x/nn7QCZRlvkz0Q7OvgQKyCDDp43IdAL0XFxbTI9OsYqcZtCN+aFH/Pc9uWGA+MoJ/+dolzx1USSF+z4/farK4Ii+qlM4toBjJvprhgngpNM+vfeCmo7bWrImr255e1SZijmJXANJIemYWyQ==',
  }

  case $hostname {

    puppet, /^dev.*/: {

      users::add { 'jsquillets':
        uid => '1004',
        key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDjv7wPUahRapfDnL7cAwXhAZH9g7ZMgLRKP/SkU3YnNZH66f7kglfwWYIFHE8RmILPOJZZptT0SlzqnP1P7I/aowBjtsRLE7rPrnZWnbQqlk6b4K8ldZTXfIHqujbkXO6fGDCEGrDPDdgijU8GkIZ7Iv95Z/AHPjBq/126cRoWrd+4+lh0fKYVp4pF1N+qrkd9mCPggXL2udGWopVQPCCT807qovFkQp+SVC80EJGxXhIDK02fszk2yKrt51pD45dNTcS4IYFmRRZ9Y7roJlWvGbCo52q6+3PkaNDc/Au0MUFRSf1wmZYa7Iau8IClGP3s6X7cxKFJApxgJm1gozE/',
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
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAr40CSfGxPdZ1aZVZS7lIrrY3afH7IO0QtbW65SmV6KnnXLw8rMRKFkTuPNiKZByer9Q7GMlAIQOg/IhR5CfT01rSHgzsflYqLVfroA2mm/xWXBVazNbxeHLqrNIxlkWlAFw8MYfJK8pfFJUZXxn+MHngL8Jp2XtQyk05PURK+7QxGhzmua4hF893IUo0fHl6abTdN1ZxmuPwYVnvNfIXj9qZcR0H3T3I9eXrxYuwah0uUyuuBous2BV/GTNC9UbrPauqbhaEUZ3c/AbfSJvGkFmT6YHb37azC3m1YLmOPr9IT1Qe6itHqQv3NboCNMmGPCeLVoC/DV/7xFkQmWIqEQ==',
      }

      users::add { 'eubiera':
        uid => '1008',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEAwtNoTrPxgnYMbV6LjdHyJsAvpRhFisHeJ8iiQXw2WekSoFh7rlsGBG7J9KNoSWGMwUC7De5gUVXNjGr9Jn4XK5btfEWLT9DmCPdti0JuSTDkiGjH+8pnE4BKKF7B7kbejP9cJREgsUkeyi04upELDf9H1apP02Uu29hDW8nZtAV9JrdP/TjxNc4bp3RZ6TJoXK1UrMNU0X74Bd5424h/tKtLexk4J5jXXw4hl6llPgpdLILNwWaKGFq9c1/Ue+vfgFDsM7vsY5Tg6Vt/f0BUXCJ4VPOmKEVd4ZMzUIOHQTvzfaoYQ3lvK+kRepDjBHTjqbGlBHXLPH4xGbjwWDWT1Q==',
      }

    }

  }

}
