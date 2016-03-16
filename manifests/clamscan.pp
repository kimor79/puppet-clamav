class clamav::clamscan (
  $manage_package,
  $package_ensure,
  $package_name,
) {

  validate_bool($manage_package)

  anchor { 'clamav::clamscan::begin': } ->
  class { '::clamav::clamscan::install': } ->
  anchor { 'clamav::clamscan::end': }
}
