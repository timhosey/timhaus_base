# timhaus_base Changelog

Below is a historical runthrough of changes.

## 0.3.4
- Updated `chef-client` dependency

## 0.3.3
- Changed dependency calls/resolution

## 0.3.2
- Added new mount for Linux systems for backups

## 0.3.1
- Cleaning up mount

## 0.3.0
- Added Chocolatey
- Added recipe for configuring streamboxes. This will need to be broken out later

## 0.2.0
- Broke Linux into separate cookbooks
- Updated recipe calls in `default.rb`
- Added conditional based on node name

## 0.1.6
- Added audit profile

## 0.1.5
- Had to scrap using NFS for the shares and went with the SMB shares
- Added data bag and referenced it
- Added MOTD for Linux

## 0.1.4
- Updated frequency to minutes for Windows

## 0.1.3
- Added `windows.rb` recipe to configure Windows boxes

## 0.1.2
- Tweaked to created `/disks` if it doesn't exist

## 0.1.1
- Added `linux.rb` recipe that installs needed packages and mounts NFS shares
- Creates correct folder and mounts `/disks/Torrents`

## 0.1.0
Initial release.

- Base cookbook using `chef-client` cookbook as a dependency
- Attributes and recipes determined by environment
