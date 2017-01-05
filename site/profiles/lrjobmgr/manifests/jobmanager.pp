class lrjobmgr::jobmanager{
  $installerjobmgr      = '(ChangeMEJobManager_64_7.2.2.8005.exe'
  $version              = '7.2.2.8000'
  # Change values below
  $inst_location     = 'C:\\ChangeME\\7.2.2\\ChangeMEInstallWizard_7.2.2\\ChangeMEInstallWizard_7.2.2\\Installers\\'

  package{$installerjobmgr:
    ensure          => installed,
    source          => "${inst_location}${installerjobmgr}",
    install_options => ['/s', '/v', '/l', 'qn'],
  }

}
