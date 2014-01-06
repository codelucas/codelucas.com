---
layout: post
title: "How I stumbled on the open source world"
tags:
- programming
- open source
---

During the [Summer of '13](http://codelucas.com/summer-of-13/) my friend [Nithin](http://nithinjilla.com) and I founded a news media startup, [Wintria](http://wintria.com). We built the product, incorporated the company, and then launched. For a shit ton of reasons, the product never took off. It felt very demoralizing.

Fall quarter of Junior year had started and I was completely consumed with school and interviews. Being in a startup during school made no sense and I opted to leave.

Our product was a news search engine that recieved its news from a seperate module which I built early in 2013. This service was conveniently dubbed [Newspaper](http://newspaper.readthedocs.org/en/latest/).

After the quarter ended, I refactored the code, wrote up the documentation, and then published Newspaper open source [on Github](https://github.com/codelucas/newspaper).

I didn't think much of it at the beginning. The only benefit of publishing the code, as I thought, was that a few extra eyeballs would be on the lookout for errors and maybe a pull request would occur once in a while.

But what happened was much more awesome. 

![Number 1 on Github](/images/newspaper_trending_first.png)

Quickly after publishing the code, many people had begun to download it from pypi, the python package index. On Github, my repository quickly rose to the #1 trending python spot!

To make things better, [Kenneth Reitz](https://github.com/kennethreitz/), the most followed contributor on Github and the author of the widely used [requests](https://github.com/kennethreitz/requests) module tweeted and starred my repository! 

![Kenneth Reitz starring my repo!](/images/KR_tweeted_newspaper.png)

At this point I was literally shaking in excitement at the idea of open source. The idea that so many people around the world can download and use code you have written is both horrifying and incredible. 

It is horrifying because any bug that you forget to test and fix can result in catastrophic amounts of frustration and time wasted among a huge amount of people. 

Similarly, it is incredible because of the sheer potential for positive impact. If you write a piece of widely used software that greatly out performs its predecessors, imagine the value gained in society.

**I view the effect of public software and tools as trickledown.** If you, the developer, release inefficient or buggy code that is popular with dependent-developers. These dependent-developers will have a harder time doing their jobs, which also impacts many other people who rely on those developers. This effect grows exponentially until entire industries are affected.

Writing great and public software, in my opinion, is analogous to donating a vast and growing amount of money to charity. If [Apache server](http://httpd.apache.org/) never existed or was proprietary, the value lost in society would be unimaginable. In this case, even charity organizations would be affected.

I don't know what i'm going to be doing after graduation, but I hope to always be writing some form of open source software on the side. 

