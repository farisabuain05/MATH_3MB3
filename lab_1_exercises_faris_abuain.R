# Exercise 2 - For Lab 1, MATH 3MB3
# Name: Faris Abuain
# Student ID: 400503745
# Date: 09/09/2025

log(12.43)

log10(12.43)

sqrt(12.43)

exp(12.43)

diam <- 20

area_circle <- pi*(diam/2)**2

(14*0.51)**(1/3) # cube root

weight <- c(69, 62, 57, 59, 59, 64, 56, 66, 67, 66)

mean_weight <- mean(weight)
mean_weight

variance_weight <- var(weight)
variance_weight

std_weight <- sd(weight)
std_weight

range_weight <- range(weight)
range_weight

number_of_kids <- length(weight)
number_of_kids

first_five <- weight[1:5]
first_five

height <- c(112, 102, 83, 84, 99, 90, 77, 112, 133, 112)

summary(height)

some_child <- height[c(2,3,9,10)]
some_child

shorter_child <- height[height <= 99]
shorter_child

bmi <- weight / ((height/100)**2) ## convert height from cm to m
bmi

seq1 <- seq(from = 0, to = 1, by = 0.1)
seq1

seq2 <- rev(seq(from = 1, to = 10, by = 0.5))
seq2

seq3 <- rep(1:3, times = 3)
seq3

seq4 <- rep(c("a", "c", "e", "g"), each=3)
seq4

seq5 <- rep(c("a", "c", "e", "g"), times=3)
seq5

seq6 <- rep(1:3, each=3, times=2)
seq6

seq7 <- rep(1:5, times=c(rev(1:5)))
seq7

seq8 <- rep(c(7,2,8,1), times=c(4,3,1,5))
seq8

height_sorted <- sort(height)
height_sorted

child_name <- c("Alfred", "Barbara", "James", "Jane", "John", "Judy", "Louise", "Mary", "Ronald", "William")

names_sort <- child_name[order(height)]
names_sort

# The shortest child is Louise, the tallest child is Ronald

weight_rev <- rev(child_name[order(weight)])
weight_rev

# The heaviest child is Alfred, the lightest child is Louise

mydata <- c(2, 4, 1, 6, 8, 5, NA, 4, 7)
mean(mydata) # RETURNS MEAN OF 'NA'

# How can we fix this? --> Check help page. [ Enter > help("mean") in console ]

mean(mydata, na.rm = TRUE) # returns true mean of 4.625

ls() # lists all variables

rm(seq1)
