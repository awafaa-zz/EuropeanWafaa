---
title: Designing the missing Web UI for Bongo
author: Andrew Wafaa
layout: post
kind: article
created_at: 2011-07-15
permalink: /designing-the-missing-web-ui-for-bongo/
dsq_thread_id:
  - 928190885
categories:
  - openSUSE
tags:
  - Bongo
  - Conference
  - Design
  - Server
  - Software
  - UI
---
# 

![oSC11 logo][1]

 [1]: http://news.opensuse.org/wp-content/uploads/2011/07/rwx3b-300x123.png

Yay openSUSE is having a shindig in September, yes it’s the [openSUSE Conference 2011 (aka oSC11)][2]. And seeing as the theme is rwx³ I’ve submitted a couple of BoF propossals.  Now they haven’t been approved yet, so I’m not 100% sure they’ll happen but either way I’ll be there and will be keen to talk to anyone that is interested.

 [2]: http://conference.opensuse.org "oSC11 homepage"

The first topic I’d like to talk about is as the post’s subject says “Designing the missing Web UI for Bongo”.

For un-aware the [Bongo][3] is an e-mail & calendaring solution that can trace its roots back to Netmail. It is directly descended from Hula, which was a proof of concept email & calendaring solution which had such luminary hackers such as Dave Camp, Peter Teichman, Nat Friedman, Garrett Le Sage and many others.  Unfortunately due to commercial and other management decisions Hula was terminated. Yes it was honestly cool, and as a PoC it actually worked. Thankfully it was an open source project and was forked just before the door was closed, into the Bongo project. As part of the code clean up and ongoing development the existing UI had to be dropped due to code complexity, size and lack of resources for maintaining it. Which leads us to where we are now.

 [3]: http://bongo-project.org "Bongo project homepage"

What we have now is a MTA backend that can be distributed over multiple servers or combined on a single machine. It’s pretty light weight and works. We support the usual protocols, so IMAP (with or without TLS/SSL), POP3, SMTP (currently we’ve had to disable outgoing TLS/SSL due to a bug), CalDAV (albeit in a simple form), anti-virus support for clamav, and anti-spam support with spamassassin. So the foundation blocks are there in place, all we’re missing is the shiny frontend beauty.

Just to be clear Bongo is not aimed at the “Groupware” market, so it isn’t aiming to compete with the likes of Zimbra, Exchange, Domino, GroupWise, OpenXchange etc. It is aimed at those that don’t require the bloat that comes with those big products, those that want a simple clean way to deal with e-mail and calendaring. A competitor could be viewed as Gmail Google Calendar, but self hosted at home/office or hosted as a service. Target audience I suppose could be viewed as individuals/families; SOHO that don’t need the bloat or intricate understanding of servers like postfix or sendmail with dovecot or similar; educational facilities – you get the picture.

As I mentioned we have a fairly stable backend that provides email and calendaring, but the only way of interfacing with it is via a fat client (evolution, thunderbird, kmail, etc) – I use it at home. What we need is a way of getting to it via a browser. The aim of my BoF proposal is to discuss ways of meeting that requirement, what technologies could and maybe should be used, going through pros & cons and getting people interested in e-mail & calendaring and web design involved.

As a project we have some ideas on technologies used, but at the end of the day this whole web joojoo is kind of out of developer’s field, so if one of you hipster hackers has a better idea and implements it then who are we to argue ![;-)][4] As an example we kind of like the idea of HTML5 but we don’t have to be limited to that, at the end of the day we want a clean simple and functional UI – both user and admin. We have a blank canvas so anything goes.

 [4]: http://andrew.wafaa.eu/blog/wp-includes/images/smilies/icon_wink.gif

As Bongo can be a distributed solution it would also be great if the Web UI could be re-used in a way similar to Roundcube or Squirrelmail, Meaning you could use it as a generic web based MUA hooking into almost any mail server. This isn’t mandatory but a “would be nice to have” type feature. Initially we would be looking at something that provides core functionality – email, calendaring & contacts – but can be extended via a plugin system maybe. Again that’s just a thought.

Hopefully we can get some real traction going and maybe after the BoF we can start to do some hacking on it ![:-)][5] It would be absolutely awesome if by the end of the conference we had the beginings of a beautiful product.

 [5]: http://andrew.wafaa.eu/blog/wp-includes/images/smilies/icon_smile.gif

So please [register][6] for the conference and join in the fun.

 [6]: http://conference.opensuse.org/indico/confRegistrationFormDisplay.py?confId=2 "oSC11 registration page"
