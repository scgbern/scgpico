---
Title: How to install a Mac from scratch
---
#How to install a Mac from scratch
Tasks to do to install a Mac from scratch:

(This is reasonably up-to-date &mdash; some steps may vary.)

To boot from CD keep the 'option' key pressed when powering on and then select the cd. 

1.  Create a single partition (in the past we always made two separate partitions, but there appears to be no special reason to do this anymore).
The partition should be named after the machine (e.g., macarthur) so it can be easily recognized if it is remote-mounted. (Get the new name from the IAM sysadmin.)
```
	Install Menu -> Disk Utility -> Partition -> delete
```
2.  Create an scg account. All the machines should have an account named scg with the right password.
3.  Get the MAC address and mail it to the sysadmin so that automatic DHCP can be set up
```
	System Preferences -> network -> EthernetID
```
4.	Install any software resources that come in the installation CD (Installation CD1 - see XCode folder).
5.  Install cvs
```
	You can copy .tcshrc from the macscripts that are in MacScripts on cvs.
	Set up cvs root.
	See the cvs faq and also Password-free authentification with SSH in the scg wiki wiki
```
6.  Install the macscripts.
```
	Just check out MacScripts from cvs.
```
7.  Install the XCode Developer Tools from the Tiger installer DVD.
8.  Set up the printer. For this you need to know the model of the printer, which you can obtain by doing:
```
	yh printer_name 
	i.e.: yh iamlw100s
```
9.  Change the name of the computer.
```
	System Preferences -> Sharing
```
10.  Start the firewall allowing some incoming network communications such as remote Login, FTP, Personal File sharing and iChat Rendezvous.
```
	You can do this from System Preferences -> Sharing
```
11. Create an account for yourself.
12. Change the logo of the scg account to the lego-logo.
13. Change the user id.
```
	See the subject How do I set/change a user ID and which ones are taken by SCG people? In the scg wiki wiki.
```
14.  Put the name of the mac on the envelopes of the installation cd please.
15.  Install the rest of the software (available on zarkov).
```
	List of the most importat things to install:
	1.  Developer tools (point 6. 
	2.  Remote Editor
	3.  BBEdit
	4.  Graphic converter
	5.  Tek (MacTex) + texshop
	6.  Omnigraffle
	7.  Transmit
	8.  Tri Backup
	9. Acrobat
     10. TextMate
     11. Microsoft Office 
     12. Subversion 
```
(for more details see [how to use subversion](%base_url%/wiki/howtos/howtousesubversion))
16. Change the shell from bash to tcsh
```
	You can use chsh to do this.
```
17. Update the configuration files and set the environment variables to access cvs (see  Environment Variables).
18. Enable fast user switching.
```
	System Preferences -> Accounts -> Login Options -> Enable fast user switching
```
19. Install X11 for MAC. X11 VM  does not get installed by default. You need to load the Installation CD and look in System/Installattion/Packages/X11User.pkg.
To ensure X11 starts automatically when you log, add X11 in System Preferences -> Accounts-> Login Items. You also need create an .MacOSX folder in your home directory and create an environment.plist file there. (Copy the MacOSX.tar from zarkov to your home directory and do a tar xvf MacOSX.tar;rm MacOSX.tar. This creates the .MacOSX folder and the environment.plist file for you).


---

<h2>Installation notes by [AA](%base_url%/wiki/alumni/adriankuhn)</h2>


-  Turn of bluetooth.
-  Install <code>XCodeTools.mpkg</code> from installation disk one.
-  Create a network profile for University, set the proxy.
-  Configure Safari
	-  change its homepage to something useful, eg <code>about:blank</code>,
	-  and remove the equally useless bookmarks as well,
	-  enable tab and always show them,
	-  disable opening of safe files after download,
	-  choose show status bar from the view menu.

-  Configure Expose, turn on zooming and make large mouse pointer.
-  Set plain text as default in TextEdit, choose large font sizer.
-  Do not go to [afp://scgresources](afp://scgresources) to get software, better look online.
	-  except for Microsoft Office, which proves the rule.

-  Download [http://www.parallels.com](http://www.parallels.com)
	-  Install Avast
	-  Install VisualWorks
	-  Install Java
	-  Install Eclipse

-  Download [http://macromates.com](http://macromates.com), ie TextMate
-  Download http://homepage.mac.com/martinott/, ie SVN
-  Save the nice green iTunes logo, then update your mac.
