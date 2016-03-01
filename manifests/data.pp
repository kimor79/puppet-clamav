class clamav::data (
  $manage_package,
  $package_ensure,
  $package_name,
) {

  validate_bool($manage_package)

  anchor { 'clamav::data::begin': } ->
  class { '::clamav::data::install': } ->
  anchor { 'clamav::data::end': }
}
