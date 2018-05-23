# Notes:
# This is respected by Linux, but not Windows; Windows takes the
# default from chef-client.
# To set Windows, see: https://github.com/chef-cookbooks/chef-client/issues/235
# which talks about setting the key
# HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\chef-client modifying
# the client command from:
# "C:\opscode\chefdk\embedded\bin\ruby"
#   "C:\opscode\chefdk\bin\chef-windows-service"
#   -c C:\chef\client.service.rb -L C:\chef\log\client.log
# to:
# "C:\opscode\chefdk\embedded\bin\ruby"
#   "C:\opscode\chefdk\bin\chef-windows-service"
#   -c C:\chef\client.service.rb -L C:\chef\log\client.log
#   -i #{node['chef_client']['interval']} -s #{node['chef_client']['splay']}
# There is a recipe to do this at the above URL.
# Or, on Windows, just set chef-client as a scheduled windows task...

# Disabling Plugins to help avoid 413 Errors
default['ohai']['disabled_plugins'] = ':Passwd'

# Linux, in seconds
default['chef_client']['interval'] = 1800
default['chef_client']['splay'] = 300

# Windows, in minutes
default['chef_client']['task']['frequency_modifier'] = 30
