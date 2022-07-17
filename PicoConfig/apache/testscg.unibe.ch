
<VirtualHost *:80>

	RewriteEngine On
	ProxyPreserveHost On

	ServerName testscg.unibe.ch
	ServerAdmin scg@inf.unibe.ch

	# error logs
	ErrorLog /var/log/apache2/testscg-error.log
	CustomLog /var/log/apache2/testscg-access.log vhost_combined

	# normalize the domain
	# RewriteCond %{HTTP_HOST} !^$

	# RewriteRule ^/softwarenaut(.*)$ http://localhost:8087/softwarenaut$1 [proxy,last]
	RewriteRule ^/softwarenaut(.*)$ http://yogi.inf.unibe.ch:8087/softwarenaut$1 [proxy,last]

	RewriteRule ^/scgbib(.*) /assets/scgbib$1 [proxy,last]
	RewriteRule ^/archive(.*) /assets/archive$1 [proxy,last]
	RewriteRule ^/download(.*) /assets/download$1 [proxy,last]
	RewriteRule ^/files(.*) /assets/files$1 [proxy,last]

	# static files
	DocumentRoot /srv/testscg.unibe.ch/pico-release-v2
	<Directory /srv/testscg.unibe.ch/pico-release-v2>
		Order allow,deny
		Allow from all
		# Enable server side includes!
		Options Indexes +IncludesNoExec FollowSymLinks MultiViews ExecCGI
		AddHandler server-parsed .html
		AllowOverride All
	</Directory>

</VirtualHost>

