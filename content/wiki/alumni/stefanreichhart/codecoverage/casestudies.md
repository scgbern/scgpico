---
Title: Case Studies
---
#Case Studies
updated: November 8, 2006

#Packages (from SqueakSource)

| | | | | | |
|---|---|---|---|---|---|
|  coverage subject | coverage in % | time (1) | # methods (2) | # test-cases (2) | Notes 
| Aconcagua | 65 % | 1:00 | 800 | 400 
| Chronos | ? % | | | | install of environment meesed up the image, selectors missing, ...
| Cryptography (core only) | 27 % | 4:00 | 77 | 31 | 
| Cryptography (complete) | ~40 % (3) | 5:00 | 1680 | 31 | #encrypt is mostly fully-covered, but #decrypt not, no tests for SSL?
| Eg | 10% | 0:20 | 365 | 30
| Files | 15 % | 1:00 | 900 | 83 
| Flash-Support | 5 % | 0:10 | 120 | 2
| Geography | 5 % | 0:10 | 120 | 2
| Goods | 1 % | 0:10 | 338 | 12 | all tests have errors -> no db; instrumenting class-extension-methods causes Christo to crash the image &mdash;> CHECK !!!
| Graphics | 15 % | 20:00 | 2250 | 
| Herd Behavior | 56 % | 0:15 | 10 | 4
| HexConverter | 26 % | 0:10 | 23 | 3
| ICal | 25 % (F) | 1:00 | 1155 |124 |
| IntelligentGames | 65 % | 1:00 | 125 | 83
| Java | 38 % | 5:00 |  1654 | 12 | tests run quite slow
| Magritte (model only) | 56 % | 1:30 | 850 | 1600
| Math Quaternion | 55% | 0:10 | 56 | 4 |
| Metaspin | ? % | ? | 98 | 14 | tests run extremely slow with instrumentation
| MethodCategoryNotifications | 35% | 0:05 | 27 | 7 |
| Mondrian | 16 % | 0:05 | 440 | 6 
| Monticello | ? % | - | 1600 | 115 (don't run)
| MSE-Exporter | 56 % | 0:30 | 120 | 28 | 1 error, 2 failures
| Nebraska | 5 % | 0:30 | 720 | 4 
| Network-Standard | 15 % | 0:40 | 1400 | 100
| Network-IRC | 18 % (F) | 1:00 | 606 | 14 | only tests for profile and server
| NetworkHTML | 1 % | 0:10 | 450 | 1  
| ObjectAsMethodWrappers | 35 % | 0:20 | 35 | 2
| OB-Standard | 50 % | 5:00 | 540 | 230
| Omnibrowser | 60 % | 6:00 | 1000 | 200 
| OpenDocument | 50 % | : | 460 | 40 | no "primitive" tests
| PatRecLecture | 55 % | 0:05 | 40 | 1 
| RefactoringEngine | 30 % | 30:00 | 2200 | 300 
| RoelTyper | 45 % | 0:10 | 170 | 70
| Saphir | 32 % | 0:10 | 149 | 2 | problems while loading package, some tests might omitted (?)
| Scheme | 53 % | 0:10 | 200 | 16
| Smallwiki-Kernel | 20 % | 10:00 | 2320 | 250
| Syslog | 61 % | 0:05 | 77 | 10
| TestSmells (core only) | 66% | 3:00 | 269 | 383
| Tsunami | 75 % | 0:20 | 50 | 20
| Yaxo, XML Parser Tools | no tests ? | - | - | - 

(1) aproximated, on a Powerbook G4 1.21 (2003) using ByteSurgeon-Adaptor
(2) approximated
(3) this package is composed by multiple subpackages, coverage for the super-package is calculated by averaging the coverage value of the subpackages
(F) failures while running tests

# Results (see above) ...

-  accessors and smaller utility methods are mostly well-covered, however some accessors don't have coverage at all -> they're not used in the class implementation (variables are accessed directly)
-  very small methods (up to 2 lines) mostly don't have their own tests and/or have no coverage
-  core behavior is less-well tested, probably due higher test complexity 
-  complex or very abstract behavior is badly tested or not at all
-  coverage is mostly missing for very small classes (max of 10 methods)
-  most coverage-items have either no or 25% to 65%, only a few have more than 85%, even less have 100%
-  class side behavior is mostly untested/uncovered, except instance creation methods (implicitly covered)
