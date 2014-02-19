---
title: When Geekos with ARMs get together
author: Andrew Wafaa
layout: post
kind: article
created_at: 2012-02-23
permalink: /when-geekos-with-arms-get-together/
dsq_thread_id:
  - 586725533
categories:
  - ARM
  - openSUSE
tags:
  - ARMv5
  - ARMv7
  - Beagleboard
  - Community
  - Discussion
  - Origen
  - Pandaboard
  - Snowball
  - XFCE
---
# 

I’m here in the belly of the Geeko at SUSE’s offices in Nuremberg, due to the fact that the new openSUSE [Board][1] had their Face to Face meeting yesterday (whole different topic needing its own post ;-) ). As I was coming here I thought it would be prudent to try and get the various people dealing with and interested in the ARM port around a table at some point to discus the status of things. Yes, I know there are several people missing from the discussion – like those in the Prague office, and those not employed at SUSE – but getting everyone together will have to wait until the openSUSE Conference later this year :-) . Thanks to Bernhard who cajoled folk, we just finished having a fairly productive meeting.

 [1]: http://en.opensuse.org/Board "The openSUSE Board"

The intention of the meeting was to try and get some form of milestones agreed, and work out our next moves and find out what tasks etc need to be done.  Several decisions were made:
1. ARMv7 is the focus. This isn’t necessarily news, but we just wanted to reiterate the message. Also the ARMv5 builds are going to have their priorities in the OBS lowered to minimise the build power consumption. We’re not deleting them,  just not focusing on them; if someone **really** wants v5 builds then best you roll your sleeves up and get stuck  in, we will provide support, guidance and encouragement.

2. We are aiming for 12.2 to have full ARM support. So this means we need to freeze in time for 12.2 RC1, so we can not have any build failures. If there are we need to fix them, but some applications are known not to run on ARM, where these are identified we will just use `ExcludeArch: %arm`. This needs to be done by 01June2012 at the latest.

3. To ensure we can make the deadline we need to make sure that all sources are submitted into Factory via the respective devel projects. This means that we have no source overlays in the openSUSE:Factory:ARM repo. Also that all hacks and “fixes” are discussed with maintainers and either incorporated or better fixes are submitted. We will **NOT** have separate sources or patches for the ARM port, everything will have to be in Factory.

4. We need to have a reference platform that **ALL **developers can use to verify 12.2 will work, this will be the Pandaboard. This does not mean we will not be supporting other devices, like Snowball, Beagleboard or Origen; they will be available but they may not have gone through the same rigorous tests. We will also look at having XFCE as the reference platform Desktop Environment. Now before anyone starts calling for blood, there were some reasons for refernece platform decision:

*   a.) There are sufficient numbers of Pandaboards for developers to use
*   b.) Pandaboard has the best upstream support out of all the devices
*   c.) We already have Kiwi based images for it
*   d.) XFCE is the only DE that builds almost completely and runs at the moment
*   e.) 2D graphics work out of the box on the Pandaboard

5. openSUSE’s ARM port has gone on a diet. The Geeko is now FATless, this means we no longer have a separate FAT partition for the boot file system. All partitions are now ext3 by default, BTRFS is supported but isn’t our default.

6. The Kiwi generated images will use the OEM format rather than the Live Install format. Basically this means that a user will `dd` the image to the target SD card and then the “second boot” process will kick in when a user boots from the card so that they can configure passwords/network/etc and it will repartition to take up the whole of the card.

7. Bernhard is going to look at integrating ARM support into [OpenQA][4]. This means we can get advance notice of breakages etc. prior to releasing images.

 [4]: http://openqa.opensuse.org/ "Q&A in the open"

8. We will be triggering a rebuild of the ARM repo to ensure that builds take into account some of the big changes that have happened in Factory (like the Xorg changes), and also to clean out any “fixes” that were applied to the repo. This will most likely be initiated in batches rather than the complete repo, hopefully we can avoid the repo being out of commission for four weeks this way.

Another outcome of the meeting was working out some tasks that needed to be completed. There aren’t that many tasks and they are open to **EVERYONE** to help out with: 
* I.) We need to keep a closer eye on the package failures. Using Dirk’s [Build Comparison page][5] will help to isolate failures due to qemu. All qemu bugs/issues need to be passed on to either Alexander Graf (agraf) or Andreas Farber (afarber) for fixing.

 [5]: http://www.suse.de/~dmueller/arm-buildservice/ "Compare Native/Qemu/IBS/OBS builds"

* II.) We need to look at YaST’s second stage module and see if that will be of use to the ARM port.

* III.) We really need to re-work the wiki for the ARM port. It needs to be much more detailed as it hasn’t been updated in a while.

So that gives us three months or 12 weeks to get our house in order. If you want to see openSUSE get a decent release on ARM, then join in and help out!! You don’t need to know packaging/architecture/code to help, jump on IRC (#opensuse-arm on Freenode) or send a mail to the mailing list (opensuse-arm make sure you subscribe first) and ask questions and get your hands dirty ;-)
