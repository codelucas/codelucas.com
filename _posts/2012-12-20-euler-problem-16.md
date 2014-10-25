---
layout: post
title: "Euler Problem 16"
tags:
- algorithms
- graph_theory
- euler
---

> 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26. What is the sum of the digits of the number 2^1000?

A common first approach to this would be:

- Compute 2^1000 with operations on a numeric variable
- Convert the number into a string
- Add each digit one by one

However, this won't work for most langauges because of the restricted sizes in data types. Java's larger primitives `long` and `double` are both 8 bytes, which leaves us with a 2^64-1 max number assuming that they are unsigned. 2^1000 is way larger than 2^64 and it goes without saying that 2^1000 exceeds the storage space of any Java primitive.

*Using a language which allows you to get away with the "common first approach" defeats the purpose of this question!*

A great work-around for this problem would be to build the solution to 2^1000 inside a large array with each digit representing one index.

e.g. instead of `long var1 = 100;` we would have `int[] var1 = {0, 0, 1};` to represent 100. Visually, this looks backwards but array indices are ascending so {0, 0, 1} ==> 100.

My implementation is provided below:
{% highlight java %}	
final int DIGIT_SIZE = 500;
// This is the "n" in 2^n
final int EXPONENT_TO = 1000; 

int[] holder = new int[DIGIT_SIZE];

// Set a sentinal for everything, "-1"
for (int i = 0; i < DIGIT_SIZE; i++)
    holder[i] = -1;

// Set the first value to 1
holder[0] = 1;
for (int i = 0; i < EXPONENT_TO; i++) { 
			
    // Double every single digit (building 2^n step by step)
    for (int j = 0; holder[j] != -1; j++) 				
        holder[j] = holder[j] * 2; 
			 			     
    // If a digit exceeds 9, handle the carry and remainder
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

// Print the sums out
int sum = 0;
for (int i = 0; holder[i] != -1; i++)
    sum += holder[i];

System.out.println(sum);
{% endhighlight %}

To conserve memory in cases where our numbers get *really* big, we can even initialize the array to be of type `byte` because no value will go over 10. The answer was 1366 if anyone was curious.
