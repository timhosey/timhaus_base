# timhaus_base Changelog

Below is a historical runthrough of changes.

# 0.1.4

- Updated frequency to minutes for Windows

# 0.1.3

- Added `windows.rb` recipe to configure Windows boxes

# 0.1.2

- Tweaked to created `/disks` if it doesn't exist

# 0.1.1

- Added `linux.rb` recipe that installs needed packages and mounts NFS shares
- Creates correct folder and mounts `/disks/Torrents`

# 0.1.0

Initial release.

- Base cookbook using `chef-client` cookbook as a dependency
- Attributes and recipes determined by environment
