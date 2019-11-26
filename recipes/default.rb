#
# Cookbook:: timhaus_base
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

include_recipe 'chef-client::config'

case node['platform']
when 'raspbian', 'ubuntu'
  include_recipe 'chef-client::cron'
when 'mac_os_x'
  include_recipe 'chef-client::cron'
when 'windows'
  include_recipe 'chef-client::task'
end
