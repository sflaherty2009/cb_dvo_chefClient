# Changelog - cb_dvo_chefclient

All notable changes to this project will be documented in this file.

## [1.2.20] - 2019-01-22

### Changed

- Updated chef-client cookbook.

## [1.2.19] - 2019-01-17

### Changed

- Fixed chef-client cron job to run in necessary environments.

## [1.2.18] - 2019-01-17

### Changed

- Modified delivery to use cb_infra_acceptance instead of cb_dvo_terraform.

## [1.2.17] - 2019-01-17

### Changed

- Added chef_client_updater cookbook and set to use the latest minor version of Chef 14.

## [1.2.10 - 1.2.16] - 2018-11-5

### Changed

- Renamed from chefClient to chefclient
- Moved from encrypted data bags to chef vault for automate
- Added a crontab entry for linux to run chef-client every 30 minutes in automate environments

## [1.2.9] - 2018-11-5

### Added

- Updated cb_dvo_addStorage dependency.

## [1.2.8] - 2018-10-23

### Added

- This changelog file.
