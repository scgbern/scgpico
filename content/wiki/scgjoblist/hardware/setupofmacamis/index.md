---
Title: Setup of macamis
---
#Setup of macamis
#Server macamis


-  XServe, IAM hardware room. 
-  Processor: 2x G5
-  Disks: 2x250GB Raid-Mirror (Boot partition) \+ 500GB drive mounted on /Volumes/ServerHD

### Services

-  squeaksource.com
-  scgresources.unibe.ch
-  Backup server for squeak.org
-  moose.unibe.ch
-  smallwiki.unibe.ch
-  roundup bugtracker for moose and reflectivity

### Configuration


-  user scg is responsible for backup
	-  backup: mirror to asterix. see script bin/backup

-  user servicese runs all the Smalltalk-based servers that require graphics output
-  user services is configured to log in on reboot (safe as machine has no graphics card)
-  can be accessed via VNC

### scgresources


-  scgresources is an alias for macamis. The resources (Papers, Software) are on a 500GB disk mounted under /Volumes/ServerHD. This disk is exported as Volume "scgresources".
-  scgresources are mirrored daily to /Users/scg/NoBackup/SCGResources
-  [http://scgresources.unibe.ch/~scg/Literature](http://scgresources.unibe.ch/~scg/Literature) configured to be accessible from university IPs only. (link to /Volumes/ServerHD/Literature, holds scg Paper library \+ course material)
