class clamav::freshclam::install inherits clamav::freshclam {

  include ::clamav::data

  if $clamav::freshclam::manage_package {
    package { 'clamav::freshclam':
      ensure  => $clamav::freshclam::package_ensure,
      name    => $clamav::freshclam::package_name,
      require => Class['clamav::data'],
    }
  }

}
