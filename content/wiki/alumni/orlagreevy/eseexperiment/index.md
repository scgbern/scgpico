---
Title: ESE experiment
---
#ESE experiment
## Versions


-  moosedevelopment  3.0.48, girba
-  mondrian 1.2.209,girba
-  mondrian paintings 1.2.116
-  CodeFoo 0.241
-  Chronia 1.164.girba.4,kuhn
-  AareTraceScraper Development 4.520.12,greevy
-  AareTraceScraperVan 

## Importing the CVS Log

client := 'pserver(doppelpunkt)anonymous(at)xxx.aaa' asURI
newClient.
cvsmodule := client checkoutHistoryFromFile: '/Users/greevy/ESE/phonesim_ese2.log' asFilename.
project := ChroniaProjectBuilder new fromCvsDirectory: cvsmodule.

the model in moose will be named using the string in the cvs log file. To change the name do a replace all of the directory string to the new name.

## Moose Model

/Users/greevy/ESE/phonesim.cdif

## Loading The Traces

/Users/greevy/ESE/ese-traces/phonesimese3

run the tests in ImporterTests>OpaxTests/esephonesim3

(14 test cases)

for esephonesimese1 separate tests

## Getting the cvs logs

stored in ESE/cvslogs

the cvs repositories are copied to macduffee in esetmp

the checkout command is: cvs -d ~/esetmp/ese1 co phonesim

To get the cvs log do: cvs -d ~/esetmp/ese1 log phonesim >phonesimese1.log
 
##Pictures


-  saved at /Users/greevy/ESE/phonesim-pictures

##Creating teams 

Create the teams by selecting the option on the traces menu
