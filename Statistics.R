# This file provid you basics statistcs
# We work on mba data set that have three variables

# libraries
library(moments)


mba <- read.csv("mba.csv")
class(mba)
sapply(mba,class)

# Basic statistics
summary(mba)
mean(mba$gmat)
# mode
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

Mode(mba$gmat)

median(mba$gmat)
sd(mba$gmat)
var(mba$gmat)
kurtosis(mba$gmat)
skewness(mba$gmat)

# if modeled the  data using normal distribution 
# find out the percentage in gmat score  lessthan 670

mean(mba$gmat)
sd(mba$gmat)
pnorm(670, 711, 29)

