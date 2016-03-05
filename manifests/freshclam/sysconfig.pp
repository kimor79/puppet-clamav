class clamav::freshclam::sysconfig inherits clamav::freshclam {

  if $clamav::freshclam::manage_sysconfig {
    file_line { 'clamav::freshclam::sysconfig::remove_me':
      ensure            => absent,
      path              => $clamav::freshclam::sysconfig,
      line              => 'FRESHCLAM_DELAY=disabled-warn	# REMOVE ME',
      match             => 'REMOVE ME',
      multiple          => true,
      match_for_absence => true,
      require           => Class['clamav::freshclam::install'],
    }
  }

}
