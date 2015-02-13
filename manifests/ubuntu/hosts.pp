class osfixes::ubuntu::hosts {
  include stdlib

  host { $hostname:
    ensure => present,
    ip => $ipaddress,
    host_aliases => [ $fqdn ]
  }->
  file_line { 'ubuntu broken host entry':
    ensure => present,
    match  => '^127\.0\.1\.1.*',
    multiple => true,
    line   => '127.0.1.1 ubuntu-localhost',
    path   => '/etc/hosts',
  }
}

