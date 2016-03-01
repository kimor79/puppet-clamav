class clamav::clamd::install inherits clamav::clamd {

  include ::clamav::data

  if $clamav::clamd::manage_package {
    package { 'clamav::clamd':
      ensure  => $clamav::clamd::package_ensure,
      name    => $clamav::clamd::package_name,
      require => Class['clamav::data'],
    }
  }

}
