---
title: Target ARM Hardware
author: Andrew Wafaa
layout: post
kind: article
created_at: 2011-09-30
permalink: /target-arm-hardware/
dsq_thread_id:
  - 755772665
categories:
  - ARM
  - openSUSE
tags:
  - ARMv7
  - Cortex-A15
  - Cortex-A8
  - Cortex-A9
  - Origen
  - Pandaboard
  - Snowball
---
# 

I just sent this into the [-arm mailing list][1].

 [1]: http://lists.opensuse.org/opensuse-arm "openSUSE ARM Mailing list"

This is a hot topic, and one that seems to generate the most noise.

I’ve had a discussion with several people about target hardware, and I’ve also looked at what our peers are doing and saying. At the same time I’ve been trying to see what options we have for getting some sponsorship for hardware.

There were three devices in the running, all are classed as development boards – so no case or external prettyness (beauty comes from within anyway):

* [TI PandaBoard][2]
* [Samsung Origen][3]
* [ST Ericsson Snowball][4]

 [2]: http://www.pandaboard.org/ "TI's PanadaBoard"
 [3]: http://www.origenboard.org/ "Samsung's Origen Board"
 [4]: http://www.igloocommunity.org/ "ST Ericsson's Snowball Board"

After discussing, the preferred nominee is the PandaBoard. Several factors led to this decision, it has an integrated wired network connection; is well supported by the incumbant distros; widely used within the wider ARM open source community; and it has Pandas (OK only in name but still!)

So if you want to prep and get some hardware, then go for the PandaBoard (as soon as the Cortex A15 is released, we’ll be looking at them).

Yes, I know it’s a developer board and not an end user product. Unfortunately there aren’t actually that many end user products that you can sensibly use for development at the moment. Sure, there’s the [TrimSlice][5]the [DreamPlug][6] and a few others, but after consulting someone that is far more knowledgable and aware of the wider landscape, we went with their recommendations.

 [5]: http://trimslice.com/ "Tegra2 powered "Desktop""
 [6]: http://www.globalscaletechnologies.com/t-dreamplugdetails.aspx "Plug Computer"

Oh and things are moving pretty fast folk!! o/
