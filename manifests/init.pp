# Class: aws
#
# This class installs aws packages
#
# Parameters:
#
#  ensure: (default latest)
#    Determine the state of the packages
#
# Actions:
#   - Installs the list of packages
#
# Sample Usage:
#
#  For a standard installation, use:
#
#    class { 'aws':
#      ensure => 'latest'
#    }
#
#  To remove the installation, use:
#
#    class { 'aws':
#      ensure => 'absent'
#    }
#
class aws (
  $ensure = 'latest'
) inherits ::aws::params {
  package { $::aws::params::aws_packages:
    ensure  => $ensure,
  }

}
