#
# Cookbook:: timhaus_base
# Recipe:: windows
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

windows_feature 'NFS-Client' do
  action :install
  install_method :windows_feature_powershell
end

registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ClientForNFS\CurrentVersion\Default' do
  values [
    { name: 'AnonymousUid', type: :dword, data: '1000' },
    { name: 'AnonymousGid', type: :dword, data: '1000' },
  ]
  action :create
end

mount 'T:' do
  action :mount
  device 'storagepi.tim.haus:/disks/Torrents'
end
