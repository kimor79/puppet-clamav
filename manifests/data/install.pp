class clamav::data::install inherits clamav::data {

  if $clamav::data::manage_package {
    package { 'clamav::data':
      ensure => $clamav::data::package_ensure,
      name   => $clamav::data::package_name,
    }
  }

}
