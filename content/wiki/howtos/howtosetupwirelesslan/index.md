---
Title: How to setup wireless LAN
---
#How to setup wireless LAN
You can now use IAMwavelan instead of scgairport for wireless access.  For instructions see:

[http://www.iam.unibe.ch/institut/sysadmin/wlan](http://www.iam.unibe.ch/institut/sysadmin/wlan)

A couple of points not mentioned for LEOPARD:


-  go to Network preferences/Airport/Advance
-  make sure that 802.1x login is enabled (see picture)

![enable.png](%assets_url%/files/00/nwqts94mhqhbtoxc3ensk4jvna30b9/enable.png)

A couple of points not mentioned for TIGER:


-  From Internet Connect you must choose File>New 802.1X connection to configure your access


-  When it complains about the certificate, you must ask to "Show Certificate", <COMMAND>-drag it to the desktop, double-click on the certificate and add it to your X509 Anchors.

You should also define a Network setting called "IAMwavelan" and associate it with the corresponding Internet Connect configuration.
