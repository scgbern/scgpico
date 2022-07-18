---
Title: PyPy Sprint
---
#PyPy Sprint
Software Composition Group and the [PyPy Team](http://morepypy.blogspot.com/) organized a PyPy/Squeak sprint in the week of October 22-26, at the University of Bern, Switzerland, to bring Pypy and the Squeak VM together.  The general goal of the sprint was to use PyPy such that we can generate a Smalltalk VM that is able to start-up and run a Squeak image.

Please refer to the blog for some impressions of the sprint


-  <big>[http://pypysqueak.blogspot.com](http://pypysqueak.blogspot.com)</big>

&nbsp;

---

## Bern Sprint Finished, Summary

<i>The Bern sprint is finished, all the non-local sprinters have gone home and everybody is resting. The week was amazingly intense and productive, but also lots of fun. Thanks to all the participants! Many thanks also to the University of Bern to host the sprint, especially to Adrian Kuhn for putting lots of effort into the organization.

I am not quite awake yet to completely summarize the sprint, but some of the things we managed to do are:

- Define a simple representation of the Smalltalk object model in Python
- implement the bytecode dispatcher and all the Squeak bytecodes
- implement helper functionality for defining primitives in Python
- implement many of the essential primitives
- implement an image loader that can load Squeak images
- translate all of the above to C (or .NET, or Java, for that matter)

We managed to load the Squeak mini-image and successfully run the tiny benchmark at around a tenth of the speed of Squeak.

The area where the most work is left is obviously the primitives. We haven't even started on the graphical primitives yet and there cannot really start an image (just load it and call selected methods on some functions from the outside). On the other hand, this is all rather straightforward work so it probably won't take too hard thinking to do it. Another big question is image saving where it is unclear whether we should define our own format or try to be able to write Squeak images again.

I will maybe post some more detailed information about what we did during the week, so if you have some specific questions, just ask them. Also, I hope some of the sprinters (including myself) will work a bit more on the project in the next time. We are considering a followup sprint, let's see where that is going.</i>

&mdash;Carl Friedrich Bolz


---

## List of attendees

-  Adrian Lienhard
-  Armin Rigo
-  Carl Friedrich Bolz
-  Lukas Renggli
-  Niko Matsakis
-  Oscar Nierstrasz
-  Toon Verwaest
-  Tudor Girba
-  Adrian Kuhn

## Publications

[Back to the future in one week — implementing a Smalltalk VM in PyPy](%assets_url%/scgbib/?query=Bolz08a&filter=Year)

## Some links


-  [http://morepypy.blogspot.com/](http://morepypy.blogspot.com/) (RSS newsfeed)
-  [https://codespeak.net/viewvc/pypy/dist/pypy/lang/smalltalk](https://codespeak.net/viewvc/pypy/dist/pypy/lang/smalltalk)
-  [http://codespeak.net/pypy/extradoc/sprintinfo/bern2007/announce.html](http://codespeak.net/pypy/extradoc/sprintinfo/bern2007/announce.html)
-  [http://www.squeak.org/](http://www.squeak.org/) 
-  [http://squeakvm.org/](http://squeakvm.org/) 
