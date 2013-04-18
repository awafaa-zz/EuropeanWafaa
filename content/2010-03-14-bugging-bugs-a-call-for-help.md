---
title: 'Bugging Bugs &#8211; A Call For Help'
author: Andrew Wafaa
layout: post
kind: article
created_at: 2010-03-14
permalink: /bugging-bugs-a-call-for-help/
dsq_thread_id:
  - 770663292
categories:
  - Open Source
tags:
  - Bugs
  - Code
---
# 

Personally I find that in Linux or any OS for that matter, keeping track of and dealing with bugs can be a real PITA.  This may be in part that I’m not a power user of the services available (they don’t make it obvious how to fully utilise their service); also there are so many different types of bug trackers out there – bugzilla, trac, mantis, etc; it is also down to so many different projects use their own tracker; one advantage is that code/project hosting sites have their own – SourceForge, Gna!, launchpad, BerliOS, etc.  So all projects under these use the same tool/interface.  Yes bugzilla is probably the most common, but it is also one of the most modified – no two projects using it are the same and the work flow differs as much as the visuals.

As an illustration, I am active or have a keen interest in openSUSE & Bongo.  One uses a customised version of Bugzilla and the other uses GNA!’s Savane.  As a result, I am also in contact with a multitude of other projects (GNOME, KDE, Freedesktop.org, Moblin, Gwibber to name a few).  These all have their own bug trackers on different services, so to add them to the original two means I have at least seven different tracking services to deal with.  My dealings range from filing bugs, to monitoring a bug for information and even the odd occaison where I am assigned a bug to resolve.

Now I know they all pump out emails when something changes to the bug, but having to hunt through my email to get bug ids or whatever is annoying to say the least, not to mention filling up my inbox.  One big gripe is with people adding themselves to the CC list; do I really care if Chief Umbuzweiluh has added himself to the CC list for a particular bug? No!

Now what I would like is:

*   An application that can either sit on my desktop or in the notification panel that can help me manage all my bugs.
*   The app would need to be cross desktop friendly, so that it doesn’t look out of place on whichever DE I’m using – yes I do use more than one :-) 
*   Ideally offer some form of offline functionality – caching/storing the information locally.
*   I don’t care what language it is written in, something that anyone can understand would be handy, heck I may even contribute some code if it is easy enough ;-)
*   Support multiple backends, as I said I use lots of different trackers so getting the bulk of them supported would be ideal.

When I mention “offline” I would ideally like to have read write access so that I can then update a bug say if I’m on the move and then the app syncs with the backend next time I’m online.  I appreciate this may be harder to implement so I’d be happy with read only access.  Basically the sort of information I’d like to see is something along the lines of:

|Tracker(1)|BugID(2)|Summary(3)|Status(4)|Role(5)|Product(6)Priority(7)|Severity(8)| (9)|-(10)|

1.  Which bug tracker is it on – Novell, GNOME, Launchpad, KDE, etc. Ideally show the logo of the tracker but if not a short text – BNC, BGO, LP, BKO, etc.
2.  The bug number, ideally as a hyperlink so that it can be pasted into and email or IM conversation.
3.  The bug summary. Basically whatever is put into the summary field of the bug.
4.  The status of the bug – New, Assigned, Re-Opened, Unconfirmed, NeedInfo, Closed.
5.  What is your role with the bug – Reporter, Asignee, CC.
6.  What product is the bug against.
7.  What is the bug’s priority – Urgent, High, Normal, Low.
8.  What is the bug’s severuty – Critical, Major, Normal, Minor, Trivial
9.  Add a bug by either ID or url.  In an ideal world one would even be able to generate the whole thing from scratch and when you add it it create the ticket on the service and fills in the bug id for you.
10. Remove a bug. If one is on the CC list it would unsubscribe you from it.

As I’m no code monkey I have no real idea on **how** to implement my idea, but what I do know is **what** I would like.  I would be more than happy for an app that just provided the above mentioned table, but in an ideal world the app would also provide the full conversation of the bug showing all comments and any attachments.  Baby steps first, get the basic information available then add features as things progress.

Now I would love for the app to do the notifying of bug changes for me so I can disable all the email notifications I get.  So having some form of notification area presence would be great, and even providing a bubble when something does change:

————————————————— 
| N / BNC(1)|12345(2)|Foo Bar Noob(3) | 
—————————————————

1.  Logo or ID of bug tracker
2.  Bug ID – clickable
3.  What has changed – this could be Status, Role, Product, Priority, Severity

Now depending on how the app works will depend on what happens when one clicks on the bug id. Is there functionality for full context (fat app) or will it just open up in a browser.  The intial services I would like to see are (in priority) – Bugzilla, Savane, Launchpad, Trac, Sourceforge, and then anyting else.

So does anyone fancy being my hero and coding this for me?  It would be great if we could get this as part of GSoC – I’ll add it to openFate and the wiki ;-)

If anyone knows of something that exists that provides this functionality please let me know.  Chris Lamb did create a GNOME Applet for the Debian BTS tracker that kind of did this so if it helps have a look [here][3] for the code.

 [3]: http://chris-lamb.co.uk/projects/debian-bts-applet/ "Lamby's BTS Applet"
