---
layout: page
title: Josh McIntosh
tagline: of the California Bay Area
---
{% include JB/setup %}

## Hi!

<div class='mycontent'>
<div class='row-fluid' >
<h3>Note</h3>
It's been a while since I've written anything here, hasn't it? I tend to get
embarassed at my writing, but I won't get rid of it (indeed, I don't think I
could if I wanted to). Because of that, I'm going to move old writings off.
To read them, you'll have to go back in history (Well, the revision history).  
<hr />
</div>

<div class='row-fluid'>
<div class='span1'>
##### Sort by:

- {% assign pages_list = site.pages %}
- {% assign group = 'nonavigation' %}
- {% include JB/pages_list %}

</div>
<div class='span5'>
### latest posts

<ol>
	{% for post in site.posts limit:5 %}
		<li markdown=''>[({{post.date | date:"%Y-%m-%d"}}) {{ post.title}}]({{ post.url }})</li>
	{% endfor %}
</ol>

</div>

<div class='span4'>
These github pages are host to both my github projects and my personal blog. My biggest concern about personal 
information is that it might be seen as unprofessional, I suppose—but I also want whoever reads this to 
get a holistic view of who I am, both professionally and personally.  

Also, the fact that It uses github--and thus requires knowledge of an scm--can only work in my favor.
To keep in the spirit of this, I dont have a comments section on the site--however, if you have anything
you'd like to point out or say, use github issues and make a commit to whichever post, appending the information
you'd like to change (or add to) as a `&lt; blockquote &gt;`. If you're faithful to that, and I deem 
the content worthy, I'll update the post.  
</div>

</div>

</div>
