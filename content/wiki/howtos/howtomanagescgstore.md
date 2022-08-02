---
Title: How to manage scgStore
---
#How to manage scgStore
##How to log in to scgStore?

-  In the Store menu of the launcher, choose 'Connect to Repository'. A dialog pops up where you have to fill in information for connecting to a Store database.
-  Provide the following information:
	-  Interface: select PostgreSql from the dropdown box
	-  Environment: type (without the quotes!): 'db.iam.unibe.ch:5432_scgStore'
	-  User Name: storeguest (if you have one, put yours)
	-  Password: storeguest (if you have one, put yours)

-  Connect
-  To access the SCG Store do the following In the Store menu of the launcher: Store -> Published Items

##How to add a user to scgStore?

-  log in as scg on db.iam.unibe.ch
-  do: 'module load postgres'
-  do: 'createuser -D -A -P' (this prompts for username and password)
-  If the user needs write access to store
	-  use psql scgStore and "alter group storeusers add user <i>username</i>;"

-  open a Visualworks image and connect to the scg store using the user 'scg' with the regular password. This is the administrator user for the scgStore.
-  go to Store>Administration>User/Group Management.
-  in the application, add the user under the correct heading (e.g. probably scg)

##How to add a database?

-  log in as scg on db.iam.unibe.ch
-  do: 'module load postgres'
-  do: 'psql' and in that command-line program execute 'CREATE DATABASE XYZ'
-  to correctly initialize the tables open an image with a loaded Store-parcel and execute in a workspace 'Store.DbRegistry installDatabaseTables'
