default['chef_client']['config'] = {
  'ssl_verify_mode' => ':verify_none',
  'chef_server_url' => Chef::Config[:chef_server_url],
  'validation_client_name' => Chef::Config[:validation_client_name],
  'validation_key' => '/etc/chef/validation.pem',
  'client_key' => '/etc/chef/client.pem',
  'node_name' => Chef::Config[:node_name],
  'encrypted_data_bag_secret' => '/etc/chef/encrypted_data_bag_secret',
  'trusted_certs_dir' => '/etc/chef/trusted_certs',
}
default['ohai']['disabled_plugins'] = [':sessions', ':passwd']
default['chef_client']['config']['start_handlers'] = []
default['chef_client']['config']['report_handlers'] = []
default['chef_client']['config']['exception_handlers'] = []
default['chef_client']['log_dir'] = '/standard/sumologs/chef'
default['chef_client']['windows']['log_dir'] = 'S:/Logs'
default['chef_client']['windows']['log_file'] = 'client.log'
default['chef_client']['windows']['frequency'] = 'weekly'
default['chef_client']['windows']['rotate'] = '12'
default['chef_client']['init_style'] = 'none'
default['chef_client']['log_rotation']['postrotate'] = nil
default['chef_client']['cron']['log_file'] = '/standard/sumologs/chef/client.log'
default['chef_client']['cron']['append_log'] = true
default['chef_client']['cron']['minute'] = '*/30'
default['chef_client']['cron']['hour'] = '*'
default['chef_client_updater']['version'] = '14'
default['chef_client_updater']['upgrade_delay'] = 121

if node['os'] == 'windows'
  default['chef_client_updater']['post_install_action'] = 'exec'
end
