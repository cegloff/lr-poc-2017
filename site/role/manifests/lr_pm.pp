class role::lr_pm{

  include lralarm::alarm
  include lrconsole::console
  include lrcommon::common
  include lrjobmgr::jobmanager
  include lrsysmom::sysmon
  include lrwebsvs::webservices
  include windomainpack::domain_client

  Class['lralarm::alarm']->
  Class['lrconsole::console']->
  Class['lrcommon::common']->
  Class['lrjobmgr::jobmanager']->
  Class['lrsysmom::sysmon']->
  Class['lrwebsvs::webservices']->
  Class['windomainpack::domain_client']

}
