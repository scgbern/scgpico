---
Title: How to set up backup on a Mac
---
#How to set up backup on a Mac
Backing up data is essential. Your hard-drive WILL FAIL!

This page is trying to collect some ticks and tricks for a sensible Backup Strategy. There are different ideas of how to do it. 

## Before you start


-  Get an external Firewire drive. Get just the LARGEST you can afford. 
-  Get another one for home.
-  As you have now a drive so large that even you have no clue what to put on it, your mind will be free to use it for backup.

## Backup and Archive User files

[How to Backup user files](%base_url%/wiki/howtos/howtosetupbackuponamac/howtobackupuserfiles)

## Fast start in the case of all cases

Just having a backup of your own files is not enough. You need a setup where you can switch to another machine and continue working in 2 minutes, not 2 days. 

[How to do a Bootable Backup](%base_url%/wiki/howtos/howtosetupbackuponamac/howtodoabootablebackup)

## Who uses what?

Examples of backup setups

###md

-  500GB Firewire at SCG
	-  Timemachine
	-  backup of some large archived files

-  160GB at home
	-  Bootable clone (Carbon Copy Cloner), no archived old versions

- TODO: offsite backup with S3

###on

-  1000GB Firewire at home and at SCG for rsync mirror and incremental backups
-  160GB iPod for mirroring files between home and office
-  [tsync](https://www.iam.unibe.ch/scg/svn_repos/oscar/MacScripts/tsync) wrapper script around rsync uses timestamp to avoid syncing the wrong way (!)
-  [iPodSync](https://www.iam.unibe.ch/scg/svn_repos/oscar/MacScripts/BACKUPscripts/iPod/iPodSync.command) command checks the timestamp to decide which direction to sync
-  [BACKUP](https://www.iam.unibe.ch/scg/svn_repos/oscar/MacScripts/BACKUPscripts/iPod/BACKUP2iPod.command) and [UPDATE](https://www.iam.unibe.ch/scg/svn_repos/oscar/MacScripts/BACKUPscripts/iPod/UPDATEfromiPod.command) scripts specify what to sync
-  [bu](https://www.iam.unibe.ch/scg/svn_repos/oscar/MacScripts/bu) is a script that uses tar to make full and incremental backups, based on recommendations from the [O'Reilly book](http://www.librarything.com/work/206208/book/15404780)
-  Mirror and incremental backup folders on desktop machine at SCG to enable remote rsync and backup from a laptop over the network (I used this from Australia successfully)
