resource_name :cleanup_chef_installers
provides :cleanup_chef_installers

property :deb_path, String, name_property: true
property :chef_version, String

action :cleanup do
  Dir.glob("#{new_resource.deb_path}/chef-*.armv7hl.deb") do |rb_filename|
    if rb_filename.scan(/\d{1,2}.\d{1,2}.\d{1,2}/).last < new_resource.chef_version
      file rb_filename do
        action :delete
      end
    end
  end
end
