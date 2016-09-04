#
# Cookbook Name:: redisha_policy
# Recipe:: default
#

include_recipe 'chef-sugar'
master = search('node', 'tags:redis_master')
if master.nil? || master.count == 0
	node.default['redis-multi']['redis_master'] =  best_ip_for(node)
	include_recipe 'redis_multi::master'
end
