# Class: ec2::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#   - Does not support other operatingsystem patterns - amazon only
#
class ec2::params {
  case $::operatingsystem {
    'amazon': {
      $ec2_packages = [
        'aws-amitools-ec2',
        'aws-apitools-as',
        'aws-apitools-common',
        'aws-apitools-ec2',
        'aws-apitools-elb',
        'aws-apitools-mon',
        'aws-cfn-bootstrap',
        'aws-cli',
        'ec2-net-utils',
        'ec2-utils'
      ]

    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }

}
