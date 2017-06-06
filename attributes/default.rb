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

# Linux
default['chef_client']['interval'] = 180
default['chef_client']['splay'] = 30

# Windows
default['chef_client']['task']['frequency_modifier'] = 180
