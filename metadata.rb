name 'cb_dvo_chefclient'
maintainer 'Trek DevOps'
maintainer_email 'devops@trekbikes.com'
license 'all_rights'
source_url 'https://bitbucket.org/trekbikes/cb_dvo_chefclient/src'
issues_url 'https://bitbucket.org/trekbikes/cb_dvo_chefclient/issues'
description 'Sets Chef logrotation and deletes validation key'
long_description 'See: https://bitbucket.org/trekbikes/cb_dvo_chefclient'
version '1.2.19'

chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'chef-client', '~> 10.0.5'
depends 'chef_client_updater', '~> 3.5.1'
depends 'windows_logrotate', '~> 0.2.2'
depends 'cb_dvo_addstorage'
depends 'conf', '~> 0.1.0'
depends 'chef-vault', '~> 3.1.1'

supports 'centos'
supports 'windows'
