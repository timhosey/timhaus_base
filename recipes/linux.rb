#
# Cookbook:: timhaus_base
# Recipe:: linux
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

# Installs needed packages
package 'nfs-common'
package 'portmap'

# Kludgey but necessary
if node['name'] != 'storagepi'
  directory '/disks/Torrents' do
    owner 'pi'
    group 'pi'
    mode '0755'
    action :create
  end

  mount '/disks/Torrents' do
    device 'storagepi.tim.haus:/disks/Torrents'
    fstype 'nfs'
    options 'rw'
    action [:mount, :enable]
  end
end
