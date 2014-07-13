---
layout: layout
title: Technical Notes
class: about
---

Technical Notes
===============
*Technical notes for future reference. eg, new python framework, interesting algorithm, excellent stack overflow posts, etc.*

- [What happens when you visit a website?](http://igoro.com/archive/what-really-happens-when-you-navigate-to-a-url/)
- [Reddit thumbnail algorithm](https://github.com/reddit/reddit/blob/master/r2/r2/lib/media.py#L76)
- [Everything about SQL injection](http://www.troyhunt.com/2013/07/everything-you-wanted-to-know-about-sql.html#)
- [Sentiment Analysis, second try](http://andybromberg.com/sentiment-analysis-python/)
- [Huffman coding](http://rosettacode.org/wiki/Huffman_coding)
- [Bootstrap responsive ui guide](http://bootply.com/73952)

<!-- -->
> GNU/Linux systems should not be referred to as just "Linux". Linux is
> just the kernel when GNU consists of most of the tools running
> above it. GNU stands for "GNU is not UNIX"

<!-- -->
> OSX has it's own kernel, XNU, which stands for "X is not UNIX".
> OSX's own OS tool set, Darwin, is built around XNU, much like how
> GNU is built around Linux.

<!-- -->
> POSIX, an acronym for "Portable Operating System Interface", is 
> a family of standards for maintaining compatibility between operating systems. 
> POSIX defines the API, along with shells and interfaces, for compatibility with 
> variants of Unix and other operating systems.

<!-- -->
> Windows OS's use their own custom microsoft made kernels and compilers & tools
> which are not POSIX compliant. However windows users can use [cygwin](http://www.cygwin.com/)
> to mimic a POSIX protocol.

- [Flask Long-Polling example](https://bitbucket.org/danjac/chatbox/src)
- [IP Address -> Hash function example](https://groups.google.com/forum/#!topic/comp.unix.programmer/N_zfk2zjwwg)
- [Learn C the hard way](http://c.learncodethehardway.org/book/)
- [HTTP made easy](http://www.jmarshall.com/easy/http/)
- [Assorted docs from Aaron Swartz](http://www.aaronsw.com/2002/)
- [Tools of the modern python hacker](http://www.clemesha.org/blog/modern-python-hacker-tools-virtualenv-fabric-pip/)
- [Setting up the django stack on EC2](http://pragmaticstartup.wordpress.com/2011/04/02/non-techie-guide-to-setting-up-django-apache-mysql-on-amazon-ec2/)
- [An introduction to apache](http://net.tutsplus.com/tutorials/other/an-introduction-to-apache/)
- [SSH tunneling](http://en.wikipedia.org/wiki/Tunneling_protocol)
- [Trending on Github](https://github.com/trending)
- [Intro to A*](http://theory.stanford.edu/~amitp/GameProgramming/AStarComparison.html)
- [Euler problems](http://projecteuler.net/problems)

<!--- -->
> "Most programming languages contain good parts and bad parts. I discovered 
> that I could be a better programmer by using only the good parts and avoiding 
> the bad parts. After all, how can you build something good out of bad parts?" -- Douglas Crockford

- [VIM essentials](http://www.stanford.edu/~jacobm/vim.html)
- [Django plugins to start with](http://blog.hndigest.com/django-plugins-i-start-my-with/)
- [Real time chat with node, socket.io, express](http://net.tutsplus.com/tutorials/javascript-ajax/real-time-chat-with-nodejs-socket-io-and-expressjs/)
- [vim, tabs to spaces, space length](http://vim.wikia.com/wiki/Converting_tabs_to_spaces)
- [++ terminal cursor speed on OSX](http://stackoverflow.com/questions/4489885/how-can-i-increase-cursor-speed-in-terminal)
- [guide to learning javascript](http://qr.ae/GXp2c)
- [meteor framework](http://www.meteor.com/main)
- [common dp problems](http://www.quora.com/Programming-Interviews/What-are-the-top-10-most-popular-dynamic-programming-problems-among-interviewers)
- [perils of mixing open source w/ money](http://david.heinemeierhansson.com/2013/the-perils-of-mixing-open-source-and-money.html)
- [DHH on macbook airs](http://37signals.com/svn/posts/858-the-macbook-air-could-easily-be-the-only-machine)
- [python webapps w/ gunicorn & nginx](http://michal.karzynski.pl/blog/2013/06/09/django-nginx-gunicorn-virtualenv-supervisor/)

<!--- -->
> New strategies to deploy python webapps instead of the boring apache + mod_wsgi setup:
>
> - Having nginx facing the front while reverse proxying to apache + mod_wsgi
> - Having nginx facing the front while reverse proxying to a "wsgi server" for better 
> performance like gunicorn, uWSGI, etc.
> - *in general, [`nginx`](http://wiki.nginx.org/Main) really should always be facing the internet, it's super good w/ static files*

- [Hitchhikers guide to python](http://docs.python-guide.org/en/latest/)
- [nginx general configs (also apache)](https://github.com/h5bp/server-configs-nginx)
- [nginx production configs](http://blog.zachorr.com/nginx-setup/)
- [airbnb founder inspiring](http://www.youtube.com/watch?v=Ya0I6oz7q9U)
- [advanced ssh configs](http://nerderati.com/2011/03/simplify-your-life-with-an-ssh-config-file/)
- [curl vs wget](http://daniel.haxx.se/docs/curl-vs-wget.html)
- [gnu/linux information project](http://www.linfo.org/)
- [list of 5K urls](http://files.ianonavy.com/urls.txt)
- [intro to Makefiles](http://www.linuxdevcenter.com/pub/a/linux/2002/01/31/make_intro.html?page=2)
- [difference between /bin /sbin/ /usr/bin](http://askubuntu.com/questions/308045/differences-between-bin-sbin-usr-bin-usr-sbin-usr-local-bin-usr-local)
- [vagrant](http://docs.vagrantup.com/v2/)
- [intro to git merging & branching](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging)
- [Aaron Swartz being cocky](https://aaronsw.jottit.com/howtoget)
- [technical explanation of bitcoin](http://www.michaelnielsen.org/ddi/how-the-bitcoin-protocol-actually-works/)
- [Placeit, splash image simulator](https://placeit.net)
- [How to configure apache-nginx reverse rpoxy](https://www.digitalocean.com/community/articles/how-to-configure-nginx-as-a-front-end-proxy-for-apache)
- [Setting up gunicorn with nginx](https://www.digitalocean.com/community/articles/how-to-install-and-configure-django-with-postgres-nginx-and-gunicorn)
- [apache virtualhost examples](http://httpd.apache.org/docs/2.2/vhosts/examples.html)
- [great sqlalchemy examples](https://github.com/sloria/PythonORMSleepy/blob/master/sleepy/api_sqlalchemy.py)
- [sqlalchemy relationships](http://docs.sqlalchemy.org/en/rel_0_7/orm/relationships.html)
- [configuring supervisor with nginx & python apps](http://michal.karzynski.pl/blog/2013/06/09/django-nginx-gunicorn-virtualenv-supervisor/)
- [removing elements while iterating a list in python](http://stackoverflow.com/questions/1207406/remove-items-from-a-list-while-iterating-in-python/1207461#1207461)
- [DHH laying down the law of life](http://www.youtube.com/watch?v=jzERXJgi5vQ&t=61m0s)
- [Tour of the linux filesystem](http://tuxradar.com/content/take-linux-filesystem-tour/)
- [Suggested font pairings - Google](https://www.google.com/fonts/specimen/PT+Serif#pairings)
- [Make python faster without trying that much](http://lukauskas.co.uk/articles/2014/02/12/how-to-make-python-faster-without-trying-that-much/)
- [Bootflat - a free bootstrap flat framework](http://bootflat.github.io/)
- [Designing a RESTful API with flask & python](http://blog.miguelgrinberg.com/post/designing-a-restful-api-with-python-and-flask)
- [how to build a URL shortener](http://stackoverflow.com/questions/742013/how-to-code-a-url-shortener)
- [getting started with docker environments](http://serversforhackers.com/articles/2014/03/20/getting-started-with-docker/)
- [Deploy django with mod_wsgi (apache)](https://docs.djangoproject.com/en/dev/howto/deployment/wsgi/modwsgi/)
- [Setup ELB with WSO2 Application Server](https://docs.wso2.org/display/ELB203/Setup+ELB+with+WSO2+Application+Server)
- [The stack that power instagram, *omg they use gunicorn :3*](http://instagram-engineering.tumblr.com/post/13649370142/what-powers-instagram-hundreds-of-instances-dozens-of)

<!--- -->

> My opinion, then and now, is that C and other languages without memory checks are unsuitable for writing secure code. Plainly unsuitable. They need to be restricted to writing a small core system, preferably small enough that it can be checked using formal (proof-based) methods, and all the rest, including all application logic, should be written using managed code (such as C#, Java) ...  The fact is that no programmer is good enough to write code which is free from such vulnerabilities ... in languages without bounds checks ... All non-bounds-checked languages expose multiple levels of the computer to the program, and you are kidding yourself if you think you can handle this better than the OpenSSL team. -- HackerNews on The HeartBleed OpenSSL Bug.

- [XKCD Heartbleed explanation](http://xkcd.com/1354/)
- [How to make a networked mobile app feel fast and local](https://tech.dropbox.com/2014/04/building-carousel-part-i-how-we-made-our-networked-mobile-app-feel-fast-and-local/)
- [Better bash scripting in 15 minutes](http://robertmuth.blogspot.com/2012/08/better-bash-scripting-in-15-minutes.html)
- [An Opinionated Guide to Modern Java P1](http://blog.paralleluniverse.co/2014/05/01/modern-java/)
- [An Opinionated Guide to Modern Java P2](http://blog.paralleluniverse.co/2014/05/08/modern-java-pt2/)
- [Python-like list comprehension in java](http://stackoverflow.com/questions/899138/python-like-list-comprehension-in-java)
- [8 OSX command line utilities everyone should know](http://www.mitchchn.me/2014/os-x-terminal/)
- [Dockerizing a python webapp](http://blogs.aws.amazon.com/application-management/post/Tx1ZLAHMVBEDCOC/Dockerizing-a-Python-Web-App)
- [The NLTK book](http://www.nltk.org/book/) 
- [Interviw with Jonah Peretti of Buzzfeed & Huffpost](https://www.youtube.com/watch?v=OnON9pIm9OE) 
- [12 free data mining books](http://christonard.com/12-free-data-mining-books/) 
- [Linus Torvalds rant on C++](http://thread.gmane.org/gmane.comp.version-control.git/57643/focus=57918) 
- [New York times innovation report](http://www.scribd.com/doc/224608514/The-Full-New-York-Times-Innovation-Report) 
- [What is TCP and how does it work?](http://www.jguru.com/faq/view.jsp?EID=14663) 
- [A hacker's guide to git](http://wildlyinaccurate.com/a-hackers-guide-to-git) 
- [Why use www. instead of a naked domain?](http://www.yes-www.org/why-use-www/) 
- [Why GoLang is not Good](http://yager.io/programming/go.html) 
- [What is a linker, and what are dynamic and static linking?](https://kb.iu.edu/d/akqn)
- [Python multithreading vs multithreading in depth](http://sebastianraschka.com/Articles/2014_multiprocessing_intro.html#Multi-Threading-vs.-Multi-Processing)
- [My Twisted World - Elliot Rodger](http://abclocal.go.com/three/kabc/kabc/My-Twisted-World.pdf)
