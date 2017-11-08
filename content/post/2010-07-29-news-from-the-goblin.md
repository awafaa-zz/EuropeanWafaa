---
title: "News from the Goblin"
date: 2010-07-29
topics:
  - openSUSE
categories:
  - openSUSE
tags:
  - Goblin
  - MeeGo
  - Moblin
  - Smeegol
---
I thought I should let anyone that cares know what the latest status of my work is.  What work?  Getting MeeGo on openSUSE, of course!  I’m calling it Smeegol – SUSE MeeGo Linux, and this just happens to be the Teal Goblin – Teal is the code name for 11.3 ;-)

Well I’m not quite there yet (unfortunately) :-(  I have one major issue which is the Network Panel not displaying properly, and as such is difficult to use.  I also have a smaller issue with the web panel, but that is more of an annoyance rather than a blocker.

So in a nutshell that’s the state of play.  Now I’m concentrating on getting things working on 11.3 and getting a working image, but if people would like to see things get into openSUSE 11.4 then there are some low hanging fruit for people to pick up and run with.  In a nutshell before things can make it into Factory, the spec files need to be cleaned up and made to comply with the Geeko’s high standards.

So please join in the fun and have a look at the [Meego:Netbook][3] repo, and help out where you can.  I wanted to get things working first before I started to look at housekeeping.  Some packages already comply, but others most certainly don’t as they were straight imports from upstream.

 [3]: https://build.opensuse.org/project/show?project=Meego:Netbook "MeeGo Netbook on the oBS"

Oh and if you want to try Smeegol as it stands now, warts and all, you can grab the live image from [here][4]. If you’re brave (or stupid) you can get the goodness via 1Click for [11.3][5] or [Factory][6]. Yes it is 32bit only at the moment, as when packaging I had too many x86_64 errors.  Please note that the Goblin may chew fluffy bunnies, sodomise gorrilas and generally be an imp!  You can file bugs if you wish over on [BNC][7] just select the Moblin Component

 [4]: http://download.opensuse.org/repositories/Meego:/Netbook/images/iso/ "Smeegol Live image"
 [5]: http://download.opensuse.org/repositories/Meego:/Netbook/openSUSE_11.3/GoblinUI.ymp "Smeegol 1Click for 11.3"
 [6]: http://download.opensuse.org/repositories/Meego:/Netbook/openSUSE_Factory/GoblinUI.ymp "Smeegol 1Click for Factory"
 [7]: https://bugzilla.novell.com/enter_bug.cgi?format=guided&classification=28&product=openSUSE 11.3&submit=Use This Product "Bugzilla at Novell"

So please join in the fun and help clean up the Goblin :-)
