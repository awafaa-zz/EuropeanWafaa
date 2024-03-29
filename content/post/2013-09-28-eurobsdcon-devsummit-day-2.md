---
title: "EuroBSDCon DevSummit Day 2"
date: 2013-09-28
topics:
  - OpenSource
  - FreeBSD
  - Virtualization
categories:
  - OpenSource
  - FreeBSD
  - Virtualization
tags:
  - Malta
  - Conference
  - bhyve
---
# 
![EuroBSDCon 2013 Malta][A]
 [A]: http://2013.eurobsdcon.org/wp-content/uploads/2013/05/EuroBSDcon-2013-Daemon-small.png

Day 2 of EuroBSDCon (overview of [Day 1][1]) kicked off for me with the morning being dedicated to virtualization. In Linux we're all used to the usual suspects - KVM/Xen/LXC/VMWare, so I was interested to hear what's available on FreeBSD especially [bhyve][2] which is probably as close to KVM as one will get.

 [1]: /post/2013-09-27-eurobsdcon-devsummit-day-1 "Overview of Day 1 of EuroBSDCon DevSummit"
 [2]: http://bhyve.org/ "The BSD Hypervisor"

 * Xen support is available in FreeBSD, but only as DomU (guest VM). Dom0 (host server) support is actively being worked on though to rectify this shortfall (this does not apply to NetBSD). Xen PVHVM support is included in FreeBSD 10. 

 * VMWare support is available for FreeBSD guests. 

 * Not overly surprising LXC is not supported but FreeBSD does have Jails. 

 * HyperV support is also included to run FreeBSD as a guest on Microsoft's virtualization platform.

 * An overview of bhyve's status was then given, including a demo of a FreeBSD host running a CentOS guest and an Ubuntu guest. The CentOS VM was a pre-installed image and the Ubuntu VM was a new install. This showed that bhyve can support installation of VMs via ISO images thanks to the newly commit AHCI support. Currently bhyve only supports x86 as an architecture, but there are plans to support ARM; this is mainly due to resources avilable etc. bhyve shows a lot of promise and it will be great to see competition in the virtualization space on FreeBSD, just like there is on Linux.

The afternoon was taken up by the Vendor session, where companies that support and use FreeBSD gave presentations and discussed what was needed/wanted/missing/broken. The session was kicked of by the [FreeBSD Foundation][3]. It's always encouraging to see a Foundation show how well they are growing, and how they have helped the project. As an example, the FreeBSD Foundation funded [SuperPage support][4] on ARM. This was followed by an overview of a startup in Japan that focuses on FreeBSD consultancy services, many major Japanese companies are FreeBSD users including Sony (PS4) and Panasonic (I forget the products they ship with FreeBSD). 

After that there was the discussion session which started off with a brief overview of the upcoming version of FreeBSD - 10.0. FreeBSD 10 has switched to LLVM as the default backend compiler, using clang for both x86 and ARM. There will be GCC support but it will not be used by default, the target is GCC 4.9. A good overview of new features comming up in the soon to be released FreeBSD 10 can be found [here][5].

 [3]: http://www.freebsdfoundation.org/ "The FreeBSD Foundation, supporting the FreeBSD Project"
 [4]: http://blogs.arm.com/software-enablement/1079-transparent-superpages-for-freebsd-on-arm/ "SuperPage support on FreeBSD by SemiHalf"
 [5]: http://www.freebsdnews.net/2013/09/20/freebsd-10s-new-technologies-and-features/ "New features in FreeBSD 10"

