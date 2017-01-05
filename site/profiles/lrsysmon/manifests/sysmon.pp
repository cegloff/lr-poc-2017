class lrsysmon::sysmon{

  $installersysmon      = 'ChangeMESYSMON.exe'
  $version           = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installersysmon:
    ensure          => installed,
    source          => "${inst_location}${installersysmon}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }
  
}
