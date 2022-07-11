---
Title: Screenshots
---

#Standard Browsers included in "Christo"


-  [Coverage Config](http://www.iam.unibe.ch/~reichhar/christo/browser_coverageconfig.png)
	-  in case you want to specify the technology and kind of data used for collecting coverage information



-  [Coverage Browser (1/2)](http://www.iam.unibe.ch/~reichhar/christo/browser_coverage_source5.png)
	-  coverage browser with "quick-actions" and a 5th panel to browse tests executing the selected source-behavior



-  [Coverage Browser (2/2)](http://www.iam.unibe.ch/~reichhar/christo/browser_coverage_test5.png)
	-  5th panel works also for tests, showing the source behaviors beeing covered



-  [Partial Ordering](http://www.iam.unibe.ch/~reichhar/christo/browser_partialOrdering.png)
	-  small browser to access partial order information using the relations "=>", "\==", "<<"


#Visualization using Mondrian for Squeak (lr-22):


-  [Source Coverage](http://www.iam.unibe.ch/~reichhar/christo/mondrian_sourcecoverage.png)
	-  each box represents a "source"
	-  this might be a package, a class-category, a class, a method category or a method  (=everything not beeing a test) 



-  [Partial Ordering](http://www.iam.unibe.ch/~reichhar/christo/mondrian_partialordering.png)
	-  normal tests are connected using <font color=blue>blue</font> lines
		-  INBOUND ~ "covered by" ~ "<<"
		-  OUTBOUND ~ "is covering" ~ "=>"

	-  equivalent tests (behavior only) are connected with <font color=red>red</font> lines



-  [Test Complexity](http://www.iam.unibe.ch/~reichhar/christo/mondrian_testcomplexity.png)
	-  each box represents a "test" (=the opposite of a source, see above)
	-  color: number of source-behaviors covered by that test
	-  width: number of assertion statements
	-  heigth: number of codelines


#Visualization using GraphViz for Squeak:


-  [Partial Ordering](http://www.iam.unibe.ch/~reichhar/christo/graphviz_partialordering.png)
	-  should be self explaining ;)

