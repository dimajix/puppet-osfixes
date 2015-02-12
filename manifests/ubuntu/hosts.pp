class osfixes::ubuntu::hosts {
  include stdlib

  file_line { 'ubuntu broken host entry':
    ensure => present,
    match  => '^127\.0\.1\.1.*',
    line   => '127.0.1.1 ubuntu-localhost',
    path   => '/etc/hosts',
  }
}

