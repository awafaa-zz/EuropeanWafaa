---
title: 'Changed Blogging System Again'
author: Andrew Wafaa
layout: post
kind: article
created_at: 2013-06-14
permalink: /changed-blogging-system-again/
categories:
  - OpenSource
tags:
  - Server
  - Web
  - Ruby
  - Markdown
  - Software
---
# 

It's been almost 18 months since I last made any [change][1] to this site, and I've been meaning to do it for a while. In all honesty, it's been a while since I last blogged so I thought it was as good a time as any. Thanks to the likes of [Twitter][2] and [Google+][3], and my [corporate][4] blog I'm finding myself blogging less an less.

 [1]: http://andrew.wafaa.eu/2012/02/17/update-to-europeanwafaa.html "European Wafaa moves to Wordpress"
 [2]: https://twitter.com/awafaa "Me on Twitter"
 [3]: https://plus.google.com/u/0/103092666279088875227 "Me on Google+"
 [4]: http://forums.arm.com/index.php?app=core&module=search&do=user_activity&search_app=blog&mid=123654&userMode=&sid=104957ef65b11d07747c3f0a9b12527d "My corporate blog posts"

As my blog is getting less content, is it really worth running an sql server etc? I don't think it is. There's the system overhead (I'll explain why I'm thinking about system overhead in another post), the maintanence of a critical component, the backups etc. [WordPress][5] is OK, but it really is overkill for simple blogging. After seeing peers, friends, and general interweb related buzz, I finally decided to move and use a static site generator. Problem is which one - there are loads?! I read and an LWN [article][6] which somewhat helped, so now I needed to choose. I finally bit the bullet and went for [Nanoc][7] after recommendations from trusted people.

 [5]: http://wordpress.org/ "WordPress blogging tool"
 [6]: http://lwn.net/Articles/541299/ "LWN article on static site generators"
 [7]: http://nanoc.ws "Nanoc, a Ruby based static site generator"

So far I'm loving it. I had already started to get into [Markdown][8], so creating content using the language was easy enough (I'm by no means an expert though). I get most of the functions that I want straight out of the box, it renders perfectly regardless of browser - desktop or mobile, it is immensly portable, backups are a breeze, and overall maintanence is simple. I regularily ask myself why I took so long to make the move.

 [8]: http://en.wikipedia.org/wiki/Markdown "Wikipedia's entry on Markdown"

As part of the move I've also rejigged URLs etc, so if you crazily had my blog bookmarked for whatever reason you will need to update. I've not quite finished fiddling yet, I've not implemented comments yet, but you could always use G+ or whatever in the meantime. I also want to tweak the theme and some other bits. I'd like to thank [Marcus Ruckert][9] for helping me with some of the code tweaks, [Peter Aronoff][10] for the current theme and some ideas.

 [9]: http://nordisch.org/ "darix's blog"
 [10]: http://ithaca.arpinum.org/ "Ithaca's blog"

[![openSUSE Conference 2013][11]][12] [![I'm Going to oSC13][13]][12]
 [11]: ../../../images/osc13logo400x283.png 
 [12]: http:/conference.opensuse.org "openSUSE Conference 2013, 18-22 July, Thessaloniki, Greece"
 [13]: ../../../images/go-osc13_200x200.png
