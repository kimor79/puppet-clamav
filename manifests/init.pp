# Class: clamav
# ===========================
#
# Installs and manages the ClamAV suite (clamd and freshclam)
#
# Parameters
# ----------
#
# Variables
# ----------
#
# Authors
# -------
#
# Kimo Rosenbaum <kimor79@yahoo.com>
#
# Copyright
# ---------
#
# Copyright 2016 Kimo Rosenbaum
#
class clamav {

  include ::clamav::clamd
  include ::clamav::clamscan
  include ::clamav::freshclam
}
