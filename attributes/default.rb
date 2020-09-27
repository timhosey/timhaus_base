# chef-client cookbook attributes

default['chef_client']['interval'] = 1800

case node['platform']
when 'raspbian', 'ubuntu', 'debian'
  unless ENV['TEST_KITCHEN']
    default['chef_client']['cron']['minute'] = '0,30'
    default['chef_client']['cron']['hour'] = '*'
    default['chef_client']['cron']['weekday'] = '*'
  end
when 'windows'
  default['chef_client']['task']['frequency'] = 'minute'
  default['chef_client']['task']['frequency_modifier'] = node['chef_client']['interval'].to_i / 60
end

## Sets our reporter to chef-server-automate
default['audit']['reporter'] = 'chef-server-automate'
default['audit']['fetcher'] = 'chef-server'
default['audit']['quiet'] = false

## Sets our audit profile based on OS
default['audit']['profiles']['timhaus'] = {
  'compliance': 'admin/timhaus',
}
