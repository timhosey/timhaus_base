#
# Cookbook:: timhaus_base
# Recipe:: windows
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

creds = data_bag_item('creds', 'linux_user')

mount 'T:' do
  action :mount
  device '\\\\storagepi.tim.haus\\Completed Torrents'
  username creds['username']
  #password creds['pass']
end

mount 'U:' do
  action :mount
  device '\\\\storagepi.tim.haus\\Torrent Drop'
  username creds['username']
  #password creds['pass']
end
