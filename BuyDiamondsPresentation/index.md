---
title       : BuyDiamonds- App Provided by Diamond Merchants
subtitle    : "Enhancing Diamond-Shopping Experience"
author      : Essence91214
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## What is BuyDiamonds?

* It is a prototype of an application  to be used by diamond merchants and jewellers

* to enhance the shopping experience of diamond shoppers by enabling them to get the best value for their money  

* BuyDiamonds uses the 'diamonds' dataset from 'ggplot2' as the prototype dataset.

## Why use an app like BuyDiamonds?

* __Because diamond-shopping is difficult__. People buy diamonds for jewellry and/or for diversifying their investments. Accordingly, the criterion for selecting a diamond for purchase could be different, e.g., significant factors for jewellry diamonds could be the sparkle and fancy shapes, whereas for investment purposes,  one might look for large sized clear diamonds of round shape. Since there are many factors to be considered, it is not easy to shop for diamonds.

* BuyDiamonds is meant to help shoppers get the best value for their money by showing them all their options at the outset.  

--- .class #id 


## What are the inputs and outputs of BuyDiamonds?

##### Input: 
Using BuyDiamonds the shopper can specify whether they need a solitaire diamond or multiples, their budget, range of diamond sizes, and quality of cuts. 

##### Output: 
A list of diamonds available at this particular merchant having the specifications provided by you. And if you specified that you are interested in multiple diamonds, it provides two additional pieces of information: for each diamond in the list, it provides the number of diamonds of that kind you can purchase within your budget and the combined price. In response the app displays a list of diamonds  they can choose from in that particular store.  

##### Possible helpful action
If the merchants have labelled and stored the diamonds in their stock in an orderly fashion, they can now locate the diamonds of interest for the shopper and show it to them if need be.
  

--- .class #id 


##### Illustration 
Consider Shiny, a shopper with budget of $5,000 to $20,000, looking for multiple diamonds of the same type and of size in the rqange of 0.2 to 1.4 carats with clarity level "Ideal".  


|  &nbsp;  |  carat  |  cut  |  clarity  |  color  |  price  |  num_of_diamonds  |  combined_price  |
|:--------:|:-------:|:-----:|:---------:|:-------:|:-------:|:-----------------:|:----------------:|
|  **32**  |  1.06   | Ideal |   VVS2    |    D    |  11209  |         1         |      11209       |
|  **47**  |   0.9   | Ideal |    SI1    |    D    |  5656   |         3         |      16968       |
|  **61**  |  1.03   | Ideal |    VS1    |    G    |  7587   |         2         |      15174       |
|  **30**  |  1.23   | Ideal |    SI1    |    I    |  6389   |         3         |      19167       |
|  **35**  |  1.15   | Ideal |    VS2    |    E    |  9967   |         2         |      19934       |
|  **13**  |  1.04   | Ideal |   VVS2    |    F    |  9005   |         2         |      18010       |
|  **48**  |   1.1   | Ideal |    VS2    |    F    |  6166   |         3         |      18498       |
|  **21**  |  1.03   | Ideal |    SI1    |    H    |  5063   |         3         |      15189       |
|  **24**  |  1.03   | Ideal |    VS2    |    G    |  6241   |         3         |      18723       |
|  **16**  |   1.2   | Ideal |   VVS1    |    E    |  16256  |         1         |      16256       |
This shows 10 randomly selected rows of the 67 in the output table. 


--- .class #id 

### What other information can be included in the App?

This protptype app has only two of the four factors important for choosing diamonds -"The Four C's" (Carat, Color, Clarity, and Cut). Thus, a complete app needs to include:

* Color, Clarity, Shape, Visible tint.

## Enjoy your diamond-shopping experience!
<div style='text-align: center;'>
    <img height='240' width ='460' src='diamonds.png' />
</div>

(Image source: http://videohive.net/item/falling-diamonds-4-different-overlays/156459),
          





