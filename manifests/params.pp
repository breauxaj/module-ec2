# Class: aws::params
#
# This class sets parameters used in this module
#
# Actions:
#   - Defines numerous parameters used by other classes
#   - Does not support other operatingsystem patterns - amazon only
#
class aws::params {
  case $::operatingsystem {
    'amazon': {
      $aws_packages = [
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
