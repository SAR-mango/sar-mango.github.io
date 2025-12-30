---
layout: post
title: Indicator Function in Matlab
date: 2024-11-08
---

This is a short note on how to implement the "indicator function" in Matlab. The indicator function is defined as

$$I_{[a,b)}(t) = \begin{cases}1, & a\leq t < b \\ 0, & \text{else}\end{cases}$$

In Matlab, we can implement this using the following code fragment:
```
function y = ind(a,b,t)
    y = (a <= t & t < b);
end
```
Super simple, but I keep forgetting the exact syntax, so I created this page.
