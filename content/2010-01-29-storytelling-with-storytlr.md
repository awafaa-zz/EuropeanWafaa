---
title: Storytelling with Storytlr
author: Andrew Wafaa
layout: post
kind: article
created_at: 2010-01-29
permalink: /storytelling-with-storytlr/
dsq_thread_id:
  - 682165851
categories:
  - Open Source
tags:
  - openSUSE
  - Server
  - Software
  - Web
---
# 

I thought it would be wise to document how I installed [Storytlr][1] as I feel the official [documentation][2] doesn’t list everything.

 [1]: http://code.google.com/p/storytlr/ "Life streaming"
 [2]: http://code.google.com/p/storytlr/wiki/Install "Storytlr official documentation"

The basic requirements to get storytlr working are – Apache, MySQL, PHP5 (with php5-tidy, and php5-mcrypt).  So once you have the basic system requirements met, the next step is to download the latest stable release from [here][3] and extract the tarball in your target directory.

 [3]: http://code.google.com/p/storytlr/downloads/list "Download storytlr"

So in your virtual host file make sure you have enabled 

```AllowOverride```

(I set mine to ALL), this will mean that apache takes note of the .htaccess.  I also had to add 

```Options FollowSymlinks```

to the .htaccess, just underneath .

Next create your database using your preferred method (phpmyadmin/mysqladmin/voodoo).  Once created you need to populate it with the basic info, so 

```cd $PATH/TO/INSTALL/protected/install/```

and run

```mysql -u $USER -p -D $DB_NAME < database.sql```

So the database is ready and waiting for you now, next step is to edit the basic config information.

There is a sample file ready for you to edit, so first thing is 

```cd $PATH/TO/INSTALL/protected/config/```

and copy the sample 

```cp config.ini.sample config.ini```

Now open config.ini in your preferred editor. The key items to change are:

* ```db.host=```  <—you can leave this if your database is running on the same host as you web server.
* ```db.username=```  <–enter the database username for the storytlr database.
* ```db.password=```  <–enter the database user password for the storytlr database.
* ```db.dbname=```  <–enter the database name for the storytlr database.
* ```security.cookie=```   <–you can replace all or part of this if you wish, just make it different to what is there already.
* ```web.host=```  <–enter your desired web url without the http:// (i.e. stream.geeko.org).
* ```web.timezone=```  <–put your desired/local timezone.
* ```debug=```  <–it is advisable to change this to 1.  It will help you when you run into issues.
* ```flickr.api_keys=```  <–you will need to add your api key here if you wish to use the flickr module.  You can get your key by heading [here][4] 
* ```twitter.username=```  <–add your twitter credentials if you want items * to be posted to twitter (i.e. blog entries/etc)
* ```twitter.password=```  <–add your twitter credentials if you want items to be posted to twitter (i.e. blog entries/etc)
* ```gmap.key=```  <– same as flickr you need to add your api key here to use the map functionality.  You can get your key from [here][5]
* ```default.timezone=```  <–again change it to your preferred/local timezone. If you’re not sure you can leave the default and change it via the admin panel.
* ```default.timezoneid=```  <–again change it to your preferred/local timezone.  If you’re not sure you can leave the default and change it via the admin panel

 [4]: http://flickr.com/services/apps/create/apply/ "Flikr key generation"
 [5]: http://code.google.com/apis/maps/ "Google Maps key generation"

Finally make sure you web server has the correct permissions to access the files

```chown -R wwwrun:www $PATH/TO/INSTALL``` (replace ```wwwrun:www``` with whatever your distro uses if not on openSUSE).

So once all that is done just head over to your new site.  You can log in via the little key icon in the top right or just append /admin to your url.  The default credentials are 

```user=admin password=storytlr``` 

please make sure you change the password once logged in.

So that’s the install done, what about making sure the feeds saty up to date?  Well the only way of doing that is to set up a cronjob, not painful at all but not as automated as I’d have liked.  I’ve chosen to update every 7 minutes because there is so much going on in my web 2.0 life :-P

So basically choose your timing for updating your streams, and then run the update.php script located in the protected/tools directory telling it which user to update for.  My cronjob looks like:

```*/7 * * * * php5 $PATH/TO/INSTALL/protected/tools/update.php admin ```

There are several additional plugins available:

* [Github][6] 

* [Goodreads][7] 

* [Foursquare][8] 

 [6]: http://github.com/jmhobbs/storytlr-plugin-github "Storytlr Github Plugin"
 [7]: http://github.com/jmhobbs/storytlr-plugin-goodreads "Storytlr Goodreads Plugin"
 [8]: http://github.com/jmhobbs/storytlr-plugin-foursquare "Storytlr Foursquare Plugin"

Each plugin has instructions on how to install, but they are pretty simple.  In essence you’ll need to do a git clone of the repository housing the plugin, rename the directory, add the database entries to you installation, copy the icon to the images directory, and off you go!  If you are interested in creating a new plugin, I recommend you look at John Hobbs’ little [guide][9].

 [9]: http://www.velvetcache.org/2010/01/19/writing-a-plugin-for-storytlr "Writing a plugin for Storytlr"

[Ryan Paul][10] of Ars Technica and Gwibber fame did a [piece][11] on storytlr which pushed me to trying it.  As you can see from Ryan’s site he has implemented a few modifications like tangofying the icon set, and also looks like he created a Launchpad plugin.

 [10]: http://seg.phault.net/ "The home of Segphault"
 [11]: http://www.wafaa.eu/admin/post/edit/source/1/item/arstechnica.com/open-source/guides/2010/01/make-your-own-lifestream-with-open-source-software.ars "Ars Technica article on Storytlr"

I have a few issues but none of them are in anyway show stoppers, and I'm actually enjoying the simplicity of it all :-D


