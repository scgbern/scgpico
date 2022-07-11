# Installation

To do: turn this into proper instructions

Unzip the Pico download next to the scgpico clone.
cd to the pico download and evaluate the following to link to the scgpico files.

rm -rf config content themes
ln -s ../scgpico/config/ .
ln -s ../scgpico/content/ .
ln -s ../scgpico/themes/ .


rm -rf assets
mkdir assets
cd assets
ln -s /Users/oscar/Mirrors/home/scg/scg.unibe.ch/web/download .
ln -s /Users/oscar/Mirrors/home/scg/scg.unibe.ch/web/files .


