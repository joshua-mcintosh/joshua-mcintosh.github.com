---
layout: post
title: "System improvements: systemd, mark, selfspy and other things"
description: "Small post on new tools in system"
category: Linux
tags: [linux, systemd, mark, pass, selfspy, dunst, notify, tools]
---
{% include JB/setup %}

Over the last month or so I've tried to improve the workflow of my laptop (an older dell inspiron
1525, and that says quite enough right there).

## 1. [pass](http://zx2c4.com/projects/password-store/)
__dependencies__: <a href='http://en.wikipedia.org/wiki/Tree_(Unix)'>tree</a>, 
[gpg](http://www.gnupg.org/), [git](http://git-scm.com) (optional), [xclip](http://sourceforge.net/projects/xclip/)   
`pass` is a bash script written to display a tree of passwords. Unlike other password managers,
pass doesn't use a database, opting instead for straight file storage. The nice thing about this is that
all of the data is encrypted with your gpg key (which is locked by your password), so all you need to get
into the data is your gpg info.

Additionally, because it's filesystem based, you can easily move things around, remove, modify, etc. files.
This gives you all kinds of options for scripting your data, if it's something you need to do.

Each password store can act as a git repository, allowing you to transfer data accross computers, or possibly
go back and retrieve that old password file you deleted a while back. Using git commands, you can easily pull in
or push out new changes.

The bash completion is a nice touch.

Finally, the source code is surprisingly simple. It's worth diving in and tweaking it, if you like it.

## 2. mark
__dependencies__: <a href='http://en.wikipedia.org/wiki/Tree_(Unix)'>tree</a>, 
[git](http://git-scm.com) (optional), [xclip](http://sourceforge.net/projects/xclip/)   
I took the source for password-store and tweaked it for my uses as a bookmark manager. It stores url's
along with any pertinent information, and allows me to launch my `$BROWSER` using the url as an argument,
or if I act on a folder, all urls in a folder (I still need to work on recursing through folders).

Just like pass, it allows me to use a git repository to store info, and is easy to work with. Unlike pass,
I can edit the file's content (which means url) if I'd like.

Eventually I'll release it to my projects, when I feel content about this sorta thing.

## 3. [systemd](http://www.freedesktop.org/wiki/Software/systemd)
Systemd is an init system that is... interesting. It's not the straight-forward version many admins are used to,
but it provides some interesting ways to parallelize daemon startup. I'm still getting started with it, but so
far so good. The only issue I had was with an IRC daemon, and that was my fault<strong><sup>1</sup></strong>.

Aside from that, I've set up my autostart daemons like I had with my `rc.conf`, and I've moved my power configuration from
acpid to systemd, reducing that as a dependency. I'd like to look into moving to straight `loginctl` instead of consolekit
and such, but I hear that needs some work. __:(__. for now, I'll use consolekit, I suppose.

So far, I've been able to get initial ram use down to ~210MB, and I could probably do better if I was willing to make some
sacrifices (and I wont do that yet! __:-)__ ).

If I find more worth talking about with systemd, I'll write it here (assuming I take it down as a note).

## 4. [selfspy](https://github.com/gurgeh/selfspy)
__dependencies__: python and a whole lot of other crap, I'm sure

I haven't had a big chance to look into this as much. It keeps track of keystrokes you send to X windows and stores them
in a sqlite db. It looks like it could be useful, but on the other hand, I'm not sure I really like the idea.

## 5. [dunst](http://knopwob.github.com/dunst/)
__dependencies__: dbus-core, xinerama, xft, xdg-basedir

I haven't implemented this yet (I use [statnot](https://github.com/halhen/statnot) for notifications and my statusbar), but
I'd like to switch to dunst for notifications. Dunst uses a config file in the local XDG config folder (generally ~/.config),
or complie-time configuration via config.h .

It's nice in that it'll ideally fit into my workflow, by being controllable from the keyboard. I still need to look into 
configuration, or otherwise disassembling my current setup.

----
<p><small markdown='1'>__1.__ I didn't realize that some of my files for bitlbee weren't owned by the process running the daemon.
I restart it and it couldn't access my data!</small></p>

