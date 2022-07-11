---
Title: Erik Aeschlimann
---

#**My Master Project:**
The goal is to deliver analysis tools for programming language PL/I

#**Milestones**

**M0.1: dependencies between files**


- input: directory
- output: file which lists for every program the list of other programs it calls

file content of the hierarchical structure of the program:
subsystem DB contains: YDMU900, YDMU901, YDMU902
program YDMU900 contains: YDMU900-E1, YDMU900-E2

file content of an exported dependency file:
DM5000: YDMU900,YDMU300, YDMU900-E1 (YDMU900&mdash;YDMU900-E1)
DM8000: YDMGETB

Eventually, the exported info should be in MSE format conforming to the 
FAME meta-model. Read more at: http://scg.unibe.ch/wiki/projects/fame/mse

**M0.2: hierarchical structure of the system**

**M1: Import in FAMIX/Moose**
modelling the concepts of the PL1 domain: domains, subdomains, applications,
programs, entry points

**M2: Metrics for the PL1 domain**

-  Size metric for programs
-  # entry points per program
-  # subprograms
-  # ...

**M3: Visualizing PL1 (requires: M0, M1)**


-  In Mondrian 
-  in Softwarenaut (this requires the porting of Softwarenaut to Pharo) 

\''M3/(-1)?: Showcasing the Softwarenaut views inside the company
and asking for feedback\''


#**Ressources**

SqueakSource:
[http://www.squeaksource.com/PL1Analysis.html](http://www.squeaksource.com/PL1Analysis.html)


PL/I-Version:	V3R9

IBM Language reference:	
[http://publibfp.boulder.ibm.com/epubs/pdf/ibm3lr80.pdf](http://publibfp.boulder.ibm.com/epubs/pdf/ibm3lr80.pdf)

IBM PL/I Bookshelf:
[http://www-01.ibm.com/software/awdtools/pli/plizos/library/](http://www-01.ibm.com/software/awdtools/pli/plizos/library/)
