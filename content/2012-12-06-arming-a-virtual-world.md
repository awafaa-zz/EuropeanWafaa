---
title: ARMing A Virtual World
author: Andrew Wafaa
layout: post
kind: article
created_at: 2012-12-06
permalink: /arming-a-virtual-world/
dsq_thread_id:
  - 961006475
categories:
  - ARM
  - OpenSource
  - openSUSE
tags:
  - Arndale
  - Cortex-A15
  - KVM
  - Virtualisation
---
# 

There is now **\*real\*** hardware from ARM’s partners that offers the ability to leverage hardware virtualisation, in a similar fashion to Intel and AMD. So far three devices are shipping to the general public – the new [Series 3 Chromebook][1], the [Nexus 10][2] and the [Arndale board][3]. They all have one key factor in common, the [Samsung Exynos5][4] SoC. This fine piece of silicon is a member of the Cortex-A15 family which introduces the required virtualisation extensions.

 [1]: http://www.samsung.com/uk/consumer/pc-peripherals/chrome-devices/chrome-devices/XE303C12-A01UK "ARM powered Chromebook"
 [2]: https://play.google.com/store/devices/details?id=nexus_10_16gb&feature=nexus10_campaign "Google Nexus 10"
 [3]: http://www.arndaleboard.org/wiki/index.php/Main_Page "Exynos 5 development board"
 [4]: http://www.samsung.com/global/business/semiconductor/product/application/detail?productId=7668 "Samsung's first Cortex-A15"

Luckily openSUSE managed to get hold of an Arndale board last month, and Alex Graf, Marcus Schäfer and others have been hard at work getting the Geeko working on the device. I’m pleased to say that their hard work has paid off, you can now run [openSUSE on the Arndale][5] with some caveats – no graphics/display atm, so serial or SSH access only for now. One of the drivers to getting the Arndale up and running was to test out Virtualisation. Below you can see a quick and dirty display of me using KVM and running three (3) VMs on the board – openSUSE, Fedora, Ubuntu.

 [5]: https://en.opensuse.org/HCL:Arndale "Arndale & openSUSE"



[Direct YouTube Link][6]

 [6]: http://youtu.be/SL313KEYQCc "Screencast of KVM running on an Arndale"

It isn’t perfect as the guest kernel is missing DEVTMPFS support, and some of the KVM tools are missing; these are being worked on so the future will be bright ;-)
