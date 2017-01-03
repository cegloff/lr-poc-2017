/* Bind client to Windows Domain
   jesus xuxo garcia jesus@puppet.com
   @GarciaXuxo
*/
class windomainpack::domain_client(
  $domain     = hiera('ad_domain.domain'),
  $dns        = hiera('ad_domain.dns'),
  $password   = hiera('ad_domain.password'),
  $username   = hiera('ad_domain.username')
  ) {
  # Place the powershell script to set proper domain dns set
  # File generated from template and placed on C:\ for execution leveraging
  # powershell
  file { 'C:\\dns-set.ps1':

    ensure  => present,
    content => regsubst(template('windomainpack/dns-set-client.ps1.erb'),'\n',"\r\n",'EMG'),

 }
  # Ensure dnsclient service is running to attach to domain
  # Enable Windows' service necessary for attaching machine to domain
  service { 'Dnscache':

    ensure  => running,
    enable  => true,
    require => Exec['add-dns-entry'],

 }

  #once file is place, go ahead and run it. It will run after service has been enabled
  exec { 'add-dns-entry':

    command  => 'C:\\dns-set.ps1',
    provider => powershell,
    require  => File['C:\\dns-set.ps1'],

 }

  # Once all the pieces are in place, go ahead and add to domain
  class { 'domain_membership':

    domain       => $domain,
    username     => $username,
    password     => $password,
    join_options => '3',
    require      => Service['Dnscache'],

  }
}
