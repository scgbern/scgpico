# Installation

To do: turn this into proper instructions

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

