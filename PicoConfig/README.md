# PicoConfig

These files are needed to configure the Pico installation.
They can either be copied, or linked to a clone of this repo.

htaccess -- the root .htaccess file
config   -- site name and other configurations
themes   -- the scg theme including the index.twig template and the css files

NB: the scgbib is a separate repo that should be copied or cloned to the assets folder. See: https://github.com/scgbern/scgbib

---
# Installation

***To do: turn this into proper instructions***

Unzip the Pico download next to the scgpico clone.
cd to the pico download and evaluate the following to link to the scgpico files.

	rm -rf config content themes
	ln -s ../scgpico/content/ .
	ln -s ../scgpico/PicoConfig/themes/ .
	ln -s ../scgpico/PicoConfig/config/ .
	cp ../scgpico/PicoConfig/htaccess ./.htaccess

	rm -rf assets
	mkdir assets
	cd assets
	ln -s /Users/oscar/Mirrors/home/scg/scg.unibe.ch/web/archive .
	ln -s /Users/oscar/Mirrors/home/scg/scg.unibe.ch/web/download .
	ln -s /Users/oscar/Mirrors/home/scg/scg.unibe.ch/web/files .

---
