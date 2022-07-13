---
Title: DoodleDebug
---

Visualize Java objects in a simple and powerful way.<br>
![DoodleDebug-logo](%assets_url%/files/ec/udkh75goo2569poq43luwd2ksqwy7t/DoodleDebug-logo_small.png)

DoodleDebug is a graphical drop-in replacement for System.out.println(). With the Eclipse plugin, it smoothly integrates into the IDE and replaces the Console. And your output is inspectable! Even after your program stopped running, you can click on the doodles to inspect them!

If nothing else,  Doo.dle() is nicer to type than System.out.println().
<br style="clear:both">

#Demo Video
<iframe src="http://player.vimeo.com/video/61086541?byline=0&amp;color=c9ff23" width="630" height="354" frameborder="0" webkitAllowFullScreen mozallowfullscreen allowFullScreen></iframe>

#Built-in Renderings
<style type="text/css">.screenshot-wrapper > img {border: 1px solid #bbb;}</style>
<span class="screenshot-wrapper" style="float:right; margin: -1.5em -1.5em 1.5em 1.5em;">![DoodleDebug-screenshot-maps_minimal](%assets_url%/files/8b/r9nuc231inrptrulks1ra19o6zox2j/output_maps-lists_small.png)
DoodleDebug comes with a number of beautiful renderings for commonly usesd Java data types. They allow a quick start without the need of customization and cover most everyday situations in software deveopment. We render Collections and Maps, several Image types, Throwables, tables (nested arrays) and matrices. 

#Ultra-short Tutorial
 Doo.dle(object);

An extended tutorial can be found by downloading and installing DoodleDebug (as an eclipse plugin).

#Installation
##From update site

- Download the DoodleDebug update site (on the right) into an arbitrary location on your computer
- Inside your Eclipse, select **Help > Install New Software...**
- Click **Add...**, then **Archive...** and point to the zip file you downloaded before
- In the *Name* field, put any name for your recognition, e.g. DoodleDebug
- You should see an entry called *DoodleDebug*. Select it and Click **Next**. *Note: You might need to uncheck "Group items by category" in order to see the DoodleDebug entry.*
- Follow the instructions of the wizard (accept license etc.) and restart eclipse
##From marketplace
*This approach might not be working due to problems with the marketplace search function.*
*The eclipse marketplace is not included in eclipse classic!*<br>

- Inside your Eclipse, select **Help > Eclipse Marketplace...**
- Search for DoodleDebug and click on **Install** and follow the instructions of the wizard
<br>
If everything went well, you should now see two new buttons on top, one to open the DoodleDebug output view and one to open the tutorial. The best way to check if DoodleDebug is working is to go through this tutorial. <span style="white-space: nowrap;">;-)

#Publications
[Niko Schwarz. **DoodleDebug, Objects Should Sketch Themselves For Code Understanding**](%assets_url%/archive/papers/Schw11bDoodleDebug.pdf)<br>
[Cedric Reichenbach (Bachelor's Thesis). **DoodleDebug - A shot-gun marriage between System.out.println and object inspectors**](%assets_url%/archive/projects/Reic13a.pdf)<br>
[Cedric Reichenbach (Master's Thesis). **DoodleDebug, Clustered - Morphing DoodleDebug into a clustered setup using fat clients**](%assets_url%/archive/masters/Reic15a.pdf)

#Source Code
[DoodleDebug on GitHub](https://github.com/CedricReichenbach/DoodleDebug)<br>
![DoodleDebug source (version 1.0.1, zip)](%assets_url%/files/76/oblj27t6fvkr1wxr0uismt8zrk810t/DoodleDebug-1.0.1_sources.zip)

#People
[Cedric Reichenbach](%base_url%/wiki/alumni/CedricReichenbach)<br>
[Niko Schwarz](%base_url%/staff/Schwarz)
