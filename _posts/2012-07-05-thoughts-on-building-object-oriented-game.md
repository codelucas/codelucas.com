---
layout: post
title: "Thoughts on building a large object oriented game"
tags:
- programming
- java
github: https://github.com/codelucas/islandoverlord
---

My java applet game, dubbed [IslandOverlord](http://codelucas.com/pages/island-overlord.html), started out as a small Summer project, but it has grown in both physical size and emotional weight very quickly. It's now 7,000 lines of java code and has progressed to the point where i'm devoting over 5-6 hours a day, with school, to work on. The fact that I had to hand draw the graphics via gimp did not help :(

I'm also proud to say that it relies on nothing but the Java SDK! Even for graphics. The code has been open sourced, check it out [here](https://github.com/codelucas/islandoverlord).

The game itself is a sims-esque game where a bunch of villagers spawn on an island and generate a society by themselves. The island's trees, rocks, and animals grow and spread by themselves also.

![Picture of IslandOverlord](http://i1145.photobucket.com/albums/o516/lukepop/da522032.png)

However, I think that the actual engineering and design processes behind building this game are *much* more fascinating than the game itself. Firstly, a lot of IslandOverlord's data structures and mechanics are based off of one of [Notch](https://mojang.com/notch/)'s early day games, titled [BreakingTheTower](https://mojang.com/notch/ld12/breaking/).

The entire game is on an Island object, which is both `render()'ed` and `tick()'ed` every game second. On every `render()` and `tick()`, all of the entities on the Island are also rendered and ticked. Here is the OOP structure:

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

The island itself is just a circular picture that can be rotated with a users camera. The impression of rivers and lakes on the island is created with transparent pixels which allow the blue background to seep though. I also borrowed Notch's neat hack where he uses some bit manipulaiton to tell if an entity is standing on a transparent pixel (water) or not.

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

Well, that's all I have to say on the topic of IslandOverlord for now! I have released this game to a few of my friends and the public reception so far has been good! 

**The feeling of people you know actually using stuff that you have built is incredible**. This is a feeling that I want to experience many more times in the future.

