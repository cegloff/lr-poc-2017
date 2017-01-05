class lrmediator::mediator{

  $installermediator     = '(ChangeME)Mediator_64_7.2.2.8000.exe'
  $version               = '7.2.2.8000'
  # Change values below
  $inst_location         = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'


  package{$installermediator:
    ensure          => installed,
    source          => "${inst_location}${installermediator}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }->
