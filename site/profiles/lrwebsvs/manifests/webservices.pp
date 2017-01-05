class lrwebsvs::webservices{

  $installerwebsvs      = '(ChangeME)WebServices_64_7.2.2.1325.exe'
  $version              = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installerwebsvs:
    ensure          => installed,
    source          => "${inst_location}${installerwebsvs}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }

  
}
