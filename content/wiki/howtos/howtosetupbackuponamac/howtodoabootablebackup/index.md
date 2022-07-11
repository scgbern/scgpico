---
Title: How to do a Bootable Backup
---

Bootable Backup


-  Partition your external Firewire Drive. Make one partition that is as large as your laptop's harddrive, the second gets all the rest. (this can be done using Diskutil). Name the boot partion "Bootable".
-  install SuperDuper from [http://www.shirt-pocket.com/SuperDuper](http://www.shirt-pocket.com/SuperDuper) or [Carbon Copy Cloner](http://www.bombich.com/software/ccc.html)
-  Use it to copy the HD of the laptop to the Bootable partition.
-  Test your backup by rebooting the machine with the HD attached while pressing the option key. It should offer a selection of drives to boot from, select the Bootable partition. You might not want to do too much with your normal user account, as it might make a mess of things (like downloading emails).

The non-registered version of superduper does not do incremental mirrors. 

In addition to the complete bootable mirror, you should configure a normal user-file backup which retains old versions, too. (For example TimeMachine)
