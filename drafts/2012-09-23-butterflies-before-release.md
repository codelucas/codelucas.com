---
layout: post
title: "Thoughts on Django after learning Flask"
tags:
- programming
- startups
- django
- flask
---

<!--
I have been working nonstop on my first web application!!... Darehut. You can check it out if you'd like. *Depending on when you read this it may or may not still be in debug mode.*

EDIT: And now it's discontinued :(

Darehut was started mid-Summer after I finished my large scale java applet game, which you can read about [here](http://codelucas.com/). Game programming is fun and all but I had already finished two games, *both in java*, and I needed to touch something new.
-->
I built my first website in the Summer of Freshman Year. I modeled it after Reddit, with posts, threaded comments, voting, etc.

At the time, I understood nothing about http and web development. To make matters worse, the framework which I started off with was [django](), a popular python based framework hailed for "perfectionists with deadlines".

I am not claiming that there is anything wrong with django, but I really don't recommend anyone use it when they are still learning the basics of web dev, eg: when building your *first* website.

Django is very good at what it does best, it allows users to produce production ready websites at a *very* fast pace. However, the combination of django's high level api and it's very rigid app-centric structure make for a confusing and sterile experience for beginners. 

For the first few weeks of programming using django, it did not feel like I was learning much about web development or python, it felt like I was learning a lot about *django*. This is best illustrated with an example.

I remember seeing that famed `CSRF` token error and searching on stackoverflow for help. I was told that I had forgotten to include the request context within my templates. So I pasted in the code given to me and it worked.

```python
return render_to_response('index.html', kwargs, context_instance=RequestContext(request))
```
<center>C'mon, how familiar does that above line look</center>

However, I still did not know what `context_instance=RequestContext(request)` meant, so I looked it up. The answers and definitions were all confusing and required more background knowledge. So I looked them up also. I kept googling up terms all the way down to "requests" and "responses". I still felt bad because I could not really comprehend and connect all of these terms together just by reading about them.  




