# chef-client cookbook attributes

case node['platform']
when 'raspbian', 'ubuntu'
  default['chef_client']['init_style'] = 'none'
when 'mac_os_x'
  default['chef_client']['init_style'] = 'none'
when 'windows'
  node['chef_client']['task']['frequency'] = 'hourly'
end
