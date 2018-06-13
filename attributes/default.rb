default['chef_client']['log_dir'] = '/standard/sumologs/chef'
default['ohai']['disabled_plugins'] = [':sessions',':passwd']
default['chef_client']['config']['client_key'] = '/etc/chef/client.pem'
default['chef_client']['config']['validation_key'] = '/etc/chef/validation.pem'
default['chef_client']['config']['ssl_verify_mode'] = ':verify_none'
default['chef_client']['config']['encrypted_data_bag_secret'] = '/etc/chef/encrypted_data_bag_secret'
default['chef_client']['config']['trusted_certs_dir'] = '/etc/chef/trusted_certs'
default['chef_client']['config']['verify_api_cert'] = false