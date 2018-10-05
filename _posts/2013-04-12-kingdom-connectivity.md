---
layout: post
title: "Kingdom Connectivity"
tags:
- algorithms
- graph_theory
---

> King Charles recently opened up a completely new kingdom! This kingdom has many cities connected by one-way roads. To ensure high connectivity, two cities are sometimes directly connected by even more than one road. King Charles has made one of the cities in the new kingdom his financial capital and one city his warfare capital, and he wants high connectivity between these two capitals.

> The connectivity of a pair of cities A and B is defined as the number of different paths from city A to city B. A path may use a road more than once if possible. Two paths are considered different if they do not use exactly the same sequence of roads. There are N cities numbered 1 to N in the new kingdom and M one-way roads. City 1 is the financial capital and city N is the warfare capital. 

> What is the connectivity of the financial capital and warfare capital, i.e how many different paths are there from city 1 to city N? Input Format The first line contains two integers N and M. M lines follow, each containing two integers x and y, indicating there is a road from city x to city y (1<=x,y<=N). Output Format Print the number of different paths from city 1 to city N modulo 1,000,000,000(10^9). If there are infinitely many different paths print INFINITE PATHS (quotes are for clarity).

The roads are one way, so the graph is **directed**. The problem mentions nothing about the roads being cyclic or not, so we assume that **cycles are present**. Infinitely many paths can exist between two nodes (when a cycle is present).

We know that the graph is directed and cyclical. We need to find the number of paths between two nodes, so no weights are involved. This problem boils down to node hopping while bookeeping the outgoing edges. This stands out as a <a href="http://en.wikipedia.org/wiki/Dynamic_programming">Dynamic Programming</a> problem because the problem we are trying to solve can be divided into many smaller sub-problems. Imagine a simple graph, `A->B->C`. After computing the number of paths between B and C,
we can use the answer to solve the same problem between nodes A and C! 

In our implementation, we start at the source city and depth first search towards the destination. The **base case** is the destination. We `return 1` after reaching the destination, this stands for one path found. This is repeated for every child edge and the values are summed up. Values are cached to save computations.

Adjacent nodes are being marked as seen for cycle detection. If a cycle is found on the path between the source and desination, there exists an infinite number of paths!

{% highlight python %}
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
        # take it, if it is not recurse and find it
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
