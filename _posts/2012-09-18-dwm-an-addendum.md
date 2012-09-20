---
layout: post
title: "DWM: an addendum"
description: "A little bit more information for configuring dwm."
category: Programming
tags: [ dwm, linux, programming ]
---
{% include JB/setup %}

There were a few things I didn't include in my talk on dwm before. First off,
dwm doesn't normally have quite a few amenities built into it, such as a system tray,
a desktop menu, or even a clock! There are a few ways to get these things, though.

## System tray
For the system, tray, there are two options.

#### First,
you could get a stand-alone tray program such as stalonetray or trayer. This has a few disadvantages:

<dl class='dl-horizontal'>
<dt>Aesthetic Integration</dt><dd>The tray will likely not fit into the 'feel' of the desktop without some
serious theming and orchestration. More, you'll have to have the tray overlap with the dwm
bar, or otherwise free up space somewhere to store it (I do something like this with the bottombar
patch I have).</dd>

<dt>Technical Integration</dt><dd>For better or for worse, a program like trayer doesn't literally tie into
the window manager. This means that the two could potentially shut down independently of each other. Under rare
circumstances, perhaps that what a person would want, but I doubt that here.</dd>
</dl>

It's a fair assessment, though, that perhaps these tasks should be delegated to a separate program, as the window manager
_manages windows_, not little tray icons for programs.

#### The other option is
to patch dwm to provide the systray itself. This isn't entirely easy, but 
[someone has already done the legwork](http://dwm.suckless.org/patches/systray).

By using this patch, dwm itself will show a tray whenever a program elects to use it. Of the two options, this one
is the one I went with. To be fair though, I don't often use programs that have systray icons--I've done a decent
job of switching to terminal applications for many uses.

## Desktop Menu
For a root-menu approach like the above, I dont have as many answers. I use [dmenu](http://tools.suckless.org/dmenu/), a program
created for dwm, but this doesn't show me a list of categories and programs. dmenu _can_ be scripted to show such things though, but
you'd likely be doing it by hand. 

That doesn't mean that you wouldn't be able to parse .desktop files in /usr/share/applications and
pick out well-written program names, and then execute a program based on the exec line in the desktop file. It just means that, using
something like dmenu, it's going to be unplesant. One thing that might help, though, is the [dmenu-tools](http://tlvince.github.com/dmenu-tools/)
collection of scripts—specifically the ability of `dmenu_menu` to search for `dmenu_*` entries and list them.

## clock (and other information)
Among dwm, this is the simplest. If you've seen the pictures, I actually do have a clock on my dwm setup. The reason for this is that while dwm doesn't
have a built in clock, it does accept and display information set by `xsetroot`. By writing a script to output to xsetroot, you can display anything from
time, to wifi status, to new email notifications into the bar. And, if you use something like [statnot](https://github.com/halhen/statnot) in conjunction,
you not only have an information provider but a notification daemon, able to send alerts as you recieve them from other applcations and displays them.

Because I gave code last time, I will now too! Here is my statnot script (the script statnot executes). While statnot is written in python, the script itself
is a bash script. It's roughly based on the configuration [here](https://bitbucket.org/jasonwryan/eeepc/src/241da582a0fd/Scripts/dwm-status).

[View in Gist](https://gist.github.com/3746446#file_.statusline.sh)

<div style='height:300px;overflow:auto;'>
<script src="https://gist.github.com/3746446.js?file=config.h">//</script>
</div>

<br>
As for _why_ it echos information to `~/.notify`, perhaps I'll talk about that later.
