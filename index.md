---
title       : Pythagoras' Theorem - An R Web App
author      : Mike Smart
date        : July 2016
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Introduction

This set of slides introduces the Web Application bulit for the Coursera Data Products Project.

The R web application, built using the 'shiny' package, is used to calculate the length of the hypotenuse for a right angled triangle, where the lengths for the other two sides have been input by the user.

The link to the web application is: https://smartma.shinyapps.io/DataProdsProject01/

---

## Pythagoras' Theorem

In mathematics, the Pythagorean theorem, also known as Pythagoras' theorem, is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. 

![pt_img]

[pt_img]: https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Pythagorean.svg/260px-Pythagorean.svg.png

Source: https://en.wikipedia.org/wiki/Pythagorean_theorem

---

## Pythagoras' Theorem: Example

Now that we know the theory, let's see an example in code, where a = 3, b = 4.....


```r
pyth <- function(a, b){
  sqrt(a^2+b^2)
}
pyth(3,4)
```

```
## [1] 5
```

As we can see the length of the hypotenuse (side c) is 5.

--- 

## Bonus Output

The web application also gives us some bonus output, that of the area of the triangle. Which is calculated by the height of the triangle * the base of the triangle, divided by two. Again, a = 3, b = 4:


```r
areaT <- function(a, b){
  (a*b)/2
}
areaT(3,4)
```

```
## [1] 6
```

The area of the triangle is 6.
