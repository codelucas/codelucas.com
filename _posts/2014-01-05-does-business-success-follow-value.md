---
layout: post
title: "Does business success follow value"
tags:
- programming
- "open source"
- business
- newspaper
- newspaper3k
---

During the Summer of '13 my friend Nithin and I founded a news media startup, [Wintria](http://wintria.com). We quickly built a launch product and incorperated. However because of a various reasons, but mostly due to the discord between Nithin and I over product vision, our product never took off. Our precocious 4,000+ user first day launch quickly flatlined. It was a tough experience that led me to despondency for much of Junior year.

> *explanation of Wintra from an excerpt of my essay, [the Summer of '13](https://codelucas.com/summer-of-13/)*

> Wintria is a news search engine and aggregator. There are millions of ways to aggregate and present news content to people, but to do it sensibly and elegantly, then the task becomes a challenge. This is reinforced by the statistic that [as of 2013, nearly all news aggregators have failed](http://www.quora.com/News-Aggregators/As-of-2013-why-have-personalized-news-startups-failed). This challenge of building a news presentation product was elusive for many, but not insurmountable, as evident by a few unique news-aggregation giants such as Twitter and Flipboard.

> Working with [Nithin](http://nithinjilla.com), my partner for Wintria whom I met this Summer, has been exciting but bedeviling. Nithin strongly insisted on playing a business centric role for Wintria. While our skills complemented each other, we both were stubborn with tightly held opinions and contrasting backgrounds, mine being more technical and his being more business. The two of us frequently stalemated on product vision.

Wintria's shiny exterior surface for presenting news got its content: the article text, keywords, authors, images, and more, from a seperate code module which I built in early 2013. This service was aptly dubbed [Newspaper](http://newspaper.readthedocs.org/en/latest/) and was at the time private. I had two servers running Newspaper in an endless cycle, perpetually searching the web for fresh news and using advanced heuristics to distill the raw news data into useful information. At the time I had reservations that although the engineering work on Newspaper was competent, but certainly not exceptional or worth marketing to others to use.

A few months later during school, I began toying with the idea of open sourcing Newspaper out of boredom in filler classes during my final year in CompSci at UC Irvine. I quickly drafted up some documentation and cleaned up the code repository to prepare for release. I was ambivalent about publishing my work at the time, despite the proven tangible and practical benefits. For example, the work would have extra eyeballs leading to free community provided support and vigilance for new bugs. But open sourcing one's own work was a move of bold vulnerability, leading not only to contribution and praise but also embarassment, critique, and derision.

Regardless of my doubts and apprehensions, what ended up happening was incredible, and for a 20 year old me, unprecedented.

![Number 1 on Github](/images/newspaper_trending_first.png)

Soon after publishing the code, masses of people had begun to download it from [PyPI](https://pypi.org/), the python package index. On Github, my code repository flew into a meteoric rise to the coveted number one trending spot. My earlier apprehensions and low-spirits were quickly replaced with fulfillment.

As if to sanctify the moment, [Kenneth Reitz](https://github.com/kennethreitz/), the most followed contributor on Github and the author of the widely used [requests](https://github.com/kennethreitz/requests) module, tweeted and starred my repository! For all you non-technical readers out there this is basically just a well known engineer publically giving another engineer high praise and endorsement. Seeing this unexpected success and validation in stark contrast against the failures that Nithin and I experienced with Wintria felt great. Triumph at last!

![Kenneth Reitz starring my repo!](/images/KR_tweeted_newspaper.png)

What I learned through these months can be summarized in the principle that things with latent value still need to be poked, prodded and contrived to become useful in the real world, it doesn't happen by itself. Our consumer product failed for its own reasons, but that didn't change the fact that we had great technology, which at the time was preeminent in the world of news scraping and processing.

Had we built a B2B service instead of a consumer product, Wintria's story would have been different. Perhaps there is still time to make a more premium version of Newspaper as a basis for a new company. This is justified as I've been getting many emails from employees of top news sites, researchers from universities, and other students asking for new features. **Value and business success are not the same**, having something of value is required for business success but the success doesn't necessarily come without effort. I'm graduating at the end of this year and starting work soon so perhaps this undertaking can be left to another intrepid entrepreneur.
