# == Class redis::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class redis::params {

  case $::osfamily {
    'Debian': {
      $package_name = 'redis-server'
    }
    'RedHat', 'Amazon': {
      $package_name = 'redis'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
