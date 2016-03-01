class clamav::clamd::service inherits clamav::clamd {

  if $clamav::clamd::manage_service {
    service { 'clamav::clamd':
      ensure => $clamav::clamd::service_ensure,
      enable => $clamav::clamd::service_enable,
      name   => $clamav::clamd::service_name,
    }
  }
}
