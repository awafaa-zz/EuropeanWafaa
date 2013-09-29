---
title: EuroBSDCon DevSummit Day 3
author: Andrew Wafaa
layout: post
kind: article
created_at: 2013-09-29
permalink: /eurobsdcon-devsummit-day-3/
categories:
  - OpenSource
  - FreeBSD
tags:
  - Malta
  - Conference
---
# 
![EuroBSDCon 2013 Malta][A]
 [A]: http://2013.eurobsdcon.org/wp-content/uploads/2013/05/EuroBSDcon-2013-Daemon-small.png

OK so I [lied][1], the EuroBSDCon actually has **3** days of FreeBSD DevSummit. The third day built upon some of the things covered in [Day 2][2]. The first part of the morning was taken over by the FreeBSD working groups, these working groups are the ones that do the work and integrate things that make up the full FreeBSD Operating system. There were presentations by groups like Toolchain, Security, Packaging, Desktop, etc. covering the work that they have done since the last DevSummit, and what new work is on going. openSUSE introduced something similar this year at oSC13 in Thessaloniki, but it was much more adhoc in comparison to what was done here.

 [1]: http://andrew.wafaa.eu/2013/09/27/eurobsdcon-devsummit-day-1.html "EuroBSDCon DevSummit Day 1 overview"
 [2]: http://andrew.wafaa.eu/2013/09/27/eurobsdcon-devsummit-day-2.html "EuroBSDCon DevSummit Day 2 overview"

After the coffee break and continued after lunchthere were numerous presentations. These presentations covered things like the SuperPages (HugePages on Linux), work reports from the numerous [GSOC][3] students, followed by presentations on some of the ongoing work in FreeBSD. The BSD family of OSes are moving to standardise on more permissive licensced software for their core components, their policy precludes any GPLv3 licensed software; so things like moving away from GCC to LLVM for the default compiler, etc. One component that is still GPL licensed is the debugger GDB, the last GPLv2 licensed version of GDB is 6.6 which dates back to 2006!. Work is ongoing to replace GDB with LLDB, which as you may guess is part of the LLVM family of software.

You can view the notes and slides from most of the Day 3 presentations on the [FreeBSD Wiki][4].

 [3]: http://www.google-melange.com/gsoc/projects/list/google/gsoc2013 "Google Summer of Code 2013"
 [4]: https://wiki.freebsd.org/201309DevSummit "EuroBSDCon DevSummit Day 3 slides and notes"
