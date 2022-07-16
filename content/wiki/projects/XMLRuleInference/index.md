---
Title: XML Configuration Rule Inference
---
#XML Configuration Rule Inference
Rule inference from J2EE XML config. files

Finding out how to write XML configuration files is often hard. 
For example, J2EE applications typically require long and detailed configuration specification files. 
In order to write these files, the user either has to start from an existing skeleton (e.g. tutorial, example, etc..) or read the official documentation. In both cases, long time is required to complete the task. 

We want to investigate whether this task can be simplified by harvesting the information coming from existing configuration files present in open source applications. In particular, we are interested in discovering usage statistics and correlation among schema elements.   

Project roadmap :

-  dataset creation: 
	-  download relevant XML files from github (based on specified XSD url)
		-  example: download all xml files compliant with:  "http://www.springframework.org/schema/mvc/spring-mvc-3.2.xsd"


-  data analysis: 
	-  extract tag/attribute/value usage frequency. Three examples follow:
		-  in spring MVC config files, 90% of the users specify the "mvc:annotation-driven" tag. 
		-  in spring MVC config files, the "mvc:annotation-driven" tag in 30% of the cases has an attribute "conversion-service".
		-  in spring MVC config files, the attribute "conversion-service" has in 20% of the cases the value "xxx". 

	-  detect tag/attribute/value usage correlation
		-  "mvc:annotation-driven" is often specified together with "mvc:default-servlet-handler"

	-  measure which tag/attributes are never practically used in config files. 	
		-  "mvc:interceptors" is almost never specified in config files


	 
 Contact: [Kirill Levitin](%base_url%/wiki/alumni/kirill) , [Haidar Osman](%base_url%/staff/Osman)
