# Installs needed packages
package 'nfs-common'
package 'portmap'
package 'vim'
package 'figlet'
package 'docker'

# Downloads and installs this block if it's a Raspbian system
# if node.platform? 'raspbian'
#   chef_deb_version = '15.9.17'

#   cleanup_chef_installers '/etc/chef/remote' do
#     chef_version chef_deb_version
#   end

#   directory '/etc/chef/remote' do
#     owner 'root'
#     group 'root'
#     mode '0755'
#     action :create
#   end

#   remote_file "/etc/chef/remote/chef-#{chef_deb_version}-1.el7.armv7hl.deb" do
#     source "https://tim.haus/Artifacts/chef-#{chef_deb_version}-1.el7.armv7hl.deb"
#     owner 'root'
#     group 'root'
#     mode '0755'
#     action :create
#   end

#   dpkg_package 'chef-client' do
#     source "/etc/chef/remote/chef-#{chef_deb_version}-1.el7.armv7hl.deb"
#     action :upgrade
#   end
# end
