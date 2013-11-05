---
layout: post
title: "Programming Mistakes that intro CS students make"
tags:
- programming
---


Last night, my roommate Edwin and I, both Computer Science / Engineering majors, were working on a Java lab with a few others. As it turns out, one of our group mates didn't know what the keyword `static` meant in Java and he was a Junior. This blog post is not intended to be mean, it's meant to provide a list of **very important** CS fundamentals which are too frequently overlooked.

Here are the <u>Top 5 most Alarming Programming mistakes that Intro to CS majors make</u> and tips to avoid them!:

###1. Over-reliance on big IDE's:

First-timers tend to think that huge IDE's like Eclipse or Visual S. are magical wizards that seem to transform syntax into commands when the "play" button has been hit. **And yes, i've heard someone actually call it a f*cking play button before. **People don't know why the magical "bin" folder is there and i've met others who don't know the difference between source and binary files. Sure, for the first one or two intro to CS classes, its ok to be naive, you have synax to worry about. However, everyone should at least make an attempt to dive in further ASAP.

![Glorious play button of eclipse](/images/play_button.png)
<center><u>The glorious play button of eclipse... It makes your code work.</u></center>

A good way to get started, and what helped me, was to put the GUI and the IDE away. If you are on Windows, download <a title="Cygwin" href="http://www.cygwin.com/install.html" target="_blank">Cygwin</a> and use VI/M or Emacs as a text editor. If your language needs to be compiled, manually compile it, and then run it. You will be exposed to a deeper level of what is going on, and in a healthy way. (Mac and Linux users, you guys are spoiled. You can immediately start by opening up Terminal).

###2. Failure to understand reference types:

I think that this is by far the *most dangerous* mistake introductory students can make.

{% highlight java %}

// C does not "equal" a car object in memory, it's 
// a reference to that object in memory

Car c = new Car(); 
// This is a big difference and below is an example why.
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

Not understanding how reference types works also contributes to a lack of understanding of the pass by reference &amp; value protocols. <u>I've met someone who thought that Strings were primitive in Java.</u> Hiccups in something like distinguishing reference types can cause large and subtle errors.

###3. Lacking of Memory awareness - bits, bytes, fundamentals

This may not seem important, but it is. Sure, people can memorize the sizes of value types in any language easily. In Java for example, integers are 4 bytes. But knowing the implications is a pretty important deal also. Curious why the max cash and score limits in videogames are usually 2.147 billion? It's because the variable type which was used to store the score was probably a signed integer, or 4 bytes in size. 4 bytes is 32 bits, which means the number range is between -2^31 to 2^31-1 with two's complement.

###4. Unawareness of the keyword &amp; concept of "static"

This is one of those early concepts that's just a bit tougher to grasp than the others. So as a result, there are many people who have a faint understanding of what static means, but probably not to a solid depth. This is very important and programmers should know 100% when to use it and when not to. If you even have the slightest feeling that you may not fully grasp the concept and implementation uses of "static", sit down with a good programming book, or just read <a title="this" href="http://stackoverflow.com/questions/2649213/in-laymans-terms-what-does-static-mean-in-java" target="_blank">this</a>.

###5. Giving up or thinking you know it all:

The biggest mistake you can make is to stop learning. **If you are always intrigued and striving to learn, you will steamroll through the above and many more when time comes.** If you try to get by with putting in the bare minimum, i.e. programming your school labs and nothing else, you are missing out on honing a valuable skill. This point applies not just to students, but to everyone. Steve Jobs told us to stay hungry and to stay foolish.

Here is a famous quote from Zed Shaw, the author of the Mongrel Webserver and the "Learn X the hard way" books.
> An IDE, or "Integrated Development Environment" will turn you stupid. They are the worst tools if you want to be a good programmer because they hide what's going on from you, and your job is to know what's going on. - Zed Shaw

If you have any suggestions for another programming mistake, feel free to comment and we will add your suggestions to the list!

Good luck on finals!
