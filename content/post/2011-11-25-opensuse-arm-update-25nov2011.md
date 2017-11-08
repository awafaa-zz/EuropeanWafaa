---
title: "openSUSE ARM Update 25Nov2011"
date: 2011-11-25
topics:
  - ARM
  - openSUSE
categories:
  - ARM
  - openSUSE
tags:
  - Beagleboard
  - Freescale
  - Nova
  - OMAP
  - Packaging
  - Pandaboard
  - Porting
  - Snowball
  - ST-Ericsson
  - TexasInstruments
---
Sorry that no news has been dished out with regards to the openSUSE ARM porting effort, but that’s mostly because things have been busy (honest!)

For starters we have now successfully built around 3500 packages out of a total of about 4700 for the full openSUSE ditribution. So we are well on our way. It hasn’t been easy going though, and we still have lots of hurdles, hoops and obstacles to overcome.

Alex Graf has been beavering away into the small wee hours getting among things lots of fixes into qemu to help with builds, fixing kernel builds that I and Adrian Schroeter created, and generally being an engineering machine.

As I mentioned Adrian Schroeter has been busy with creating as generic a kernel as possible to be used in the OBS with qemu. He has also been busy fixing packages in association with Dirk Mueller, Reinhard Max and others.

Joop Boonen built u-boot and submitted it into the relevant devel project. So we now have the means to properly boot an ARM based system.

I’ve been busy building hardware specific kernels, which I’m still learning how to do properly. As it stands we have kernels built for Freescale powered EfikaMXs, Texas Instruments powered Pandboards & Beagleboards, Nvidia powered Tegra2 devices (mainly Trimslice) and soon ST-Ericsson powered NovaThor devices like the Snowball.

Work is still on going, one really good thing is Kiwi support for ARM is being worked on. Marcus Schaefer has rolled his sleeves up and is attacking it with gusto, and making good progress. It is by no means a done deal, yet. It does show though how versatile openSUSE’s toolsets are. Hopefully it won’t be too long until we can get things working, and hey maybe even get those fine folks in SUSE Studio to add ARM as an architecture so that we can have highly customised ARM builds :-)

As I also mentioned, the kernels aren’t perfect yet. So we still need to do more testing and fine tuning. One item that was identified (by Alex of course) was that we have an issue with unwinding. There is a “hack” identified to get things working but a proper fix is still being sought.

We also have some exception handling issues which prevents us from builing Java and Java related apps which in turn are preventing us from building a lot of the remaining 1200 or so packages. We do still have some packages that need fixing which don’t require any of the exception crippled packages, so feel free to jump in ;-)

There are some areas that still need some love on ARM, like hwinfo and also our darling YaST. X drivers are also a bit of a grey area, actually they’re more likely to be missing.

All in all we still have our work cut out for us, but we are making good progress.  I can’t say when we will have working images for people to try, so don’t ask; but trust me, I will make sure to let you all know when we do. I am hoping to have something working in time for FOSDEM and hopefully show it off there.

Just to give you an idea of what we are using the hardware that has been donated so far: EfikaMXs are currently employed natively building packages, one of the issues we have with qemu is that it can be tempremental at times and isn’t suited really as a long term solution as it stands. So the EfikaMXs build all the the failed packages to make sure that qemu isn’t at fault – we found a load of packages built, and as such were imported into the OBS to get things rolling on. They are also being used to help out with Kiwi support. Pandaboards are being used for testing and bug hunting mostly, but also for packaging. There is also one device of each type for kernel testing/tuning.

So if you’re interested and aren’t afraid of getting your hands dirty (or occaisionally burnt) do join in. Jump on IRC (#opensuse-arm on freenode) and let’s have fun together.  Oh and don’t forget this is a community effort and as such we still need a bit more [funding][3] to get some more devices.

 [3]: http://pledgie.com/campaigns/16098 "openSUSE ARM hardware pledge"

[![Click here to lend your support to: openSUSE ARM Hardware and make a donation at www.pledgie.com !][4]][3]

 [4]: http://www.pledgie.com/campaigns/16098.png?skin_name=chrome
