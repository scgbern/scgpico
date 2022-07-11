---
Title: Installation
---

<i>OB-Enhancements</i>

To use OB-Enhancements we recommend to get a recent version of the squeak-dev image which you can find here:
[http://squeak.ofset.org/squeak-dev/](http://squeak.ofset.org/squeak-dev/).

The Squeak images provided there contain a reasonable recent version of OB-Enhancements. If you want to use the very latest version, you can get it from the Monticello repository [http://source.wiresong.ca/ob/](http://source.wiresong.ca/ob/). From this repository load the latest version of the package 'OB-Enhancements'. You should also check if there are newer versions of the packages 'OmniBrowser', 'OB-Standard' or 'OB-Morphic'.
The versions there are development version, if you are interested in latest stable versions, please use the Package Universe for updating.

<i>Hermion</i>

Installing Hermion is slightly more complex because you need the Reflectivity framework used for dynamic analysis of applications. Best is to download an image which has Reflectivity already installed. You can find such an image [here](%assets_url%/download/reflectivity/reflectivity.zip).

Afterwards you should install OB-Enhancements as mentioned above, either by using Package Universe or the Monticello repository at [http://source.wiresong.ca/ob/](http://source.wiresong.ca/ob/). If you use the later, load these packages in the following order: OmniBrowser, OB-Standard, OB-Morphic, OB-Enhancements (and maybe OB-Refactory).
Finally you can load Hermion itself from this repository: [http://www.squeaksource.com/Hermion](http://www.squeaksource.com/Hermion).

There is a [ready-made image](http://scg.unibe.ch/download/Hermion/Hermion.zip) available if you don't want to load those packages mentioned above by hand.

Finally, if you want to use the feature browser or feature-centric environment as well, we provide this [feature browser image](http://scg.unibe.ch/download/Hermion/FeatureBrowser.zip)  to give it a try.
