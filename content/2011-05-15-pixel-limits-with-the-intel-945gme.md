---
title: Pixel Limits With The Intel 945GME
author: Andrew Wafaa
layout: post
kind: article
created_at: 2011-05-15
permalink: /pixel-limits-with-the-intel-945gme/
dsq_thread_id:
  - 607101218
categories:
  - Open Source
tags:
  - Display
  - GNOME
  - Graphics
  - Intel
  - openSUSE
---
# 

Just a quick post to enlighten those that use an Intel 945GME powered machine of a certain pixel limitation that you may not know about.

I’m a full time user of the spiffy new GNOME3 with the fancy gnome-shell mojo. As such it’s on my primary machine, which at the moment is an eeePC 1000HE. Yup, that’s a netbook with a small 10″ screen and relatively low resolution of 1024×600 pixels.  As I’m sat at my desk I thought I would use my 17″ Dell LCD monitor. So I plugged it in and selected ‘*System Settings*>*Displays*‘ Without any issue it saw my external monitor and allowed me to enable it. I chose not to mirror displays as I’d like to take advantage of the larger screen.

**POOF!!** :-(

My CPU was getting spanked by gnome-shell, everything was grinding to a halt. I tried logging out and back in, but still my CPU was being pummeled. I tried rebooting, but that didn’t change the hammering that my poor Atom was getting.

I asked the resident crazy Frenchman, no not Vincent but his compatriot in crime, Frederic. He wasn’t sure if it was a bug or not, so advised to ask in #gnome-shell on IRC.

Off I clicked to IRC, and pretty much as soon as I asked my question – I had an answer from about three people; and they were all useful responses. Thankfully Emmanuelle gave me the clear answer:

The 945GME can only push a maximum of 2048×2048 pixels, so my setup was just too many pixels for it – 1024×600 1280×1024 = 2308×1624. Either I mirror my displays; lower the resolution on my external monitor; or disable the internal display (this is what I’ve chosen for now).

So there you have it, the Intel 945GME has a limit of 2048×2048 pixels. No maybes, ifs, or buts.
