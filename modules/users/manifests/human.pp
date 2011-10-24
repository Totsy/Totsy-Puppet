class users::human {

  $superadmins = ['jhuntwork']

  users::add { 'jhuntwork':
    uid      => '1001',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC9fkzIQvktYWwKdPKK+W0sECMmGiPBR6JNs8aXJdgJnYv7pvAD2cc4isItl+D/Cavqa+QuU5JsvWFnMD6RD1dkHL3XZ5xvOadSGylS7+IbnbzmGc0QV0PbWvMrGmxWxmV7+R1j9EwfU2ttqKSzLx3QSHZhTv4ay7qBdV5Qi0AJPjITYLVKfMVpvlAQqrHVFGIYpqRp5LaFLUiQU6+DF6g4jmg9wQF1IQ1PhJeK/TEczpkVfUclsmIL+G+9LA8+AiXYUCTTeMPOWFpJOW4mB91whRuHcxKhbBlm6yBPWwOpGrQiHEm8mHqFPiQaxcaKRYRV1FEKkq+GqNFSlEq5C8Vz',
    password => '$6$fu2IypHR$KYI0/Zcmi8/ilpSs6bynb2xD1AaAFezo9F7t/K/BTQQm.zhKTqbuD9hufCFTGTW1UuFPsvU8whoeyDF4GWRhy0',
  }

  users::add { 'froggygeek':
    uid      => '1002',
    key      => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDQZM7T13dViWILs6FepNFn46S3kuK0iqAFdYUeL+CbG+jyfMjpuhwDsyteMr/ISDmDgj1hQq9wbBRdNS9rGuXnwuVGn7Wtv1Pw6P41KAIdL5VeJBORuFDEpY9cH2r9qSBVbpur3ZCVuZGdQQgjk0ouDyDJqMsaV2N0+MC5e3M/fCDS5HjHox1VNpZBhgKQpvAaM79aqt+hXe7fbxii38pUiXRJ6g14hRwjmM4IN6LC0UolE6AwY9vNchuONTqVlWPQkwbeyLkoctlFjd0buvxY+JigQETRbPR/nJX6Jep6S4H0KLgIB3qnXgrjgtn37EraNQa33kwvwLuYbpfrte1N',
  }

}
