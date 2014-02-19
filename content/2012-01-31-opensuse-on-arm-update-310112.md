---
title: openSUSE on ARM Update 310112
author: Andrew Wafaa
layout: post
kind: article
created_at: 2012-01-31
permalink: /opensuse-on-arm-update-310112/
dsq_thread_id:
  - 580314349
categories:
  - ARM
  - openSUSE
tags:
  - Packaging
  - Porting
---
# 

It’s been a little over a month since the last update and as always there has been progress :-) First let’s get some of the numbers out of the way, currently we have 4202 packages built successfully, with 120 failed which is leading to 582 unresolvable. Remember this is for a full openSUSE Factory (12.2) build. Not bad, but we still have a way to go if we want to have an ARM port ready for 12.2′s release – yes that is our hope and intention. Some of those packages that have built successfully still need tweaking, as an example mkinitrd and perl-Bootloader.

There has also been a change to the internal native build farm. This was what had been set up with the sponsored hardware to do a parralel build of Factory to verify that QEMU was indeed doing the job properly. It was previously setup using an development OBS instance for speed and as a proof of concept really. The internal native ARM build farm has now been moved to the IBS, this is the internal production instance that is used to many of SUSE’s products. One of the advantages is that is has very good performance including uptime and is pretty stable compared to the sometimes unstable development instance that was used.

One of the reasons for this move to be made possible is that the team working on the ARM port have been able to sufficiently show that it is possible to build almost the complete distro for the ARM architecture and that it is maintainable. It is still ***NOT*** an official port and as such there is no commitment to make it an official product, but (yes there’s always a but :-) ) it is a good showing that we are sufficiently advanced and that there is little holding us back, including dropping the many dirty hacks that were put in place to get things going.

Other than the uptime and performance advantage, moving to IBS also allows other interested developers within SUSE’s network to quickly check out builds, submit patches or debug things on native hardware. It is still requested that submissions are made against the delopment projects within OBS but this way people can test there submissions before they get pushed out.

Another of the advancements since last time is that we now have working Kiwi based images for both the Pandaboard and Efika MX Smartbooks/Smarttops. The Efika images even have working graphics and sound o/ We are still working on ironing out the build failures which will clear the unresolvable backlog slowly but surely. there will still be some packages that need deeper fixes, but they shall be conquered.

It isn’t all rosey though, that would be boring. Several things are still outstanding (apart from fixing packages), we still have no integration with the distribution and there are plenty of issues with hardware-near items, so we have plenty of work to do. Saying that though there are more people joining in the fray using not only hardware that we have but also using their own ARM hardware to get some of the latter fixed. Part of the issue with hardware-near components is the state of the ARM kernel, each SoC still needs its own kernel until Device Tree is ready. So we don’t plan on sitting back and sleeping, but more help is always welcome ;-)

To enable wider access to building on ARM there are several initiatives underway, one of them is to wait for the new Cortex-A15 based SoCs which will have full hardware support for the likes of KVM; but that’s still a few months away before the first boards are available so other options are being investigated. Once something has been found and works hopefully we can have native arm builds on the OBS, but as I said that is still on the horizon and is a mid term goal at the earliest.

Much of this would not have been possible without the very kind sponsorship of devices from Genesi, Pandaboard.org/Texas Instruments, ARM and the openSUSE community. Also the hard work of the many members of our community; I’m going to try and name a few here and it is by no means an exhaustive list of people – Alex Graf, Adrian Schroeter, Dirk Muller, Marcus Schaefer, Bernhard Wiedemann, Michal Hruseky, Joop Boonen, Andreas Farber, Reinhard Max, Uli Hecht, Matthias Eckermann, Torsten Duwe and Tomas Cech. We have also had a load of help from engineers of Genesi themselves, ST-Ericsson, Linaro and also we would not have been able to get so far without much of the work that Ubuntu, Mer and Fedora have done. On behalf of the wider openSUSE Community, thank you to all of you!
