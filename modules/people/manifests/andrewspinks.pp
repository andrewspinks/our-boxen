require boxen::environment

class people::andrewspinks {

  $dotfiles = "${boxen::config::srcdir}/dotfiles"

  repository { $dotfiles:
    source => "${::github_login}/dotfiles",
    require => File["${boxen::config::srcdir}"],
  }

  exec { "install dotfiles":
    provider => shell,
    command  => "rake install",
    cwd      => $dotfiles,
    creates  => "${home}/.bash_profile",
    require  => Repository[$dotfiles],
  }
}