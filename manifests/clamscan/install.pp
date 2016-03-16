class clamav::clamscan::install inherits clamav::clamscan {

  if $clamav::clamscan::manage_package {
    package { 'clamav::clamscan':
      ensure  => $clamav::clamscan::package_ensure,
      name    => $clamav::clamscan::package_name,
      require => Class['::clamav::clamd'],
    }
  }

}
