# Tests right here
if os.family == 'debian'
  describe packages('nfs-common') do
    its('statuses') { should cmp 'installed' }
  end
  describe packages('vim') do
    its('statuses') { should cmp 'installed' }
  end
  describe packages('figlet') do
    its('statuses') { should cmp 'installed' }
  end
  describe packages('docker') do
    its('statuses') { should cmp 'installed' }
  end
end