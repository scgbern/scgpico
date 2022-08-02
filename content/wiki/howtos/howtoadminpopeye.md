---
Title: How to admin popeye
---
#How to admin popeye
The problem with maintaining two different svn repositories that do not run parallel but one either in the spring or the fall semester seems always to lead towards cursing about colleagues and writing a new config file.

The apache webserver provides a simple solution:

Maintain two seperate config files, one for each repository you want to run (let them be 'ese' and 'p2') and store them in the folder 

```
/etc/apache2/sites-available
```

Note that the only difference in these files are the path to the svn root directory and the svn name.

Now if you want to activate one of the svn repositories, simply use following apache command:

```
a2ensite filename
```

where filename is the name of the repository to activate.

To deactivate a running repository, use the a2dissite command:

```
a2dissite filename
```

In either case, you will have to reload / restart the apache webserver with 

```
/etc/init.d/apache2 reload
```

For example if you want to stop the running p2 repository and start the ese repository, make sure there exists a configfile named ese in the /etc/apache2/sites-available directory and use following commands:

```
a2dissite p2
a2ensite ese
/etc/init.d/apache2 reload
```
