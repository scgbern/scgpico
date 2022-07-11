---
Title: How to install Parallels and Windows on Mac
---

Many thanks to Markus for his help and patience, without him Paralles would not run on my machine (and you would not have this howto) &mdash; akuhn, january 2007

##Installing Parallels


-  Go to [http://www.parallels.com](http://www.parallels.com)
-  Go to the trial version of 'Parallels Desktop for Mac' (Build 1970 this was for me)
-  Skip step 1, as we have a registration key
-  Download the DMG package
-  Run the installer
-  The activation key is in [https://www.iam.unibe.ch/scg/svn_repos/scg/SystemAdministration/SCGSoftwareInventory.xls](https://www.iam.unibe.ch/scg/svn_repos/scg/SystemAdministration/SCGSoftwareInventory.xls)
-  Break Parallels installation and get a copy of windows.
-  Go to  [http://msdn40.e-academy.com/unibe_gesamter](http://msdn40.e-academy.com/unibe_gesamter) (not [http://msdn40.e-academy.com/ifiuam_bern/](http://msdn40.e-academy.com/ifiuam_bern/) )
-  Log in with your uni account
-  You will get a key for windows XP there buying the free product
-  The windows ISO is in [afp://scgresources.unibe.ch/scg/Resources/Software/INSTALLERS/Windows/](afp://scgresources.unibe.ch/scg/Resources/Software/INSTALLERS/Windows/)
-  Burn a bootable disk image from the ISO using the Disk Utility application
-  Finish with Parallels installation
-  Be patience while Windows is installing
-  Shut down windows, power off the virtual machine
-  Change memory to some larger amount
-  Start virtual machine and windows
-  Go to [http://www.avast.com](http://www.avast.com)
-  Download and register the 'FREE Avast! 4 Home Edition'
-  Restart windows

...and there you are!

<i>Remark:</i> on restarting for the first Parallels bothers you with registration, just ignore, registration is not the same as activation and you are activated. 

<i>NB:</i> In the latest version of Parallels (unlike previous versions), if you follow the above procedure, Parallels Tools are automatically installed during Windows installation.

##Add a windows user


-  Go to Preferences and add a user
-  Run 'control userpasswords2' and turn on the logon screen
