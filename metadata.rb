name 'cb_dvo_chefClient'
maintainer 'Ray Crawford (Trek Bicycle)'
maintainer_email 'Ray_Crawford@trekbikes.com'
license 'all_rights'
source_url 'https://bitbucket.org/trekbikes/cb_dvo_chefclient/src'
issues_url 'https://bitbucket.org/trekbikes/cb_dvo_chefclient/issues'
description 'Sets interval, splay and removes the Chef Validator'
long_description 'See: https://bitbucket.org/trekbikes/cb_dvo_chefclient'
version '1.1.0'

chef_version '>= 12.1' if respond_to?(:chef_version)
depends 'chef-client', '= 10.0.2'
supports 'centos'
supports 'windows'
