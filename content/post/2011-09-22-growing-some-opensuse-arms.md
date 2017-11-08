---
title: "Growing some openSUSE ARMs"
date: 2011-09-22
topics:
  - ARM
  - openSUSE
categories:
  - ARM
  - openSUSE
tags:
  - Embedded
  - HackWeek
---
One of the things that came out of the recent [Geeko Love-In][1] for me was a new project to immerse myself in within openSUSE. Yeah I know, we have enough existing projects already so why create a new one? Simples! Believe it or not but openSUSE is behind the curve in a specific segment, and that segment has yet to explode to its full potential. That segment is ARM.

 [1]: http://conference.opensuse.org/ "oSC11"

![ARM Logo][2]

 [2]: http://upload.wikimedia.org/wikipedia/commons/thumb/a/a1/ARM_powered_Badge.svg/220px-ARM_powered_Badge.svg.png

No I’m not talking about your upper body appendages, but the architecture that powers most of your little devices (and some bigger ones too). Almost all smartphones, tablets and many other consumer devices are powered by ARM from one of the numerous licensees.

Didn’t openSUSE do something about this a while ago? Yes we did. Unfortunately the effort seems to have bitrotted somewhat, there were numerous reasons and I don’t even prophesise to know the all either.

As such I’m going to try and kickstart things, and see it through and hopefully see it grow.  As I mentioned, this idea came up at the conference when I was talking to numerous people (I forget how it all started, but that doesn’t really matter). There was an overwhelmingly positive view on the matter, and that for me was all that counts. Now let me be crystal clear here, *THIS WILL NOT BE A ONE MAN SHOW!!* I mentioned previously that my view is that we as a community are pretty lazy at times with getting our hands dirty. As such if you think things are going slow or not going in the direction you would like, don’t moan. Get your hands dirty and help make a difference.

The process will not be an easy one either, so don’t expect a port to magically appear over night. If we’re lucky we might be able to have a working port in 6 months. Maybe longer, maybe shorter; ultimately that lies with us as a community.

Stage one has begun already thanks to Adrian Schroeter, Alex Graf and Dirk Mueller. Stage one comprises of getting the boot strap process to work. At a cursory level this means getting the packages required for setting up a build chroot environment and for building these packages on the target ARM architecture. This will possibly take a fair amount of time, and no I won’t give any timelines for this – how long is a piece of string?

openSUSE has a couple of advantages here, 1) we have the OBS which can cross build and if need be cross compile packages for numerous architectures (ARM included) so we are going to make a start with that; 2) SUSE are going to be doing another HackWeek (I think it is next week) which means Adrian, Alex, Dirk and anyone else that has knowledge, experience or interest can join in the fun and pain almost full time for a week – let’s not kid ourselves here there is a high probability for lots of pain, but also fun ;-) Thing is HackWeek is not just for SUSE staff, it is also for the community. You can join in and spend some quality time on the project with those that know a whole heap of stuff, and learn from them and maybe even teach them something too.

We are going to be targeting ARMv7 nothing older I’m afraid this means CORTEX-A8 and above (looking at A9 primarily and then the new A15 when it’s available), it gets too messy otherwise and it is already messy enough.If you have knowledge and experience, please help out. If you don’t take part you have no justification to complain – you’ve got to be in it to win it ;-)

So I’m basically just giving you all a heads up on this effort, and will update you as regularily as possible (I’m hoping to do something weekly maybe). In the meantime, if you’re interested join [#opensuse-arm][4] on Freenode and the [opensuse-arm][5] mailing list. *DO NOT HARRASS* for updates, if there is something to say it will be said. If you’ve got a question, ask and \*WAIT\* for an answer. If you want to help out but want to know how ask and **\*WAIT\*** for an answer. I will try and get something on the wiki soon, with a todo list etc.

 [4]: irc://irc.freenode.net/opensuse-arm "openSUSE ARM IRC channel"
 [5]: http://lists.opensuse.org/opensuse-arm "openSUSE ARM Mailing List"

Thanks and here’s to getting our Geeko some ARMs.
