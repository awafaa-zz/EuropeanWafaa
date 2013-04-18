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

Now open config.ini in your preferred editor.

The key items to change are:

```db.host=```
