---
Title: How To
---
#How To
#"Prevent required .rb files from executing all contained SRC"
```
puts "outside clause 1"
if __FILE__ == $0
  puts "inside clause"
end
puts "outside clause 2"
```
On normal run all three outputs are written. On require '...' only first and last outputs are written, i.e. the ones not in the clause.


#**:: RSYNC ::**
```
sudo rsync -ahrv --progress fgysin@bender:/home/fgysin/bender /media/Totz/save/
```
Syncs the remote folder /home/fgysin/bender to local /media/Totz/save.
Props: archive, human readable output, recursive, verbose, progress output.


#**:: WGET ::**

```
wget -b -a wget.log --mirror -np http://mirrors.ibiblio.org/pub/mirrors/maven2/
```

-  -b		start in Background
-  -a ...		append output to log
-  - -mirror	mirror page (recursively, infinite depth)
-  -np		dont go up to parents in hierarchy


> Works fine, but Wget is slow and not capable of opening multiple connections, so one is restricted to the (small) bandwith provided from the server to a client.

```
wget -e robots=off -c --mirror --random-wait -np -U"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" https://www.ohloh.net/p/adium/
```

\+ Disguise as browser, ignore robots.txt, wait randomly...


```
 wget -e robots=off -c --mirror --random-wait -np -U"Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.0.3) Gecko/2008092416 Firefox/3.0.3" -t 5 -P /home/fgysin/sources/web/ohloh.net/try1 https://www.ohloh.net/p/vlc/enlistments
```

-  \+ specify destination folder, limit retries to 5

---


#**:: GIT ::**

```
git clone <url>
```
Clones a git repo into a new directory. Very fast.

```
git cvsimport -v -d :pserver:anonymous:@ettercap.cvs.sourceforge.net:/cvsroot/ettercap ettercap -C ettercap
```

-  -v		verbose
-  -d		set CVSROOT
-  -C		set target dit


```
git svn clone <url>
```
Grab a remote svn repo and mirror it locally with git.


---

#**:: AXEL ::**

Get a file really quick with axel... (Multiple connections and stuff.)

```
 axel -n 20 <url>
```
-  get a file from url with 20 parallel connections...


---

#**:: GEM ::**

Install a ruby lib with:
```
gem install <name-of-the-gem>
```
Mind the proxy configuration! (http_proxy and/or HTTP_PROXY should work...)

For installing the **nokogiri**-Gem one does need some extra libraries:
```
sudo apt-get install libxml2 libxml2-dev libxslt1-dev
sudo gem install nokogiri
```

**How to install rubygems-1.3.1 on debian based systems:**
- $ wget http://rubyforge.org/frs/download.php/45905/rubygems-1.3.1.tgz
- $ tar xzf rubygems-1.3.1.tgz
- $ cd rubygems-1.3.1
- $ sudo ruby setup.rb
- <a href="http://intertwingly.net/blog/2008/11/23/RubyGems-1-3-1-on-Ubuntu-8-10">link</a>


---

#**:: WIRBLE ::**
Enables tab completion and syntax highlighting for irb.

- If you haven't got tab-completion and syntax coloring in your irb, you owe it to ;yourself to follow these instructions right away (should work for Linux, OS X, ;and Cygwin users). First, install the Wirble gem:
```
sudo gem install -y wirble
```

- Next, create or edit a file called .irbrc in your home folder (~/.irbrc), and ;make sure these lines are included there:
```
require 'rubygems'
require 'wirble'
Wirble.init
Wirble.colorize
```
<a href="http://www.rubyinside.com/wirble-tab-completion-and-syntax-coloring-for-irb-336.html">link to instructions</a>
