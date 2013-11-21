---
layout: post
title: "Fun with primes - Euler Problems 7 & 10"
tags:
- euler
- algorithms
- primes

---


Hello, I haven't made a blog post in a while now; a lot has happened since the Google interview. All of that will be discussed in the future posts.

Winter break has started, and there are some cool CS &amp; Math problems i'd like to talk about: <a href="http://projecteuler.net/problems">The Euler Problems</a>. All problems answered on my site will be done in either Java or Python. The ones which we will talk about today are going to be related to primes.

Problem 10:

> The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17. Find the sum of all the primes below two million.


Upon reading this problem, we can see that there are many "bad" solutions which however are very easy to implement. These solutions wont actually work due to the huge number requirement of <em>two million</em>. If the question was: "find me the sum of all primes up to 100 or 1000", we would be fine. Not for 2 million though. For computing that many numbers, we need a somewhat solid algorithm.

Lets take a look at one of the "bad solutions" first. We must first define what a prime actually is, it's an integer which is only divisible by 1 and itself and it starts from two and goes up (the positive primes).

<strong>High level implementation</strong>: Iterate from 2 all the way to two million, check if each number is a prime or not. If it is, add it to our growing sum.<em>
</em>

Well, we know what a prime actually is from above, lets first implement it with the slowest and easiest solution thinkable.

{% highlight java %}
long sum = 0;
for (int i = 2; i <= 2000000; i++) // O(n^2) 		
    for (int j = 2; j < i; j++) // O(n)        
         if (i % j == 0)
              sum += i;
{% endhighlight %}
Look at the code above, we are going integer by integer, from two all the way to two million.
For each of those integers, we are checking if it's divisible by <i>every</i> number from two all the way up until the number itself! It's a O(n^2) implementation, ew.

There are some trivial but immediate fixes which we can add, the first is based on the fact that even numbers <em>can't </em>be prime. So we can replace

{% highlight java %}
for (int i = 2; i <= 2000000; i++)

// With...
for (int i = 3; i <= 2000000; i += 2)
// Don't forget to manually tag 2 on the result
// because we know it's prime anyways.
{% endhighlight %}

Enough of that though! Lets delve into some of the more interesting implementations:

With some more context about how primes work, we can really speed things up. For example, whether or not 2 is prime, we know that all greater factors of two <em>are not. </em>This rule follows for 3, 4, 5, etc.. So, for each number we test if is prime or not, we can eliminate all future factors so we can tell our for loop to skip these numbers, we already know that they are prime. Here is the implementation: (To avoid confusion, a BitSet is essentially a list of true and false (0, 1) values).

{% highlight java %}
long sum = 0;
// List of true & false values
// They are all default false!
BitSet bs = new BitSet(2000000); 

for (int i = 2; i <= 2000000; i++) {     		
     if(bs.get(i)) // If bs is true, skip that number!      
	     continue;         
     else
         sum += i;
     // Jump through the factors of the number we are on, 
     // set the #'s to true so we can skip them in the future.
     for (int j = i; j <= 2000000; j += i) 						        
	     bs.set(j);  // To true          
}
{% endhighlight %}

What's very cool about this implementation is that it's O(nlog(n)) time complexity, versus the O(n^2) above, so it's significantly faster, especially if our n is 2 million. The optimized operation you see above solved Euler problem #10 in 0.27 seconds, the first implementation would have taken <em>many</em> minutes. Also, the answer is 142,913,828,922.

We can apply the above logic for Euler problem number 7, I won't go too in depth for this one.

Problem 7:


>By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. What is the 10,001st prime number?


To solve this, implement the same solution above, but keep a counter that increments every time we encounter a prime number. Once we hit 10,001, record down that prime and we are done!

104,743 is the answer.

Primes are fun, the two problems were cool in the sense that anyone can find a solution, but a better solution takes time to think and plan out.

Also, there are some roadblocks which some of you may encounter. Like, when I first tried these problems, I had `int counter = 0;` instead of `long counter = 0;`, which caused a big error because the biggest integer is roughly 2.14 billion, and the summation of the primes to 2 million is actually much higher, and java never produced any run-time warnings, the answer was just an incorrect number :p.

But yeah, hope you all enjoyed this! Be sure to comment or contact me if you have any questions on the implementations above.
