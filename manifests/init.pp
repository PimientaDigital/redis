# == Class: redis
#
# Full description of class module here.
#
# === Parameters
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#
class redis (
  $package_name = $::redis::params::package_name
) inherits ::redis::params {

  # validate parameters here

  class { '::redis::install': } ->
    Class['::redis']
}
