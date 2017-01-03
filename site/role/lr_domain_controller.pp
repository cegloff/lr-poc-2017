/*
  Builds a domain controller for LR pod
  jesus@puppet.com
*/
class role::lr_domain_controller{

  include profiles::windomainpack::domaincontroller

}
