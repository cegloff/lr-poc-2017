class lraie::aie{

  $installeraie      = 'ChangeMEAIE.exe'
  $version           = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installeraie:
    ensure          => installed,
    source          => "${inst_location}${installeraie}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }
}
