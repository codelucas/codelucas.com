---
layout: post
title: "Euler Problem 16 - Creative Arrays"
tags:
- algorithms
- graphtheory
- euler
---

[Euler problem](http://projecteuler.net/problems) 16
> 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26. What is the sum of the digits of the number 2^1000?

In the below example, we will solve this in Java. A common initial approach to this problem involves trying to compute 2^1000, storing the value as a number, and then converting the number into a string and adding each digit one by one. However, this won't work for most compiled langauges. Remember that the primitive data types `long` or `double` are 8 bytes, (64 bits). We are left at a 2^63-1 max number if signed. 2^1000 will greatly exceed the storage space within a double or a long.

However! We can pre-allocate a bunch of room in an array, and manually <u>build</u> the number 2^1000 within the array, with each array index slot holding **one** digit. For example, instead of
`long var1 = 100;`
we would have
`int[] var1 = {0, 0, 1};`
to represent 100. Visually this looks backwards but within an array the indices are 0, 1, 2 so the numbers are right side up.

To do this, we need some logic to check if a number goes over 10, if it does we just carry over the one. My implementation is provided below:

{% highlight java %}	
// There will be 300 digits maximum, for 2^1000
final int DIGIT_SIZE = 500;
// This value is the "n" in the 2^n we are summing 
final int EXPONENT_TO = 1000; 

int[] holder = new int[DIGIT_SIZE];

// We begin by setting a sentinal for everything, "-1"
for (int i = 0; i < DIGIT_SIZE; i++)
    holder[i] = -1;

holder[0] = 1; // Remember to set the first value to 1
for (int i = 0; i < EXPONENT_TO; i++) { 
			
    // Double every single digit blindly,
    // that's what 2^n means in essence 		     
    for (int j = 0; holder[j] != -1; j++) 				
        holder[j] = holder[j] * 2; 
			 			     
    // If our "digit" exceeds 9, convert 		
    // it into two digits and shove the tens "1" 			
    // the next slot of the array. 			
    for (int j = 0; holder[j] != -1; j++) { 				
        if (holder[j] > 9) {
            holder[j] -= 10;
            if (holder[j + 1] == -1) 
                holder[j + 1] = 1;
            else 
                holder[j + 1] += 1;
        }
    }
}

// Print the sums out.
int sum = 0;
for (int i = 0; holder[i] != -1; i++)
    sum += holder[i];

System.out.println(sum);
{% endhighlight %}

We are using an array of integers with pre-allocated space as a <u>custom data structure</u>, which can hold much much more than a java long or double. 

To conserve memory in cases where our numbers get *really* big, we can even initialize the array to be of type `byte`, because no value will go over 10 anyways. Oh and the answer was `1366` if anyone was curious.
