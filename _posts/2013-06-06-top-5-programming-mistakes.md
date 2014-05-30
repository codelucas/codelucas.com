---
layout: post
title: "Programming Mistakes that intro CS students make"
tags:
- programming
---

<!--
Last night, my roommate Edwin and I, both Computer Science / Engineering majors, were working on a Java lab with a few others. As it turns out, one of our group mates didn't know what the keyword `static` meant in Java and he was a Junior. This blog post is not intended to be mean, it's meant to provide a list of CS fundamentals which are too frequently overlooked.

Here are the <u>Top 5 most Alarming Programming mistakes that Intro to CS majors make</u> and tips to avoid them!:
-->

###1. Over-reliance on big IDE's:

Big IDE's, like Eclipse and Visual Studios, are commonly required in college classes. They make the process of writing code quicker but unfortunatly hide a lot of details from the user. When you press the "play" button on Eclipse, you only see the output from your program on the surface when internally much more is happening.

![Glorious play button of eclipse](/images/play_button.png)
<center><span class="img-subtitle">The glorious play button of eclipse... 
    It makes your code work.</span></center>

A good way to get started, and what helped me, was to put the GUI and the IDE away for smaller scale projects. If you are on Windows, download [Cygwin](http://www.cygwin.com/install.html) and use [vim](http://www.vim.org/) or [emacs](http://www.gnu.org/software/emacs/) as a text editor. If your language needs to be compiled, manually compile it, and then run it. You will be exposed to a deeper level of what is going on, and in a healthy way. *Mac and Linux users, you guys are spoiled. You can immediately start by opening up Terminal*.

###2. Failure to understand reference types:

{% highlight java %}

// C does not "equal" a car object in memory, it's 
// a reference to that object in memory

Car c = new Car(); 
// This is a big difference and below is an example why.
class Car {
    public int wheels = 2;
    public Car(int wheels) {
        this.wheels = wheels;
    }
}

public class Ref {
    public static void main(String[] args) {
        Car a =  new Car(2);
        Car b = a; // b does not "equals" a

        a.wheels = 10; // It's a freight truck now!

        // We get 10, not 2! b is not a new copy of a car
        // It's pointing towards a in memory. They share
        // the same object.
        System.out.println(b.wheels);
    }
}
{% endhighlight %}

Not understanding how reference types works also contributes to a lack of understanding of the pass by reference &amp; value protocols. Thinking that Strings are primitive in Java is a common mistake. Hiccups in something like distinguishing reference types can cause large and subtle errors.

###3. Lacking of Memory awareness - bits, bytes, fundamentals

This may not seem important, but it can be a big deal. Curious why the max cash and score limits in videogames are usually around 2 billion? It's because the variable which was used to store the score was a signed 4 bit integer. 4 bytes is 32 bits, which means the number range is between -2^31 to 2^31-1 and your max number, 2^31-1, ends up being 2.147 billion.

###4. Unawareness of the keyword &amp; concept of "static"

The concepts behind static typed variables and methods are important in programming. [This](http://stackoverflow.com/questions/2649213/in-laymans-terms-what-does-static-mean-in-java) article helped me a lot when I was curious.

###5. Giving up or thinking you know it all:

> Stay hungry and stay foolish. -- Steve Jobs

The biggest mistake you can make is to stop learning. **If you are always intrigued and striving to learn, you will steamroll through the above and many more problems when time comes.** If you try to get by with putting in the bare minimum, i.e. programming your school labs and nothing else, you are missing out on honing a valuable skill. This point applies not just to students, but to everyone. 

Here is a famous quote from Zed Shaw, the author of the Mongrel Webserver and the "Learn X the hard way" books.

> An IDE, or "Integrated Development Environment" will turn you stupid. They are the worst tools if you want to be a good programmer because they hide what's going on from you, and your job is to know what's going on. -- Zed Shaw

If you have any suggestions for another programming mistake, feel free to comment and we will add your suggestions to the list!

Good luck on finals!
