# Tests right here
if os.family == 'debian'
  describe packages('nfs-common') do
    its('statuses') { should cmp 'installed' }
  end
end