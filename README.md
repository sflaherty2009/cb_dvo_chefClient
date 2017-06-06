# cb_dvo_chefClient

This Cookbook:
* Deletes the Chef validation certificate
* Updates the converge interval (set in an attribute)
* Updates the converge splay (set in an attribute)

## Supported Platforms

**Officially supported platforms:**

* CentOS 7.2 & 7.3 - Sets chef-client up as a systemd service
* Windows 2012 R2 - Sets up chef-client as a scheduled Windows Task

**Also know/is likely to work on:**

* NA

## Dependencies
This Cookbook is dependant upon the chef-client Cookbook available on the Chef Supermarket.

### Windows
No platform-specific dependencies.

### Linux
No platform-specific dependencies.

## Attributes

* `node['chef_client']['interval']` - Sets the frequency at which chef-client checks back into the Chef Server.  
  * **Value: 1800.**  
* `node['chef_client']['splay']` - Sets the frequency offset so that all machines provisioned at the same time don't check in all at once.  
  * **Value: 300.**  

## Platform-Specific Documentation

### Windows
* Sets chef-client up as a scheduled Windows task.

### Linux
* Sets chef-client up as a systemd service.

## Usage

### cb_dvo_chefClient::default

If you are using the orchestrator, there is no need to include cb_dvo_chefClient in the run_list; it's included by default.  Neither the interval or splay can be altered by end users.

## Upgrade/Roll-back considerations

### Windows

None.

### Linux 

None.

## License and Authors

Author:: Ray Crawford (Ray_Crawford@trekbikes.com) -- Copyright 2017.
