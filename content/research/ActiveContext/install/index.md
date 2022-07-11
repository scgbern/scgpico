---
Title: Install
---

1. Got to the ewernli fork of Pinocchio on github: 

R/W: git@github.com:ewernli/p.git
R-Only: git://github.com/ewernli/p.git

2. Download the latest pharo from 

http://pharo-project.org/pharo-download

3. Move the image, changes and sources into the pharo subfolder

4. Start the image, go to system>>settings, configure your name & set the proxy if needed, then save the image

5. Go to Tools>>File browser, pick pharoSetup.st in meta subdirectory and click install an save the image

6. Open Browser and "Choose default system Browser" from Menu. Set to SystemBrowser

7. Add the ActiveContextP monticello repository that is on squeaksource

8. Open it and load the latest Pinocchio, then ActiveContextP

(Latest tested: pinochio 605, ActiveContextP 73)

9. Go to Pinocchio>>export all

10. When finished, use make -j3

11. Create a telnetDynUp.p file under subdirectory src with content

ActiveContextP.DynUp.ACTelnetClient runClient: 9090

12. ./pinocchio telnetDynUp.p
