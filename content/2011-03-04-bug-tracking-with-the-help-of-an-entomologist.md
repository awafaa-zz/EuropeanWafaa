---
title: Bug Tracking With The Help Of An Entomologist
author: Andrew Wafaa
layout: post
kind: article
created_at: 2011-03-04
permalink: /bug-tracking-with-the-help-of-an-entomologist/
dsq_thread_id:
  - 639907989
categories:
  - Open Source
tags:
  - Android
  - Bugs
  - CrossPlatform
  - Desktop
  - HackWeek
  - openSUSE
  - Qt
  - Software
---
# 

I like to think of myself as being fairly consistent, and I’ve had one request for a long time, a desktop bug tracker client. I even [asked][1]  if someone more adept in the ways of The Code could help. Unfortunately my call for help wasn’t heard :-( 

 [1]: http://www.wafaa.eu/entry/bugging-bugs---a-call-for-help-1-20.html "Help needed for a fat bug tracker"

That was until [HackWeek VI][3]  came along! Luckily [Matt Barringer][4] (from those crazy cooks in the [SUSE Studio][5] team) heard my call. He picked up his code machine gun and blasted away o/

 [3]: http://news.opensuse.org/2011/01/19/hackweek-vi/ "Novell / openSUSE HackWeek VI"
 [4]: http://en.opensuse.org/User:Mbarringer "Znggo the Entomologist"
 [5]: http://susestudio.com/ "Appliances made easy"

A few days after HackWeek VI ended he enlightened me to his new masterpiece – [Entomologist][6].  So what is it? As you may have guessed, it is a desktop bug tracker client.  It’s cutely written in Qt, isn’t final yet (is any software?) but works fairly well.  Why only fairly well? Simples, it only supports Bugzilla at the minute, but there are plans afoot to add others (please see the [ToDo][7] list). Once more bug backends are added it will be great (yes, this is a subtle hint for you to contribute code ;-) ). It is being put forward as one of the [GSOC][9] projects so fingers crossed ;-) 

 [6]: http://entomologist.sourceforge.net/ "Desktop bug tracker client"
 [7]: http://entomologist.sourceforge.net/#todo "what needs to be done"
 [9]: http://en.opensuse.org/openSUSE:GSOC_2011_Ideas#Cross_Platform_Bug_Tracker_Client "Part of openSUSE's submission"

Of course you need some obligatory screenshots, so feast your eyes :-)

![Entomologist on the desktop][11]

 [11]: https://lh6.googleusercontent.com/_ObpIMjebLDY/TXC_A6xeQLI/AAAAAAAAAOY/FDjKJM3lPV8/s912/entomologist-desktop.png

Seeing your bugs on the desktop

 

![Seeing your bugs on the move][12]

 [12]: https://lh5.googleusercontent.com/_ObpIMjebLDY/TXC_Aq_GPaI/AAAAAAAAAOU/qEmmPWywluo/s640/entomologist-android1.png

Seeing your bugs on the move.

 

Yes that’s right, entomologist works on Android!! Sure the UI is a bit butt ugly on the platform, but the app works ;-)

I’ll do a post on how I ported entomologist to Android shortly, it wasn’t too difficult.

So if you want to give it a whirl, then head over to the homepage and choose your flavour of openSUSE, Fedora, Mandriva, Ubuntu or Debian (thanks [OBS][13])

 [13]: http://en.opensuse.org/Portal:Build_Service "The openSUSE Build Service"

**UPDATE:**

For those that want to minimise the number of clicks the list of repos are:

*   [openSUSE 11.4][14]
*   [openSUSE 11.3][15]
*   [openSUSE 11.2][16]
*   [openSUSE Factory][17]
*   [SLED 11 SP1][18]
*   [Fedora 14][19] (untested)
*   [Fedora 13][20] (untested)
*   [Fedora 12][21] (untested)
*   [Mandriva 2010][22] (untested)
*   [Mandriva 2010.1][23] (untested)

 [14]: http://software.opensuse.org/ymp/home:mbarringer/openSUSE_11.4/entomologist.ymp?base=openSUSE:11.4&query=Entomologist
 [15]: http://software.opensuse.org/ymp/home:mbarringer/openSUSE_11.3/entomologist.ymp?base=openSUSE:11.3&query=entomologist
 [16]: http://software.opensuse.org/ymp/home:mbarringer/openSUSE_11.2/entomologist.ymp?base=openSUSE:11.2&query=entomologist
 [17]: http://software.opensuse.org/ymp/home:mbarringer/openSUSE_Factory/entomologist.ymp?base=openSUSE:Factory&query=Entomologist
 [18]: http://software.opensuse.org/ymp/home:mbarringer/SLE_11_SP1/entomologist.ymp?base=SUSE:SLE-11:SP1&query=entomologist
 [19]: http://software.opensuse.org/ymp/home:mbarringer/Fedora_14/entomologist.ymp?base=Fedora:14&query=Entomologist
 [20]: http://software.opensuse.org/ymp/home:mbarringer/Fedora_13/entomologist.ymp?base=Fedora:13&query=Entomologist
 [21]: http://software.opensuse.org/ymp/home:mbarringer/Fedora_12/entomologist.ymp?base=Fedora:12&query=Entomologist
 [22]: http://software.opensuse.org/ymp/home:mbarringer/Mandriva_2010/entomologist.ymp?base=Mandriva:2010&query=Entomologist
 [23]: http://software.opensuse.org/ymp/home:mbarringer/Mandriva_2010.1/entomologist.ymp?base=Mandriva:2010.1&query=Entomologist

.deb packages are also provided:

*   [(K)Ubuntu 10.10][24]
*   [(K)Ubuntu 10.04][25] (untested)
*   [Debian 6.0][26] (untested)

 [24]: http://download.opensuse.org/repositories/home:/mbarringer/xUbuntu_10.10/
 [25]: http://download.opensuse.org/repositories/home:/mbarringer/xUbuntu_10.04/
 [26]: http://download.opensuse.org/repositories/home:/mbarringer/Debian_6.0/
