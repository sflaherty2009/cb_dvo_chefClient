# cb_dvo_chefclient

This cookbook removes the validation key from servers after they've been registered with the chef server. It also sets up a log rotation schedule for chef logs for both Windows and Linux systems.

## Current Logging Standards

### Linux

- Log name: client.log ( set with `default['chef_client']['log_file']` )
- Log location: /standard/sumologs/chef ( set with `default['chef_client']['log_dir']` )
- Rotate: 12 ( set with `default['chef_client']['logrotate']['rotate']` )
- Frequency: Weekly ( set with `default['chef_client']['logrotate']['frequency']` )

### Windows 

- Log name: chef.log ( set with `default['chef_client']['windows']['log_file']` )
- Log location: S:\Logs\ ( set with `default['chef_client']['windows']['log_dir']` )
- Rotate: 12 ( set with `default['chef_client']['windows']['rotate']` )
- Frequency: Weekly ( set with `default['chef_client']['windows']['frequency']` )

## Requirements

### Platforms

- CentOS 7.4
- CentOS 7.3
- Windows Server 2016

### Chef

- Chef 13.8.5+

### Cookbooks (Dependencies)

- chef-client ~> 10.0.5
- windows_logrotate ~> 0.2.2
- cb_dvo_addStorage
- conf ~> 0.1.0

## Attributes

- node['chef_client']['log_dir'] - set the log directory for linux
- node['chef_client']['windows']['log_dir'] - set the log directory for windows
- node['chef_client']['windows']['log_file'] - set the log filename for windows
- node['chef_client']['windows']['frequency'] - set the rotation frequency for windows
- node['chef_client']['windows']['rotate'] - set the amount of logfiles to keep
- node['chef_client']['config'] - sets the default client.rb and can be used to update or add ANY accepted attributes in client.rb
  - example: default['chef_client']['config']['ssl_verify_mode'] can be used to update the verify mode used by chef in client.rb

## Recipes

### default.rb

Runs the config and delete_validation recipes from the chef-client community cookbook for Linux. Runs the delete_validation recipe from the chef-client community cookbook, windows_logrotate community cookbook and logrotatewin recipe for Windows.

### disable.rb

Disables the chef-client service

### logrotatewin.rb

Completes setup for client.rb to our specifications and sets the chef-client logging directory based on attributes above for Windows servers. It also sets up a log rotation for chef-client based on attributes above.

## License

**Copyright:** 2018 Trek Bicycles

