class clamav::clamd (
  $manage_package,
  $package_ensure,
  $package_name,

  $manage_config,
  $config,
  $config_group,
  $config_mode,
  $config_owner,
  $config_template,

  $manage_service,
  $service_enable,
  $service_ensure,
  $service_name,
) {

  validate_bool($manage_config)
  validate_bool($manage_package)
  validate_bool($manage_service)

  anchor { 'clamd::begin': } ->
  class { '::clamav::clamd::install': } ->
  class { '::clamav::clamd::config': } ~>
  class { '::clamav::clamd::service': } ->
  anchor { 'clamd::end': }
}
