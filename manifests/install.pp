# == Class redis::install
#
# This class is called from module for install.
#
class redis::install {

  package { $::git::package_name:
    ensure => present,
  }
}
