---
title: 'openSUSE on the Series 3 Chromebook - Quick and Easy'
author: Andrew Wafaa
layout: post
kind: article
created_at: 2012-12-10
permalink: /opensuse-on-the-series-3-chromebook-quick-and-easy/
dsq_thread_id:
  - 967157671
categories:
  - ARM
  - openSUSE
tags:
  - ARMv7
  - Chromebook
  - Cortex-A15
---
# 

I have blogged about how to get [Linux on the Chromebook][1] in the past; and whilst the process works, it isn’t the easiest or most friendly way. Thanks to the tireless work of the openSUSE ARM Team (especially Alex Graf and Marcus Schäfer) we now have a simpler way to get openSUSE on the Chromebook.  We now have an installable image that can be dd’ed directly to either an SD card or USB drive (I’ve not tried the internal eMMC) just like any other ARM device. To get the goodies check out the [Chromebook wiki page][2]. This process has numerous advantages to the manual process, chief amongst them is easy updating of the Kernel and painless deployment of the image. There are various things that need fixing still, but they are being worked on and will happen soon(ish).

 [1]: http://blogs.arm.com/software-enablement/848-running-linux-on-the-series-3-chromebook/ "Manual process to get Linux on the Chromebook"
 [2]: https://en.opensuse.org/HCL:ARMChromebook "Series 3 Chromebook on openSUSE's Wiki"

If you have a Chromebook, please try it out and let us know how things work or don’t for you on IRC #opensuse-arm on Freenode and/or the [opensuse-arm][3] mailing list . Please take note of the known issues on the wiki page before shouting ;-) 

 [3]: http://lists.opensuse.org/ "openSUSE Mailing List Archive"

**UPDATE**
Some people asked about card/stick size to use. If you want to just use the JeOS image which is command line only, then the minimum size is 1GB, if however you wish to use the XFCE image or use JeOS and then install a DE on top then the real minimum would be 4GB. Thanks to Kiwi, the images are self extracting. This means that when you complete the first boot process it will use up all the space on your target media, so 4/8/16/32/64/128GB depending on what you have.
