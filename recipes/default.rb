#
# Cookbook:: timhaus_base
# Recipe:: default
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

include_recipe 'chef-client::config'

case node['platform']
when 'raspbian', 'ubuntu'
    include_recipe 'chef-client::default'
    include_recipe 'timhaus_base::linux_packages'
    include_recipe 'timhaus_base::linux_config'
    include_recipe 'timhaus_base::linux_mount'
when 'mac_os_x'
  include_recipe 'chef-client::cron'

when 'windows'
  include_recipe 'chef-client::task'
  include_recipe 'timhaus_base::windows'

  # Kludge, we'll make a wrapper at some point
  if node['name'] == 'vrbox'
    include_recipe 'chocolatey::default'
  end
end

include_recipe 'audit::default'
