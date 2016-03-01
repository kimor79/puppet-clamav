class clamav::freshclam::config (
  $allow_supplementary_groups = undef,
  $bytecode                   = undef,
  $checks                     = undef,
  $compress_local_database    = undef,
  $connect_timeout            = undef,
  $database_custom_url        = undef,
  $database_directory         = undef,
  $database_mirror            = undef,
  $database_owner             = undef,
  $debug                      = undef,
  $detection_stats_country    = undef,
  $detection_stats_host_id    = undef,
  $dns_database_info          = undef,
  $extra_database             = undef,
  $foreground                 = undef,
  $http_proxy_password        = undef,
  $http_proxy_port            = undef,
  $http_proxy_server          = undef,
  $http_proxy_username        = undef,
  $http_user_agent            = undef,
  $local_ip_address           = undef,
  $log_facility               = undef,
  $log_file_max_size          = undef,
  $log_rotate                 = undef,
  $log_syslog                 = undef,
  $log_time                   = undef,
  $log_verbose                = undef,
  $max_attempts               = undef,
  $notify_clamd               = undef,
  $on_error_execute           = undef,
  $on_outdated_execute        = undef,
  $on_update_execute          = undef,
  $pid_file                   = undef,
  $private_mirror             = undef,
  $receive_timeout            = undef,
  $safe_browsing              = undef,
  $scripted_updates           = undef,
  $submit_detection_stats     = undef,
  $test_database              = undef,
  $update_log_file            = undef,
) inherits clamav::freshclam {

  if $clamav::freshclam::manage_config {
    file { $clamav::freshclam::config:
      ensure  => file,
      owner   => $clamav::freshclam::config_owner,
      group   => $clamav::freshclam::config_group,
      mode    => $clamav::freshclam::config_mode,
      content => template($clamav::freshclam::config_template),
    }
  }

  include ::clamav::freshclam::sysconfig

}
