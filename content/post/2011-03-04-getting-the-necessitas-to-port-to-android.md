---
title: "Getting The Necessitas To Port To Android"
date: 2011-03-04
topics:
  - Android
  - openSUSE
categories:
  - Android
  - openSUSE
tags:
  - Porting
  - Qt
  - Software
---
So as I mentioned [earlier][1] I managed to port [entimologist][2] to Android. This post will hopefully explain how I did this.

 [1]: /post/2011-03-04-bug-tracking-with-the-help-of-an-entomologist "Bug Tracking With The Help Of An Entomologist"
 [2]: http://entimologist.sourceforge.net/ "Entomologist Bug Tracking Client"

The shopping list for this task is relatively straight forward:

*   [Android SDK][3]
*   [Android NDK][4]
*   Java development files (on openSUSE I use java-1\_6\_0-sun-devel)
*   [ant][5] (on openSUSE ant is too old, I use the [binary tarball][6] from the Apache site)
*   Qt Creator for Android SDK a.k.a [Necessitas][7]
*   Not necessary but could be helpful – [Eclipse][8] (on openSUSE don’t use the packages available as there are things missing that prevent building for android, use the [binary tarball][9] from the Eclipse site)
*   [Ministro][10]

 [3]: http://developer.android.com/sdk/index.html "Android Software Development Kit"
 [4]: http://developer.android.com/sdk/ndk/index.html "Android Native Development Kit"
 [5]: http://ant.apache.org/ "Apache Ant"
 [6]: http://ant.apache.org/bindownload.cgi "Grab the latest binary tarball"
 [7]: https://sourceforge.net/p/necessitas/home/ "Qt Creator for Android"
 [8]: http://www.eclipse.org/ "Java IDE"
 [9]: http://www.eclipse.org/downloads/packages/eclipse-ide-java-developers/heliossr2 "Grab the binary tarball"
 [10]: https://sourceforge.net/projects/ministro.necessitas.p/files/ "Qt libraries for Android"

First thing I had done was install and setup Eclipse, I then setup the Android SDK & Android NDK – that was done months ago. See the Android Developer site for good, clear instructions.

For setting up Necessitas, I used Alessandro’s [post & video][11] as a guide, but there are also details on Necessitas’ site.  After following the steps, I couldnt quite get things working, and I was starting to think that GNOME3 and Qt, were being children and bickering. No, they weren’t. It was me being a dufus! I hadn’t read the bit about ant needing to be >=1.8.0 :-) Download Ministro to somewhere safe (I popped mine in /opt/necessitas)

 [11]: http://labs.qt.nokia.com/2011/02/28/necessitas/ "Clear instructions for Necessitas"

So to get things to work, I un-installed the ant rpm, extracted the bibnary tarball into ~/bin, and did a `sudo ln -s ~/bin/apache-ant-1.8.2/bin/ant /usr/bin/ant`

Now I wont pretend to know WTF I’m doing with Qt, as far as I’m concerned it’s another alien language. Problem is I needed to tell Necessitas what Qt libraries entomologist needed, I had no real idea. I had a look at the source and the spec file and got some clues, so I added the ones I thought were needed. I tried a build and got further than previously (now that I had the correct version of ant!). I was now getting some weird missing library error, but I couldn’t work it out. Along comes our new [Boosters][13] member [Ismail Dönmez][14] to the rescue.  There will be a lib$APPNAME.so that is created to work out which Qt libraries you need just do a `readelf -d  lib$APPNAME.so`.

 [13]: http://en.opensuse.org/openSUSE:Boosters_team "The Thirsty Thirteen"
 [14]: http://namtrac.org/ "a.k.a cartman or divildivil"

In my case I did `readelf -d libentomologist.so` and got:

`~/workspace/Entomologist-build-android> readelf -d libentomologist.so`

`Dynamic section at offset 0x4bda8 contains 29 entries:`

 

`  Tag        Type                         Name/Value`

` 0x00000001 (NEEDED)                     Shared library: [libQtSql.so]`

` 0x00000001 (NEEDED)                     Shared library: [libQtXml.so]`

` 0x00000001 (NEEDED)                     Shared library: [libQtGui.so]`

` 0x00000001 (NEEDED)                     Shared library: [libQtNetwork.so]`

` 0x00000001 (NEEDED)                     Shared library: [libQtCore.so]`

` 0x00000001 (NEEDED)                     Shared library: [liblog.so]`

` 0x00000001 (NEEDED)                     Shared library: [libz.so]`

` 0x00000001 (NEEDED)                     Shared library: [libdl.so]`

` 0x00000001 (NEEDED)                     Shared library: [libm.so]`

` 0x00000001 (NEEDED)                     Shared library: [libc.so]`

` 0x0000000e (SONAME)                     Library soname: [libentomologist.so]`

` 0x00000010 (SYMBOLIC)                   0x0`

` 0x0000000f (RPATH)                      Library rpath: [/system/lib/data/data/eu.licentia.necessitas.ministro/files/qt/lib]`

` 0x00000019 (INIT_ARRAY)                 0x4c04c`

` 0x0000001b (INIT_ARRAYSZ)               8 (bytes)`

` 0x00000004 (HASH)                       0xd4`

` 0x00000005 (STRTAB)                     0x7d18`

` 0x00000006 (SYMTAB)                     0x2638`

` 0x0000000a (STRSZ)                      48318 (bytes)`

` 0x0000000b (SYMENT)                     16 (bytes)`

` 0x00000003 (PLTGOT)                     0x4ceb0`

` 0x00000002 (PLTRELSZ)                   5720 (bytes)`

` 0x00000014 (PLTREL)                     REL`

` 0x00000017 (JMPREL)                     0x154e8`

` 0x00000011 (REL)                        0x139d8`

` 0x00000012 (RELSZ)                      6928 (bytes)`

` 0x00000013 (RELENT)                     8 (bytes)`

` 0x6ffffffa (RELCOUNT)                   307`

` 0x00000000 (NULL)                       0x0`

 

It may seem obvious, but look at the ones that have (NEEDED) in them ;-) I was missing libQtXml.so. Simply add the missing Qt library either by adding it manually in $PROJECT_LOCATION > Other files > android > res > values > libs.xml, or simply tick the required one in Qt Creator by going to the Projects button on the left > Run > Package Configurations > Libraries tab

When testing your app, make sure you select “Install Ministro system wide qt shared libraries installer” from the Projects button on the left > Run > Deploy configurations, then select the .apk in the “Choose apk” button.

Once that’s done, hit the “Play” button on the bottom left of Qt Creator and off you go :-)  I appreciate it may seem like a lot of work, but honestly it isn’t that much. I buggered around for ages cursing, mainly because I hadn’t checked my version of ant and didnt read the error message being spat out. I also didn’t know about readelf -d.  All I need to work out and try now is publishing to the Market https://market.android.com/. So all in all have fun and keep being cute Qt :-D
