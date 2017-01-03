/*
  Set timezone and NTP on Linux
  jesus@puppet.com | @GarciaXuxo
*/
class timepack::settimestuff(
  $zone = hiera('ntp.zone')
  ){
  /*
    Use hiera to lookup values
  */
  class { '::ntp':
    servers => [ hiera('ntp.server_1'), hiera('ntp.server_2') ],
  }
  /*
    Set timezone
  */
  class { 'timezone':
    timezone => $zone,
  }

}
