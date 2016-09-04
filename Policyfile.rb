# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://github.com/chef/chef-dk/blob/master/POLICYFILE_README.md

name "redisha-service"
cookbook 'redis-multi', git: 'https://github.com/rackspace-cookbooks/redis-multi'
cookbook 'redisha_policy', path: 'cookbooks/redisha_policy'
default_source :supermarket
run_list 'redisha_policy::default', 'redis-multi::default', 'redis-multi::enable', 'redis-multi::sentinel', 'redis-multi::sentinel_default', 'redis-multi::sentinel_enable'
default['redisio']['job_control'] = 'systemd'
default['redisio']['sentinel']['manage_config'] = 'false'
default['redisio']['default_settings']['address'] = '0.0.0.0'
default['redisio']['sentinel_defaults']['failover-timeout'] = '30000'
default['redisio']['sentinel_defaults']['down-after-milliseconds'] = '5000'
default['redisio']['sentinel_defaults']['quorum_count'] = '3'
