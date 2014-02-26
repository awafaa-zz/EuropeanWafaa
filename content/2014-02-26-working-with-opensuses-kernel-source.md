---
title: Working with openSUSE's Kernel Source
author: Andrew Wafaa
layout: post
kind: article
created_at: 2014-02-26
permalink: /working-with-opensuses-kernel-source/
categories:
  - openSUSE
tags:
  - Kernel
  - Code
---
# 

This is more for my own self reference as I go through fits and starts of having to touch the kernel and end up forgetting WTF I need to do, but it may come in handy for others; especially if people want to enable new hardware etc.

As we all know openSUSE follows the mainline kernel source pretty closely. We have as few patches as possible, but sometimes those patches build up as time goes on (think backporting etc.). As such the git tree isn't a straight mirror of kernel.org's. The kernel team have got a site that has all the pointers and most of the information you need over at [kernel.opensuse.org][1].

 [1]: http://kernel.opensuse.org/ "The openSUSE kernel site"

On the left hand bar of the site, you'll see a list of kernel branches, choose the one that you want to work with:

+ Master = Linus' Current Tree

+ openSUSE-$RELEASE = The kernel for the currently maintained openSUSE release (there will be more than one ;) )

+ stable (Tumbleweed) = The current stable kernel, which is used in Tumbleweed

Clicking on the required branch will yield information on who is incharge of the branch, which project on OBS has packages, cloning the git repo, etc.

So the steps to work with the kernel are relatively simple, but you need to make sure you do them in the correct order:

1. Clone the branch you want to work on (see above for which branch is what).

2. Make your changes

3. Run sequence-patch script (`./scripts/sequence-patch.sh`)

4. Change to the created tmp directory (`cd tmp/foo`)

5. Run the 'make oldconfig' script (`./run_oldconfig.sh`)

6. Return to the source root (`cd ../../`)

7. Create the rpm tree (`./scripts/tar-up.sh`)

The resulting kernel-source directory can be used directly to build rpms with `osc`

