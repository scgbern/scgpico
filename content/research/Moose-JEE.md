---
Title: Moose JEE
---
#Moose JEE
Moose JEE is an extension of [Moose](http://moose.unibe.ch) to analyze Java Enterprise applications. Moose JEE is still in a early stage of development but if you want try it please follow the instructions in the download section and please contact me for any question or suggestion about it.

#Download

Choose below among the supported downloads:


##Install from Monticello into a Moose suite release


-  Download and install [Moose 4.1](http://www.moosetechnology.org/download)
-  Launch the Moose image:
	-  Mac: launch the app file;
	-  Linux: launch .app/moose.sh
	-  Windows: launch .app/moose.exe

-  Open a Workspace and execute the following code:
```
Gofer new
	squeaksource: 'MooseJEE';					
	package: 'ConfigurationOfMooseJEE';				
	load.								
(Smalltalk at: #ConfigurationOfMooseJEE) 
	perform: #loadVersion11
```


##Install from Monticello into a Moose image


-  Download and install [Moose 4.1](http://www.moosetechnology.org/download/pharo) from Monticello
-  Launch the Moose image
-  Open a Workspace and execute the following code:
```
Gofer new
	squeaksource: 'MooseJEE';					
	package: 'ConfigurationOfMooseJEE';				
	load.								
(Smalltalk at: #ConfigurationOfMooseJEE) 
	perform: #loadVersion11
```


##Install the last development


-  Download the last nightly build development image of [Moose](http://www.moosetechnology.org/download)
-  Launch the image
-  Open a Workspace and execute the following code:
```
Gofer new
	squeaksource: 'MooseJEE';					
	package: 'ConfigurationOfMooseJEE';				
	load.								
(Smalltalk at: #ConfigurationOfMooseJEE) perform: #loadDefaultWithoutMoose
```


#Videos


-  Watch the video about the installation of MooseJEE and how to import a model

<object width="400" height="300"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=13394631&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" /><embed src="http://vimeo.com/moogaloop.swf?clip_id=13394631&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="400" height="300"></embed></object><p><a href="http://vimeo.com/13394631">Moose JEE Install and Import</a> from <a href="http://vimeo.com/user4283140">Fabrizio Perin</a> on <a href="http://vimeo.com">Vimeo</a>.</p>


-  Watch how to assess the transaction scope into Java Enterprise applications using MooseJEE.

<object width="400" height="300"><param name="allowfullscreen" value="true" /><param name="allowscriptaccess" value="always" /><param name="movie" value="http://vimeo.com/moogaloop.swf?clip_id=13395402&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" /><embed src="http://vimeo.com/moogaloop.swf?clip_id=13395402&amp;server=vimeo.com&amp;show_title=1&amp;show_byline=1&amp;show_portrait=0&amp;color=&amp;fullscreen=1" type="application/x-shockwave-flash" allowfullscreen="true" allowscriptaccess="always" width="400" height="300"></embed></object><p><a href="http://vimeo.com/13395402">MooseJEE Transaction Scope assessment</a> from <a href="http://vimeo.com/user4283140">Fabrizio Perin</a> on <a href="http://vimeo.com">Vimeo</a>.</p>

#Contact


- Main Contact: Fabrizio Perin <a href="mailto:perin@iam.unibe.ch">perin@iam.unibe.ch</a>
 [web page](%base_url%/staff/fabrizioperin)
