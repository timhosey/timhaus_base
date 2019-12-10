#
# Cookbook:: timhaus_base
# Recipe:: default
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

include_recipe 'chef-client::config'

case node['platform']
when 'raspbian', 'ubuntu'
  include_recipe 'chef-client::cron'
  include_recipe 'timhaus_base::linux'
when 'mac_os_x'
  include_recipe 'chef-client::cron'
when 'windows'
  include_recipe 'chef-client::task'
  include_recipe 'timhaus_base::windows'
end
