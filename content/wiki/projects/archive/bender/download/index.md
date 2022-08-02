---
Title: Bender VM Download
---
#Bender VM Download
#Foreword
The Bender frontend was not tested and designed for a stable and secure deployment on a server. We therefore provide Bender as a VM package to download. Sorry for the extensive size of the image. Shrinking it resulted in some problems, which is why we finally decided against it.


---
#Installation
The Bender image can be imported as a virtual machine in [VirtualBox](http://www.virtualbox.org/). After downloading and extracting (this will take a while!) just choose File>Import Appliance and navigate to the extracted .ovf file to import the Bender image as a new virtual machine.

Please note that operations on the Bender image are prone to take a long time due to its extensive size!


---
#Content
The Bender VM packagage contains the following:

- Running Bender Tool as an Ruby on Rails project (read readme file within the VM for instructions)
-  The source code of the three bender sub projects:
	-  The Bender Core (Java) containing the Lucene Search Framework
	-  The Bender Frontend (JRuby on Rails)
	-  Bendy helper project (Ruby) with does crawling and calculation of trustability data

-  The 3 data collections which make the database of bender:
	-  Source code collection for a limited number of Java projects (indexed and searchable via Bender frontend) - total ca. 200k files
	-  Metadata base as .json files contain the meta information for about 3700 projects
	-  Trustability information calculated (also .json files) i.e., karma assessment for all developers and trustability assessment for all projects



---
#Download
[Bender VM Package](%base_url%/download/bender/final_bender_package.tar.gz) (16GB !)

[Bender VM Readme](%base_url%/download/bender/README.txt)
