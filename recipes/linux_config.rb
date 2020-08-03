#
# Cookbook:: timhaus_base
# Recipe:: linux
#
# Copyright:: 2019, Tim Hosey, All Rights Reserved.

# Sets MOTD
banner = if node['packages'].keys.include? 'figlet'
           %x( figlet \`hostname -s\` )
         else
           %x( `hostname -s` )
         end

motd = <<~EOH
  ##############################################################################
  #{banner}
  ##############################################################################

  EOH

if (::File.exist?('/lib/systemd/system/bind9.service'))
  motd += <<~EOH
    The Bind9 (DNS) config is at /etc/bind/
  EOH
end

file '/etc/motd' do
  content motd
end
