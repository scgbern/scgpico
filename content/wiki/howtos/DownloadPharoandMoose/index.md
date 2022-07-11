---
Title: Download Pharo and Moose from the command line
---

Both Pharo and Moose can be downloaded from the command line by using Zero Configuration scripts. [Deep into Pharo](http://rmod.lille.inria.fr/pbe2/) has a chapter dedicated to explaining these scripts. 

The code bellow, if added to the file .bash_profile, will create a series of commands that make working with the Zero Configuration scripts much easier.

1. Version using *wget*
``` alias getPharo2='wget -O - get.pharo.org/20+vm | bash'              
 alias getPharo2Image='wget -O - get.pharo.org/20 | bash'             
 alias getPharo2WithLvm='wget -O - get.pharo.org/20+vmLatest | bash'  
 alias getPharo3='wget -O - get.pharo.org/30+vm | bash'               
 alias getPharo3Image='wget -O - get.pharo.org/30 | bash'             
 alias getPharo3WithLvm='wget -O - get.pharo.org/30+vmLatest | bash'  
 
 alias getPharoVMStable='wget -O - get.pharo.org/vm | bash'        
 alias getPharoVMLatest='wget -O - get.pharo.org/vmLatest | bash'  
 
 alias getMooseLatestImage='wget -O - get.moosetechnology.org/MooseLatestImage | bash'             
 alias getMooseLatest='wget -O - get.moosetechnology.org/MooseLatestImage+vm | bash'               
 alias getMooseLatestWithLvm='wget -O - get.moosetechnology.org/MooseLatestImage+vmLatest | bash'  
 
 alias getMoose49Image='wget -O - get.moosetechnology.org/Moose49Image | bash'             
 alias getMoose49='wget -O - get.moosetechnology.org/Moose49Image+vm | bash'               
 alias getMoose49WithLvm='wget -O - get.moosetechnology.org/Moose49Image+vmLatest | bash' 
 alias getMoose50Image='wget -O - get.moosetechnology.org/Moose50Image | bash'             
 alias getMoose50='wget -O - get.moosetechnology.org/Moose50Image+vm | bash'               
 alias getMoose50WithLvm='wget -O - get.moosetechnology.org/Moose50Image+vmLatest | bash' 

 alias getMoose49Suite='wget -O - get.moosetechnology.org/Moose49Suite | bash'
 alias getMoose48Suite='wget -O - get.moosetechnology.org/Moose48Suite | bash'             
 alias getMoose47Suite='wget -O - get.moosetechnology.org/Moose47Suite | bash'            
 alias getMoose46Suite='wget -O - get.moosetechnology.org/Moose46Suite | bash'             
 alias getMoose45Suite='wget -O - get.moosetechnology.org/Moose45Suite | bash'             
 alias getMoose44Suite='wget -O - get.moosetechnology.org/Moose44Suite | bash'            
 alias getMoose43Suite='wget -O - get.moosetechnology.org/Moose43Suite | bash'  
```

2. Version using *curl*
``` alias getPharo2='curl get.pharo.org/20+vm | bash'              
 alias getPharo2Image='curl get.pharo.org/20 | bash'             
 alias getPharo2WithLvm='curl get.pharo.org/20+vmLatest | bash'  
 alias getPharo3='curl get.pharo.org/30+vm | bash'               
 alias getPharo3Image='curl get.pharo.org/30 | bash'             
 alias getPharo3WithLvm='curl get.pharo.org/30+vmLatest | bash'  
 
 alias getPharoVMStable='curl get.pharo.org/vm | bash'        
 alias getPharoVMLatest='curl get.pharo.org/vmLatest | bash'  
 
 alias getMooseLatestImage='curl get.moosetechnology.org/MooseLatestImage | bash'             
 alias getMooseLatest='curl get.moosetechnology.org/MooseLatestImage+vm | bash'               
 alias getMooseLatestWithLvm='curl get.moosetechnology.org/MooseLatestImage+vmLatest | bash'  
 
 alias getMoose49Image='curl get.moosetechnology.org/Moose49Image | bash'             
 alias getMoose49='curl get.moosetechnology.org/Moose49Image+vm | bash'               
 alias getMoose49WithLvm='curl get.moosetechnology.org/Moose49Image+vmLatest | bash'
 alias getMoose50Image='curl get.moosetechnology.org/Moose50Image | bash'             
 alias getMoose50='curl get.moosetechnology.org/Moose50Image+vm | bash'               
 alias getMoose50WithLvm='curl get.moosetechnology.org/Moose50Image+vmLatest | bash' 

 alias getMoose49Suite='curl get.moosetechnology.org/Moose49Suite | bash'
 alias getMoose48Suite='curl get.moosetechnology.org/Moose48Suite | bash'             
 alias getMoose47Suite='curl get.moosetechnology.org/Moose47Suite | bash'            
 alias getMoose46Suite='curl get.moosetechnology.org/Moose46Suite | bash'             
 alias getMoose45Suite='curl get.moosetechnology.org/Moose45Suite | bash'             
 alias getMoose44Suite='curl get.moosetechnology.org/Moose44Suite | bash'            
 alias getMoose43Suite='curl get.moosetechnology.org/Moose43Suite | bash'             
```
