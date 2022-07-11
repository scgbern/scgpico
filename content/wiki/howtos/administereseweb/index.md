---
Title: Administer ESE website
---

The ESE lecture has a dedicated wiki powered by pier.

**System administration**

Pier and the static files are installed under /srv/ese.unibe.ch. The subdirectory web contains the static files which will be served by apache. The subdirectory app contains the smalltalk image.

The website uses Apache as a front proxy. A config can be added into /etc/apache2/sites-available as a sym link ln -s /srv/ese.unibe.ch/ese.unibe.ch.conf .

To reload apache config: apache2ctl restart

To start pier: /srv/ese.unibe.ch/run. It might be necessary to sudo if the setguid fails.

The directory /home/ese is not used.

Default apache directory: /var/www is not used.

**Pier administration**

To remote connect to the smalltalk image use a vnc client, e.g. Chicken of the VNC.

Make sure from time to time that image is correctly persited. Go to system persistency settings and try to manually save the image. If a problem happens, an error message is displayed.

The package Pier-ESE contains goodies for automatic registration of the students, access to their grade at the end of the semester, etc.

Files uploaded through pier are stored as static files in web/files. The persistency settings must be correct so that pier saves them in the right location.
