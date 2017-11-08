---
title: 'Porting LibreOffice to Android - My New Crazy Project'
author: Andrew Wafaa
layout: post
kind: article
created_at: 2011-02-15
permalink: /porting-libreoffice-to-android-my-new-crazy-project/
dsq_thread_id:
  - 607135364
categories:
  - Android
tags:
  - LibreOffice
  - Porting
---
# 

Yes, you read that correct – I am going to try and port LibreOffice to Android! :-)

Why? Simples, there are no ODF compatible products on Android for reading & writing. There is [OpenOffice Document Reader][2] which as the name suggests is just a reader, and also OOo is so 2009 ;-)

 [2]: https://market.android.com/details?id=at.tomtasche.reader "OOo Reader for Android"

Now if I was a half decent hacker, this may not have been such a big deal.  Problem is I’m an absolutley crap hacker, with almost no experience or knowledge of Android or LibreOffice development. So why on earth would I try and do such a monumentally painful task? Two reasons – 1. I was challenged by an engineer that I respect to do it. 2. I’ve got an itch that needs scratching (actually I’m riddled with itches, and the Doc confirms it isn’t a medical condition ;-) ).

So how to go about it? I’m still working that one out. As it stands openSUSE doesn’t provide the necessary tools for the job – no decent ARM port :( So I’m going to have a play with Debian – after all 6.0 Squeeze is just out the oven so now’s as good a time as any. If that doesn’t work out I’ll give Ubuntu a whirl.  Never fear oh mighty Geeko lovers – these alien installations will be going on my test machine. My primary machine is still running openSUSE, with GNOME3.

I’ll try and document my trip through pain and fun, if for nothing else humour for those more seasoned than me at doing cooky stuff like this.

Just as a little side note – my primary machine, a Dell D820 decided to die just before FOSDEM. This has left me using my Netbook as my main machine. It took me ~15.5hrs to build LibreOffice on it.
