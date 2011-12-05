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

  case $hostname {
    db3-dc1: {
      users::add { 'rjmetrics':
        uid => '1500',
        key => 'AAAAB3NzaC1yc2EAAAABIwAAAQEA+Vhxpkt5X7i4uO22U0zOjWP6IJV9PHuz9Tfc6PxQYk74DEcjKhf40NhCcNB8jduCE3iDtpcYRpJi4WO7SDdF4awn/GSzPgtIbv9+TXVJzSJBg7/7Gkqe8vbo4AqxQ3CSSkhm5UgzoDfgyI0kh1Pdw2oJ+v1wA+TXys2GU6DEZ346MYXc2sAXGEmPs6xy9fkYjX60CKRMWtZAZY5dBNLQnJyPOlKiP/elOF1II/v0/bVQ6CwQieOjmXxZmI3V3Bv9tGRaFT2KQ3XqWnRH5gjwk+6KJ+kPjDBqSShzdvYBEcBDH6r31o6GFmeK/LAYOXk0Dy3nBo2L0sBA0ZBV77LmZQ==',
      }
    }
  }
}
