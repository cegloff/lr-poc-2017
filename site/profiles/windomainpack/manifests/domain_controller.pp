/* Create Windows Domain Controller
   jesus xuxo garcia jesus@puppet.com
   @GarciaXuxo
*/
class windomainpack::domain_controller(

    $lrdomainname   = hiera('ad_domain.domain'),
    $lrnetbios      = hiera('ad_domain.netbios'),
    $password       = hiera('ad_domain.password')

  ){

  # Place the powershell script to set proper domain dns set
  file { 'C:\\dns-set.ps1':
    ensure  => present,
    content => regsubst(template('profiles/dns-set.ps1.erb'),'\n',"\r\n",'EMG'),

 }->
 exec { 'add-dns-entry':
   command  => 'C:\\dns-set.ps1',
   provider => powershell,
 }->
  # Ensure dnsclient service is running to attach to domain
  service { 'Dnscache':
    ensure  => running,
    enable  => true,
  }->
  # Installs Active Directory and runs DCpromo
  class {'windows_ad':
      install                => present,
      installmanagementtools => true,
      restart                => true,
      installflag            => true,
      configure              => present,
      configureflag          => true,
      domain                 => 'forest',
      domainname             => $lrdomainname,
      netbiosdomainname      => $lrnetbios,
      domainlevel            => '6',
      forestlevel            => '6',
      databasepath           => 'c:\\windows\\ntds',
      logpath                => 'c:\\windows\\ntds',
      sysvolpath             => 'c:\\windows\\sysvol',
      installtype            => 'domain',
      dsrmpassword           => $password,
      installdns             => 'yes',
      localadminpassword     => $password,
  }

}
