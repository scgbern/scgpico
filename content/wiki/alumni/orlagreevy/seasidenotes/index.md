---
Title: Seaside Notes
---

##Loading Seaside by hand....

SqueakMap Installer


-  Left-click on the background to bring up the World Menu. Choose open and then SqueakMap Package Loader.
-  Select update map from the net from context menu in the list at the top left (The little box above the scroll bar in the first pane).
-  Select the package Seaside and choose "install" from the context menu.
-  Answer any question to load dependencies with yes ( You want to load the Kom server, scriptaculous, Comet, RSS Support).
-  Provide a username and password for the administration interface, when requested.

##Starting Seaside Server


-  Evaluate WAKom startOn: 8080 (or some other port of your choice) in a Workspace.
-  Point your browser to the Seaside configuration interface at http://localhost:8080/seaside/config. The username and password you entered while loading Seaside will be required.

[SQUEAK Elements](%base_url%/wiki/alumni/orlagreevy/squeakelements)
