---
title: openSUSE ARM Port update 21122011
author: Andrew Wafaa
layout: post
kind: article
created_at: 2011-12-21
permalink: /opensuse-arm-port-update-21122011/
dsq_thread_id:
  - 580314384
categories:
  - ARM
  - openSUSE
tags:
  - ARMv7
  - Beagleboard
  - EfikaMX
  - Pandaboard
  - Porting
  - Snowball
---
# 

It’s been almost a month since the last ARM porting update so here’s a little christmas present to you all.

Dirk Müller [sent][1] out a status update to the mailing list, but I thought it would be a good idea post here for you scoundrels that aren’t subscribed :-) 

 [1]: http://lists.opensuse.org/opensuse-arm/2011-12/msg00017.html

Thanks to some great work by loads of people including (but not limited to) Alex Graf, Adrian Schröter, Dirk Müller, Marcus Schäfer, Joop Boonen openSUSE’s ARM port has come along nicely.  We are now at about 4200 successful packages out of a total of around 4700 for a complete distro, an increase of roughly 700 packages.

There are some localised issues for ARM but they are much much fewer than before. As we are building against Factory we naturally are affected by Factory’s occaisional desire to break for the sake of breaking, but again those breakages are realtively few.

Marcus has managed to get Kiwi support to build ARM images (with a patch or two from Joop); Kiwi can run on Pandaboards, and also generate suitable images for for Pandaboards – the other boards and devices will come later. Alex, Dirk and Adrian have been busy beavering away as usual with package fixes, improvements to qemu and general OBS tweaks; they have also got the internal ARM OBS instance into a great shape, this is distributed between the Nürnberg and Prague offices and the nodes comprise of EfikaMX, Pandaboard & Beagleboard. It basically builds factory in parrelel to the public OBS but generally is more successful due to running on native hardware, whereas the public instance uses qemu which sometimes doesn’t want to play nicely in the playground; we (well OK Alex) can then look at getting a fix for qemu or we import the succesful package into the OBS can move on. I’m still battling with kernels for the Snowball, but I think I’m almost there.

One of the bigger issues we have is that there is no graphics support, if you think graphics issues on x86 based systems is a pain wait till you look at it on ARM! ;-) This is being worked on so it’s just a matter of time, there are ways and means around it but they are far from elegant.

As everyone likes videos, Joop has created another great [video][4] showing openSUSE running on a Pandaboard (Joop uses one of those aforementioned ways & means to get graphics working) and Michal Hrušecký has a [video][5] showing openSUSE on his Asus Transformer Tablet (yes it’s still in a chroot but look at that ncurses yummyness :-) )

 [4]: http://www.youtube.com/watch?v=s7iG06hJzGI
 [5]: https://plus.google.com/113898425601074911439/posts/2DmvCRCWCyP?hl=en-GB

Just to remind you that you will be able to see first hand some of the ARM porting goodness at FOSDEM in Febuary so make sure you come along ;-) Till the next update, have a fun and Geeko filled time.
