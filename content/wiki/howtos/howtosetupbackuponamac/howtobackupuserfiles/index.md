---
Title: How to Backup user files
---
#How to Backup user files
There are many solutions.

## rsync

rsync syncs two directories. Works incrementally. With the right magic options, it seems to sync everything needed. Lukas did a script, md hacked it: http://www.iam.unibe.ch/~denker/misc/backupWithRsync.txt

To restore my backup, I proceeded as follows

```
 mount +t hfs -r -o rdonly,noauto,nodev,nosuid,journaled /dev/disk1s1 /Volumes/Backup
```

and then restored the backup with

```
 rsync -av /Volumes/Backup/macguire/full/ /Users/akuhn
```

do not omit the / at the end of the first path

## Mozy

Mozy provides an interesting on-line encrypted backup service. See [http://mozy.com](http://mozy.com)
