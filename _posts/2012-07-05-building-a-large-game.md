---
layout: post
title: "Building a large game"
tags:
- programming
---

My Java Applet game, dubbed [IslandOverlord](http://codelucas.com/pages/island-overlord.html), started out as a small Summer project. However, this project has grown both in both physical size and emotional weight quickly. The codebase is now 7,000 lines and the project has progressed to the point where I'm devoting over 5-6 hours a day, with school, to work on it. The fact that the graphics were hand drawn with GIMP did not help!

The codebase relies on nothing but the Java SDK, even for graphics! The code has been [open sourced](https://github.com/codelucas/islandoverlord), check it out!

IslandOverlord is a sims-esque game where a bunch of villagers spawn on an island and generate a society all by themselves. The island's trees, rocks, and animals grow and spread by themselves also.

![Picture of IslandOverlord](http://i1145.photobucket.com/albums/o516/lukepop/da522032.png)

A lot of IslandOverlord's data structures and mechanics are based off of one of [Notch](https://mojang.com/notch/)'s earlier games, titled [BreakingTheTower](https://mojang.com/notch/ld12/breaking/).

The entire game is on an Island object, which is both `render()`'ed and `tick()`'ed every game second. On every `render()` and `tick()`, all of the entities on the Island are also rendered and ticked. Here is the OOP structure:

{% highlight java %}
public class Entity {
    public void tick() { ... }
    public void render(Graphics2D g, double alpha) { ... }
    public boolean distance(Entity e) { ... }
    ...
}

// Everything is an Entity because everything has to be drawn (rendered) and
// ticked (moved) every game second. Beyond that? Things get more complex.

public class Animal extends Entity { ... }
public class Tree extends Entity { ... }
public class Person extends Entity { ... }
public class Mineral extends Entity { ... }

// Minerals can be mined, Meteors also need a mine() functionality
// so extend the Mineral class. In the natural world, meteors are minerals!

public class Meteor extends Mineral { ... }

// And now the island, where life happens...

public class Island {
    ...
    public void tick() {
        for(int i=0; i < this.entities.size(); i++) {
            entities.get(i).tick();
            if(!entities.get(i).isAlive()) {
                ...
            }
        }
    }
    ...
}
{% endhighlight %}

The island itself is just a circular picture that can be rotated with a user's camera. The impression of rivers and lakes on the island is created with transparent pixels which allow the blue background of the ocean's image to seep$ though. I also borrowed Notch's neat hack where he uses bit manipulaiton to tell if an entity is standing on a transparent pixel (water) or not, this was helpful for things like boundary checking.

{% highlight java %}
public boolean isOnGround(double x, double y) {
    x /= 1.5;
    y /= 1.5;
    int xp = (int) (x + 128);
    int yp = (int) (y + 128);

    // If coords are out of range of pixel img, it's out of question
    if (xp < 0 || yp < 0 || xp >= 256 || yp >= 256) 
        return false;

    // If coords are on a transparent pixel, it's on "water"
    return (pixels[yp << 8 | xp] >>> 24) > 128;
}
{% endhighlight %}

I've released this game to my friends at Summer school and the public reception has been great! After class ends, many would rush over to me to explain their experiences and all of the latest glitches that they've discovered. It made me feel happy, I hope to continue finding cool things to build and new people to share them with!
