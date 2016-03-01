# clamav

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with clamav](#setup)
    * [What clamav affects](#what-clamav-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with clamav](#beginning-with-clamav)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

The clamav module allows you to manage ClamAV with Puppet.

ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats. The clamav module allows you to manage the various daemons and configuration for scanning hosts and updating the scan databases.

## Setup

### What clamav affects

* ClamAV
* Freshclam

### Setup Requirements

On CentOS, the clamav packages require the EPEL repository.

### Beginning with clamav

General setup:

```
include ::clamav
```

## Usage

By default clamav will manage clamd and freshclam. If you want one or the other, or to tailor the configuration:

```
class { '::clamav::clamd':
}

class { '::clamav::freshclam':
  database_mirror => [
    'your.clam.mirror1',
    'your.clam.mirror2',
  ],
}
```

### Configure with hiera

```
include ::clamav
```

```
---
clamav::freshclam::database_mirror:
  - your.clam.mirror1
  - your.clam.mirror2
```

## Reference

* clamav
* clamav::clamd
* clamav::freshclam

## Limitations

This module has been built on and tested against Puppet 4.3.

Support is currently only for CentOS 7.

## Development

Patches welcome!
