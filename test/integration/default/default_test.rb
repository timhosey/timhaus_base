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
  describe file('/tmp/test') do
    it { should exist }
    its('content') { should eq 'test' }
    its('owner') { should eq 'root' }
    its('group') { should eq 'root' }
    its('mode') { should eq 0755 }
  end
end
