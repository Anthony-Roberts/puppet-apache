# @summary This is for operating system related variables
#
class apache::params {
  $install_ensure = 'present'

  # Use facter for define the operating system
  case $::osfamily {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
       $install_name = 'apache2'
    }
  }
}
