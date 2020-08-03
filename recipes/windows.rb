#
# Cookbook:: timhaus_base
# Recipe:: windows
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

# creds = data_bag_item('creds', 'linux_user')
username = 'pi'
pass = 'GreyMage8'

mount 'T:' do
  action :mount
  device '\\\\storagepi.tim.haus\\Completed Torrents'
  username username
  password pass
end

mount 'U:' do
  action :mount
  device '\\\\storagepi.tim.haus\\Torrent Drop'
  username username
  password pass
end
