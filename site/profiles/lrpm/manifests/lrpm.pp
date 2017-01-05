class lrpm::lrpm{

  $installeralarm       = '(ChangeME)AlarmingManager_64_7.2.2.8000.exe'
  $installerconsole     = '(ChangeME)Console_64_7.2.2.8005.exe'
  $installercommon      = '(ChangeME)Common_64_7.2.2.60.exe'
  $installerjobmgr      = '(ChangeMEJobManager_64_7.2.2.8005.exe'
  $installersysmon      = 'ChangeMESYSMON.exe'
  $installerwebsvs      = '(ChangeME)WebServices_64_7.2.2.1325.exe'
  $version              = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installeralarm:
    ensure          => installed,
    source          => "${inst_location}${installeralarm}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installerconsole:
    ensure          => installed,
    source          => "${inst_location}${installermediate}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installercommon:
    ensure          => installed,
    source          => "${inst_location}${installercommon}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installerjobmgr:
    ensure          => installed,
    source          => "${inst_location}${installerjobmgr}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installersysmon:
    ensure          => installed,
    source          => "${inst_location}${installersysmon}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installerwebsvs:
    ensure          => installed,
    source          => "${inst_location}${installerwebsvs}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }

}
