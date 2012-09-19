---
layout: page
title: Josh McIntosh
tagline: of the California Bay Area
---
{% include JB/setup %}

## Hi!
----

<div class='content'>
<div class='row-fluid' >
<div class='span4'>
<p>I am a young linux admin that aspires to be an engineer.
I am an Arch Linux user and enthusiast, a Redhat Admin, and programmer (mostly for
administration tasks).</p>
<br>
<p>In addition, I have been known to do small time web development, using some tools.
My drawback in that is that I'm not necessarily artistically inclined<big><strong>*</strong></big>.</p>

</div>

<div class='span4 offset2'>
<img  src='assets/images/me.jpg' class='img-polaroid'/>
<h6><small>Me, December 2011</small></h6>
</div>
</div>
<hr>
<div class='row-fluid'>
<div class='span2'>
<h5>Sort by:</h5>
<ul>
	{% assign pages_list = site.pages %}
	{% assign group = 'nonavigation' %}
	{% include JB/pages_list %}
</ul>
</div>
<div class='span5'>
<h3> latest posts</h3>
<ol>
	{% for post in site.posts limit:5 %}
		<li markdown=''>[({{post.date | date:"%Y-%m-%d"}}) {{ post.title}}]({{ post.url }})</li>
	{% endfor %}
</ol>
</div>
<div class='span4'>
I'll try not to make this too much like a dating profile, but I'm not sure what all I will 
put here. I figure I could put up plenty of information about my github projects (though I dont
have many yet), or I could put down personal information. My biggest concern about personal information
is that it might be seen as unprofessional, I suppose—but I also want whoever reads this to get a holistic
view of who I am, both professionally and personally.
</div>

</div>

<hr>
<h6><small> <big>__\*__</big> This wonderful layout is provided by Twitter bootstrap and more. Just look down at the footer.</small></h6>
</div>
