---
layout: post
title: "Pass by value & pass by reference"
tags:
- programming
- algorithms

---

Hi, this blog post is intended to highlight the details and subtleties of passing by value and reference.

The three languages which we will talk about are Python, Java, and C++. Python and Java are strictly pass by value, while C++ allows for both.

<!-- We will first talk about passing by value. For many newer and modern languages, there seems to be a trend of strict pass by value restrictions. PHP, Python, Go, Java, and many more languages are all pass by value! -->

**Important:** Before going technical over these two passing protocols, we need to distinguish two types of variables in programming languages, *value types* and *reference types*, because a variable's type does affect how it is passed & interpreted.

{% highlight java %}
// Value type in Java, there is no layer between the variable 
// and the value in memory
int x = 10;

// Reference type in Java, the variable name "car" is actually 
// not the object in memory, it's  a reference pointing to the 
// address in memory of an object. Because Car is an obj instance, 
// not a primitive (int, chat, ...)
Car car = new Car("foo"); 
{% endhighlight %}

<img src="/images/Value-vs-Reference-Type.jpg" alt="Graphical representation of a reference type and a value type" />

**Passing by value** means whenever a value or reference type is being passed through a method, the passed ref/value is cloned into an identical value. If it's a value type, an identical value is created. If the passed parameter is a reference type, the reference gets cloned, not the object it's pointing at. However, the new reference is pointing at the original object still!. This is very important to understand.

In the following graphical images, circles and arrows refer to references and boxes refer to objects in memory. Red indicates that the reference is a clone from the pass by value operation.

{% highlight java %}
// Remember, Java is strictly pass by value!
class Car {
    String var = "";
    public Car (String var) { 
        this.var = var;
    }

    public static void setCarVar (Car car) {
        car.var = "bar";
    }

    public static void refNewCar (Car car) {
        car = new Car("bar");
   }
}
{% endhighlight %}

In the following example, we are passing by value the reference to a car object called `car`. It is default initialized with `"foo"`, so the `var` String property of the object is `"foo"` after creation. In the `setCarVar(...)` method, we take the `car` instance, and change it's `var` variable into the String `bar`. Despite this being pass by value, the change still takes effect because the reference was cloned, <b>not the actual object</b>. The reference is still pointing towards the original object!

{% highlight java %}
public static void main (String[] args) {
    Car car = new Car("foo");
    Car.setCarVar(car);

    // This will print out "bar"
    // the property change from setCarVar took effect!
    System.out.println(car.var);
}
{% endhighlight %}

<img src="/images/Pass-by-Val-varChange.jpg" alt="Pass by Value PT 1" />

<img src="/images/Pass-by-Val-varChange-2.jpg" alt="Pass by Value PT 2" />

Take a look at this new example, we use a new method, `refNewCar(...)`. This method differs from the original because it does not change the car's `var` property, it completely points the input reference towards a new car object. This is very important! Because the car reference is pointing now at a new car object (not original), all changes made to this object will not affect the original! This is much better explained with graphical images. 

{% highlight java %}
public static void main (String[] args) {
    Car car = new Car("foo");
    Car.refNewCar(car);

    // This will print out "foo"
    System.out.println(car.var);
}
{% endhighlight %}

<img src="/images/Pass-by-Val-redirect.jpg" alt="Pass by Value Redirect" />

Just one more fun example for pass by value. Manipulating array index values via methods. Reference variables which point to arrays also give programmers the ability to change index values with pass by value. This is similar to our first example, after passing by value, our reference variable is cloned, however it's still pointing at the same array, which means we can make manipulations. Let's have this example be in python.

{% highlight java %}
def changeFirstE (arr):
    arr[0] = "bar"

def main():
    arr = ["foo", "zzz", "lucas", ".", "hi"]
    print arr
    changeFirstE(arr)
    print arr
{% endhighlight %}

For the pass by value section of this post, I have only used reference types because they are much trickier to understand as opposed to value types. For a value type, via pass by value, the value is just duplicated. Any changes to the value won't affect the original value. For pass by references it's not the same though!

Finally, we can begin the passing by reference section. For pass by reference, inputted value and reference types are NOT duplicated. A new reference is now pointing at that original reference or value. Changes made to that reference will affect the object/reference being pointed at. The implications are much better explained with concrete examples than with text.

The pass by reference code will be presented in C++. We will be using value types for simplicity.

{% highlight java %}
void setValue (int &y) {
    y = 8;
}
 
int main() {
    int x = 10;
    cout << "x = " << x << endl;
    // outputs 10

    setValue(x);

    cout << "x = " << x << endl;
    // outputs 8, we are referencing a new value

    return 0;
}
{% endhighlight %}

The main takeaway for pass by references is that after pointing the input reference to a new object, the changes stay. The object reference will now stay pointed at that new object. If you are passing by a value type, the value will also change if it is pointed towards a new value.

The ampersand y `&y` in the method signature of `setValue(...)` denotes a new reference which points to the value type of the object in memory, which is initialized to 10. Instead of duplicating a value or reference, we are now just simply referencing it with a new reference. We are using a new reference to point to the <b>original</b> value type, and we are setting it to a new object in memory. This means all changes to the object, or even resetting the reference to a new objects, have permanent results. 

If we wanted to mimic our above example with `Car car`, and the `refNewCar(...)` setup, the graphic below will represent the subtle change. Having our car reference a new object will result in the reference permanently pointing towards a new object.
 

Congratulations, you have read through my lengthy guide to parameter passing and variable types! I hope this has helped you guys, please share this article with your friends if it really did help you!

Well, that's the end of this post for now, my next blog post will be much more exciting. I've compiled lots of analytics data on my new project & start-up, <a href="http://wintria.com">Wintria</a>, a lot of related stuff will be discussed in the next entry.

Be sure to contact me or comment if you have any questions about the implementations above, thanks!
