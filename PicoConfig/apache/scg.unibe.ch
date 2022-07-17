# This is the apache file for the migrated scg.unibe.ch web server hosted with Pico.
# It replaces the legacy Pier CMS-based server.
# First installed 2022-07-17 by Oscar Nierstrasz

<VirtualHost *:80>

	RewriteEngine On
	ProxyPreserveHost On

	ServerName scg.unibe.ch
	ServerAlias yogi.inf.unibe.ch
	ServerAdmin scg@inf.unibe.ch

	# error logs
	ErrorLog /var/log/apache2/scg-pico-error.log
	CustomLog /var/log/apache2/scg-pico-access.log vhost_combined

	# normalize the domain
	RewriteCond %{HTTP_HOST} !^scg\.unibe\.ch [nocase]
	RewriteCond %{HTTP_HOST} !^$
	RewriteRule ^/(.*) http://scg.unibe.ch/$1 [last,R=permanent]

	# Pico assets
	RewriteRule ^/scgbib(.*) /assets/scgbib$1 [proxy,last]
	RewriteRule ^/archive(.*) /assets/archive$1 [proxy,last]
	RewriteRule ^/download(.*) /assets/download$1 [proxy,last]
	RewriteRule ^/files(.*) /assets/files$1 [proxy,last]

	# static files
	DocumentRoot /srv/scg.unibe.ch/pico-release-v2
	<Directory /srv/scg.unibe.ch/pico-release-v2>
		Order allow,deny
		Allow from all
		# Enable server side includes!
		Options Indexes +IncludesNoExec FollowSymLinks MultiViews ExecCGI
		AddHandler server-parsed .html
		AllowOverride All
	</Directory>
	
	# Legacy moved pages
	RewriteRule ^/oscar(.*) /staff/oscar$1 [R=permanent]
	RewriteRule ^/research.html$ /research [R=permanent]
	RewriteRule ^/Resources/JExample$ /research/jexample [R=permanent]
	RewriteRule ^/wiki/((helvetia|changeboxes).*)$ /research/$1 [R=permanent]
	RewriteRule ^/wiki/oscarnierstrasz/commonwritingerrors.*$ /wiki/howtos/commonwritingerrors [R=permanent]
	RewriteRule ^/wiki/oscarnierstrasz/neversayallowtoagain.*$ /wiki/howtos/neversayallowtoagain [R=permanent]

	RewriteRule ^/wiki/p2smallwiki.*$ /teaching/p2 [R=permanent]
	RewriteRule ^/wiki/((diesel).*) /research/helvetia [R=permanent]
	RewriteRule ^/wiki/((hermion).*) /research/$1 [R=permanent]

	RewriteRule ^/wiki/codemap /research/softwarecartography [R=permanent]
	RewriteRule ^/wiki/((fame).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/wiki/((spy).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/wiki/((develect).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/((jexample).*) /research/$1 [R=permanent]
	RewriteRule ^/wiki/((jexample).*) /research/$1 [R=permanent]
	RewriteRule ^/wiki/projects/((jexample).*) /research/$1 [R=permanent]
	RewriteRule ^/wiki/((rbcrawler).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/wiki/((pimon).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/wiki/((pygirl).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/wiki/((schemetalk).*) /research/$1 [R=permanent]
	RewriteRule ^/wiki/projects/((schemetalk).*) /research/$1 [R=permanent]
	RewriteRule ^/wiki/((softwarecartography).*) /research/$1 [R=permanent]
	RewriteRule ^/wiki/((cells).*) /wiki/projects/$1 [R=permanent]
	RewriteRule ^/wiki/((codecrawler).*) http://www.inf.unisi.ch/faculty/lanza/codecrawler.html [R=permanent]

	RewriteRule ^/wiki/moose/famoosr2007.* http://moose.unibe.ch/events/famoosr2007 [R=permanent]
	RewriteRule ^/wiki/famoosr2007.* http://moose.unibe.ch/events/famoosr2007 [R=permanent]
	RewriteRule ^/wiki/moose http://moose.unibe.ch/ [R=permanent]
	RewriteRule ^/wiki/((wasdett2008).*) /wiki/events/$1 [R=permanent]
	RewriteRule ^/wiki/((woor2007).*) /wiki/events/$1 [R=permanent]
	RewriteRule ^/wiki/((woor2006).*) /wiki/events/$1 [R=permanent]
	RewriteRule ^/wiki/((suite2009).*) /wiki/events/$1 [R=permanent]
	RewriteRule ^/wiki/((phdgipfeli).*) /wiki/events/$1 [R=permanent]

	RewriteRule ^/wiki/faq/latexfaq(.*) /wiki/faq/latex$1 [R=permanent]
	RewriteRule ^/wiki/faq/mailmanfaq(.*) /wiki/faq/mailman$1 [R=permanent]
	RewriteRule ^/wiki/faq/pharofaq(.*) /wiki/faq/pharo$1 [R=permanent]
	RewriteRule ^/wiki/faq/pierfaq(.*) /wiki/faq/pier$1 [R=permanent]
	RewriteRule ^/wiki/faq/seasidefaq(.*) /wiki/faq/seaside$1 [R=permanent]

	# link as published in the ERCIM News
	RewriteRule ^/bigsoftwaredata(.*)$ /research/bigsoftwaredata$1 [R=permanent]

	# staff pages
	RewriteRule ^/wiki/((adriankuhn).*)$ /staff/$1 [R=permanent]
	RewriteRule ^/wiki/((oscarnierstrasz).*)$ /staff/oscar [R=permanent]
	RewriteRule ^/wiki/((adrianlienhard).*)$ http://www.adrian-lienhard.ch/ [R=permanent]
	RewriteRule ^/wiki/((davidroethlisberger).*)$ /staff/$1 [R=permanent]
	RewriteRule ^/wiki/((jorgeressia).*)$ /staff/$1 [R=permanent]
	RewriteRule ^/wiki/((lukasrenggli).*)$ http://www.lukas-renggli.ch/ [R=permanent]
	RewriteRule ^/wiki/((toonverwaest).*)$ /staff/$1 [R=permanent]
	RewriteRule ^/wiki/((tudorgirba).*)$ http://www.tudorgirba.com/ [R=permanent]
	RewriteRule ^/wiki/((marcusdenker).*)$ http://marcusdenker.de/ [R=permanent]
	RewriteRule ^/wiki/((markusglli).*)$ http://www.emergent.de/ [R=permanent]
	RewriteRule ^/wiki/((orlagreevy).*)$ /wiki/alumni/$1 [R=permanent]

	# proxy to experts 
	RewriteRule ^/softwarenaut(.*)$ http://localhost:8087/softwarenaut$1 [proxy,last]
	ProxyRequests Off

</VirtualHost>

