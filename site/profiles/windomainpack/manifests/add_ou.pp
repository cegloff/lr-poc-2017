# Adds machine to domain
# jesus xuxo garcia jesus@puppet.com
# @GarciaXuxo
class windomainpack::add_ou {

#include 'windows_ad'

::windows_ad::organisationalunit { 'PUPPET' :
  ensure  =>  present,
  path    =>  'DC=XUXO,DC=ORG',
  ouName  =>  'PUPPET',

  }
}
