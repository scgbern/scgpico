---
Title: Results
---


| | |
|---|---|
|Authorization | Access to the service is restricted to users having role A or being part of group B.   
|Meta-annotations | Attributes of type DateTime must be annotated with @Date(format = "d-m-Y").	                                         
|Response time | The system is time-critical and has to answer each request within 10 ms.                   					 
|Authentication | The user has to confirm his identity using the central authentication service.	              	 
|Code metrics	  | Code-coverage for unit tests must be > 85%
|Dependencies | Component A cannot invoke method X of component B.
|Signature  | A web service must provide the following API: push(Message), pull():Result.                                  
|Communication  | Communication must be synchronous. Protocol used must be HTTPS.                                              
|Software update  | New security updates must be installed within 1 week from their release.                                                             
|Data retention policy | Only the last 4 digits of a credit card number can be stored. 	  
|Availability | The system must be reachable 99% of the times from 6h00 to 20h00.	 
|Data integrity | Instance values of datatype IBAN must start with an ISO 3166-1 country code.             
|Data structure | pom.xml contains: &lt;dependency>&lt;groupId>junit&lt;/groupId>..&lt;/dependency>	         	                     
|Event handling | Exceptions of type MyEx must be handled in the layer where they were generated.        	                                    
|File location | web.xml must be located at src/main/webapp/WEB-INF/                		     
|Hardware infrastructure | The server must have 48GB RAM and 2 x 2.6GHz Intel Xeon processor.                                                          
|Throughput | The system must be able to execute a certain task 10'000 times per hour.         
|Visual design  | The web front-end must comply to the standard corporate design guidelines.                      
|Naming conventions  | Java bean classes end with the suffix ``Bean\''.       
|Recoverability | The system has to be operational again within 1h after a crash.
|Software infrastructure | Components communicate with each other using CORBA.                   		 
|Accessibility | The web front-end must be accessible to color blind users.                                                             
|System behavior  | The system state has to be consistent with a given state  machine diagram.
