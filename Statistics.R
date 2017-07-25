# This file provid you basics statistcs
# We work on mba data set that have three variables


# libraries
library(moments)

#get working directory
getwd()

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

#check the data is normal form or not
qqnorm(mba$gmat)
qqline(mba$gmat)

# data transformation
# log > exponatial> Reciprocal > sqrt > 1/sqrt etc
qqnorm(mba$workex)
qqline(mba$workex)
# hence work exprence is not normal distribution so we use transformation
# we fist start to log transformation to go 1/sqrt transformation if data is not normal we use 
# use not normal techniqs for analysis but drawback of not normal techniqes is that the have less analytics info
# that's why we more try to normal distribution

workexpt <- log(mba$workex)
qqnorm(workexpt)
qqline(workexpt)


# Convert the whole data set in to z score

full_z_score <- scale(mba)
full_z_score

# find out probability and z score vice versa
qnorm(.975)   # probabilty of zscore
pnorm(1.96)  #  z score to probability
