---
layout: post
title: "Kingdom Connectivity - Graph theory problem"
tags:
- algorithms
- graphtheory
- hackerrank
---

There is a problem from <a href="https://www.hackerrank.com/">HackerRank</a> which stood out as fun. It's a graph problem, graph problems are a set of problems which are known for generally being harder than others, `however very useful` in the real world.

> King Charles recently opened up a compeltely new kingdom! This kingdom has many cities connected by one-way roads. To ensure high connectivity, two cities are sometimes directly connected by even more than one road. King Charles has made one of the cities in the new kingdom his financial capital and one city his warfare capital, and he wants high connectivity between these two capitals. 

> The connectivity of a pair of cities A and B is defined as the number of different paths from city A to city B. A path may use a road more than once if possible. Two paths are considered different if they do not use exactly the same sequence of roads. There are N cities numbered 1 to N in the new kingdom and M one-way roads. City 1 is the financial capital and city N is the warfare capital. 

> What is the connectivity of the financial capital and warfare capital, i.e how many different paths are there from city 1 to city N? Input Format The first line contains two integers N and M. M lines follow, each containing two integers x and y, indicating there is a road from city x to city y (1<=x,y<=N). Output Format Print the number of different paths from city 1 to city N modulo 1,000,000,000(10^9). If there are infinitely many different paths print INFINITE PATHS (quotes are for clarity).


We are told that the roads are one way, so the graph is `directed`. The problem mentions nothing about the roads being cyclic or not, so we assume that `cycles` are present. <u>infinitely many paths</u> can exist between two nodes. The only possibility of an infinite # of paths between two nodes is when a cycle present within the path between the two nodes.

We know that the graph is directed and cyclical. We need to find the # of paths between two nodes, so no weights are involved. We are just node hopping while bookkeeping the the incoming or outgoing edges. This instantly stands out as a <a href="http://en.wikipedia.org/wiki/Dynamic_programming">Dynamic Programming</a> problem because the problem we are trying to solve can be divided into many smaller problems.

<u>We will start at the source city and recursively depth first hop straight towards the destination</u>. The `base case` is the destination, we `return a value of 1`, which stands for <u>one path</u>. At each turn, the weight between the current node and it's adjacent nodes will be `cached` in a hashtable. 

Also, at each turn we are checking all the adjacent nodes and marking them as seen. If they are seen again, we are now in a cycle. If we are in a cycle and we are also on the path from the source to destination, we now have an infinite amount of paths.

{% highlight python %}__author__ = 'lucas'
# Ending Vertex, Number of Edges
dest, N = [int(x) for x in raw_input().strip().split(' ')]
# DP hash, adjacency list
paths, graph = {}, {}
is_hit, is_cycle  = [False for i in range(dest + 1)], [False for i in range(dest + 1)]

def init():
    global is_hit, is_cycle, dest, N, paths
    is_hit[1] = True
    find_paths(1, dest)
    print paths[1]

def find_paths(start, dest):
    global is_hit, is_cycle, paths, graph
    # Base case, if we hit the destination
    # return a path length of 1
    if start == dest: return 1
    # In the case that our start point isn't
    # in the graph, return 0 possible paths
    if not graph.get(start): return 0

    for edge in graph[start]:
        if is_hit[edge]:
            is_cycle[edge] = True
            continue

        is_hit[edge] = True
        # If the weight is stored via dynamic programing
        # take it, if it's not recurse and find it
        if paths.get(edge):
            weight = paths[edge]
        else:
            weight = find_paths(edge, dest)

        # We must have this init check here and not all
        # at once at the beginning because we rely on checking
        # if a path[key] exists to determine to use DP or not.
        if not paths.get(start):
            paths[start] = 0

        paths[start] = (paths[start] + weight) % (10**9)

        # If the cur node is reachable via the destination
        # "paths[start] > 0", and if there is a cycle
        # "is_hit" true twice, then we are in a loop AND
        # that loop is on a road from start to dest, so we
        # now have infinite paths!
        if paths[start] > 0 and is_cycle[start]:
            print "INFINITE PATHS"
            quit()
        is_hit[edge] = False
    return paths[start]

for i in range(int(N)):
    a, b = [int(x) for x in raw_input().strip().split(' ')]
    if a not in graph:
        graph[a] = [b]
    else:
        graph[a].append(b)

init()
{% endhighlight %}
I hope this example and explanation helps you guys with visualizing graph problems more. They can be a bit tricky sometimes, but in my opinion, graph problems are the most satisfying to solve out of all algorithmic challenges!

Later tonight or tomorrow, I will make a long delayed post about Wintria, my startup, and my Summer internship!
