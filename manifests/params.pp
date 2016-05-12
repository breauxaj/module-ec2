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
      
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }

}
