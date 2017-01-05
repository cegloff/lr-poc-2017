class lraie::dp{

  $installercommon      = '(ChangeME)Common_64_7.2.2.60.exe'
  $installermediate     = '(ChangeME)Mediator_64_7.2.2.8000.exe'
  $installersysmon      = 'ChangeMESYSMON.exe'
  $version           = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installercommon:
    ensure          => installed,
    source          => "${inst_location}${installercommon}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installermediate:
    ensure          => installed,
    source          => "${inst_location}${installermediate}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->

  package{$installersysmon:
    ensure          => installed,
    source          => "${inst_location}${installersysmon}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }



}
