name 'cb_dvo_chefClient'
maintainer 'Ray Crawford (Trek Bicycle)'
maintainer_email 'Ray_Crawford@trekbikes.com'
license 'all_rights'
source_url 'https://bitbucket.org/trekbikes/cb_dvo_chefclient/src'
issues_url 'https://bitbucket.org/trekbikes/cb_dvo_chefclient/issues'
description 'Sets interval, splay and removes the Chef Validator'
long_description 'Sets interval, splay and removes the Chef Validator'
version '0.1.0'

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Issues` link
# issues_url 'https://github.com/<insert_org_here>/cb_dvo_chefClient/issues' if respond_to?(:issues_url)

# If you upload to Supermarket you should set this so your cookbook
# gets a `View Source` link
# source_url 'https://github.com/<insert_org_here>/cb_dvo_chefClient' if respond_to?(:source_url)

depends 'chef-client', '=8.1.2'
chef_version '>= 12.1' if respond_to?(:chef_version)
supports 'centos'
