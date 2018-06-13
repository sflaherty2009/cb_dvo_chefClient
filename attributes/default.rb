default['chef_client']['log_dir'] = '/standard/sumologs/chef'
default['chef_client']['config']['ssl_verify_mode'] = ':verify_none'
default['chef_client']['config']['encrypted_data_bag_secret'] = '/etc/chef/encrypted_data_bag_secret'
default['chef_client']['config']['trusted_certs_dir'] ='/etc/chef/trusted_certs' 
default['chef_client']['config']['start_handlers'] = [
    {
        :class => 'AzureExtension::StartHandler',
        :arguments => ['"/var/lib/waagent/Chef.Bootstrap.WindowsAzure.LinuxChefClient-1210.12.110.1001"']
    }
]
default['chef_client']['config']['report_handlers']  = [
    {
        :class => 'AzureExtension::StartHandler',
        :arguments => ['"/var/lib/waagent/Chef.Bootstrap.WindowsAzure.LinuxChefClient-1210.12.110.1001"']
    }
]
default['chef_client']['config']['exception_handlers']  = [
    {
        :class => 'AzureExtension::StartHandler',
        :arguments => ['"/var/lib/waagent/Chef.Bootstrap.WindowsAzure.LinuxChefClient-1210.12.110.1001"']
    }
]