# Creates /disks if it doesn't exist
directory '/disks' do
  owner 'pi'
  group 'pi'
  mode '0755'
  action :create
end

# If we're not storagepi, then we're mounting it
unless node['name'] == 'storagepi' && ENV['TEST_KITCHEN']
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

  directory '/disks/Backup' do
    owner 'pi'
    group 'pi'
    mode '0755'
    action :create
  end

  mount '/disks/Backup' do
    device 'storagepi.tim.haus:/disks/Backup-2TB'
    fstype 'nfs'
    options 'rw'
    action [:mount, :enable]
  end

  directory '/disks/SSD-1TB' do
    owner 'pi'
    group 'pi'
    mode '0755'
    action :create
  end

  mount '/disks/SSD-1TB' do
    device 'storagepi.tim.haus:/disks/SSD-1TB'
    fstype 'nfs'
    options 'rw'
    action [:mount, :enable]
  end
end
