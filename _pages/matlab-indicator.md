---
layout: post
title: Indicator Function in Matlab
date: 2024-11-08
---

This is a short note on how to implement the "indicator function" in Matlab.

The indicator function is perhaps better known as the "rect" function, but I prefer the notation of the indicator function (as defined by Prof. Madhow at UCSB):
```math
a^2+b^2=c^2
```

display mode (centered):

$$I_{[a,b]}(t) = \begin{cases}1, & a\leq t\leq b \\ 0, & \text{else}\end{cases}$$
## Cursor Movement