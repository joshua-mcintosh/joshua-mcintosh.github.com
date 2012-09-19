---
layout: post
title: "DWM: My custom configuration"
tagline: "Steps, hints and things to customize"
description: "My dwm configuration, on archlinux—with all kinds of fun stuff backed in"
category: Programming
tags: [dwm,linux,programming,c,arch]
---
{% include JB/setup %}

[dwm](http://dwm.suckless.org/) is a tiling window manager with an emphasis on simplicity of code. While it's simple for a coder,
it's a bit more extensive for someone not used to a tiling manager. For example, the window manager is almost entirely controled
by the keyboard.

## Initial configuration
Dwm's initial configuration has:

1. __tags__: A tag in dwm is like a virtual desktop. The main difference is that you can have a window in multiple tags. Consider
the usefulness of this: I have my browser that I keep in my browsers tag, but I also need this window for work. Now, I tag it to
my work tag too, and blam! The window will appear in both, with me switching between either tag. As an alternative, I can show
_both_ tags if I need to.

2. __tiling window management__: As I said, dwm is a tiling window manager. What this means is that, whenever you open a program,
dwm makes sure every window is arranged next to each other, and the entire desktop is being taken up.

3. __very small__: This is a nice plus. It's binary size right now, while I'm using my patched version is less than 2MB.

## Tweaks I added to my configuration
I started with some smaller patches and configuration, but after seeing [this](http://www.reddit.com/r/unixporn/comments/yx1ja/archdwm_larger_font_reduced_eye_strain/),
I wanted to tweak things some more. So, here's some stuff I used for inspiration and some patches:

1. First I used w0ng's [statusbar tutorial](http://archlinux.me/w0ng/2012/05/01/dwm-a-pretty-statusbar/) as a jumping off point.
w0ng also pointed [here](https://bbs.archlinux.org/viewtopic.php?pid=1096029#p1096029) for information about the fonts (more on this later).

2. I looked through the dwm hackers thread on archlinux's forums and found Unia's [dwm-XFT repo](https://github.com/Unia/DWM-XFT).
This is a collection of about 12 patches with the source, as well as a slightly modified PKGBUILD to integrate patches into dwm.

3. The font selection was tough. I used stlarch's [ohsnap](https://bbs.archlinux.org/viewtopic.php?id=130562&p=1) fonts as well as the [stlarch\_font](http://aur.archlinux.org/packages.php?ID=58930). These fonts provide for icons within the
statusbar, as dwm doesn't have any normal provisions for this.

4. The last part was coming up with how the heck I tie everything together :) .

The biggest problem I encountered was that I couldn't use my font of choice, [Inconsolata](https://aur.archlinux.org/packages.php?ID=62855) in conjunction with stlarch\_font,
probably because Inconsolata defined those keycharacter that stlarch depended on. I can't say for sure, though; I can only say that those two wouldn't work together. This led me to
reworking Unia's patches to _not_ take advantage of xft, which was not a fun experience.

If you like what you see and you want something more in-depth, I can see what I can do!

## My config.h
The layout of things is a little off (due to gist's handling of tabs, I converted some spaces to tabs and tabs to spaces), but here's
my config.

[View in Gist](https://gist.github.com/3740086#file_config.h)

<div style='height:300px;overflow:auto;'>
<script src="https://gist.github.com/3740086.js?file=config.h">//</script>
</div>
