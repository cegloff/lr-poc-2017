class lrconsole::console{

  $installerconsole     = '(ChangeME)Console_64_7.2.2.8005.exe'
  $version              = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installerconsole:
    ensure          => installed,
    source          => "${inst_location}${installermediate}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }

}
