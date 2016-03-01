class clamav::freshclam (
  $manage_package,
  $package_ensure,
  $package_name,

  $manage_config,
  $manage_sysconfig,
  $config,
  $config_group,
  $config_mode,
  $config_owner,
  $config_template,
  $sysconfig,

  $manage_service,
  $service_enable,
  $service_ensure,
  $service_name,
) {

  validate_bool($manage_config)
  validate_bool($manage_package)
  validate_bool($manage_service)

  anchor { 'freshclam::begin': } ->
  class { '::clamav::freshclam::install': } ->
  class { '::clamav::freshclam::config': } ~>
  class { '::clamav::freshclam::service': } ->
  anchor { 'freshclam::end': }
}
