# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'timhaus_base'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'timhaus_base::default'

# Specify a custom source for a single cookbook:
cookbook 'timhaus_base', path: '.'

# Cookbook dependencies
cookbook 'chef-client', '~> 11.5.0', :supermarket
cookbook 'audit', '~> 9.1.0', :supermarket
cookbook 'chocolatey', '~> 2.0.1', :supermarket
