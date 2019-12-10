#
# Cookbook:: timhaus_base
# Recipe:: windows
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

creds = data_bag('creds')

mount 'T:' do
  action :mount
  device '\\\\storagepi.tim.haus\\Completed Torrents'
  username creds['linux_user']['username']
  password creds['linux_user']['pass']
end

mount 'U:' do
  action :mount
  device '\\\\storagepi.tim.haus\\Torrent Drop'
  username creds['linux_user']['username']
  password creds['linux_user']['pass']
end
