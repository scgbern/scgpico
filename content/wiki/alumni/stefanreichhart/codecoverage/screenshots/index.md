---
Title: Screenshots
---
#Screenshots
#Standard Browsers included in "Christo"


-  Coverage Config
	-  in case you want to specify the technology and kind of data used for collecting coverage information



-  Coverage Browser (1/2)
	-  coverage browser with "quick-actions" and a 5th panel to browse tests executing the selected source-behavior



-  Coverage Browser (2/2)
	-  5th panel works also for tests, showing the source behaviors beeing covered



-  Partial Ordering
	-  small browser to access partial order information using the relations "=>", "\==", "<<"


#Visualization using Mondrian for Squeak (lr-22):


-  Source Coverage
	-  each box represents a "source"
	-  this might be a package, a class-category, a class, a method category or a method  (=everything not beeing a test) 



-  Partial Ordering
	-  normal tests are connected using <font color=blue>blue</font> lines
		-  INBOUND ~ "covered by" ~ "<<"
		-  OUTBOUND ~ "is covering" ~ "=>"

	-  equivalent tests (behavior only) are connected with <font color=red>red</font> lines



-  Test Complexity
	-  each box represents a "test" (=the opposite of a source, see above)
	-  color: number of source-behaviors covered by that test
	-  width: number of assertion statements
	-  heigth: number of codelines


#Visualization using GraphViz for Squeak:


-  Partial Ordering
	-  should be self explaining ;)

