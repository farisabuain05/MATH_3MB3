# Section 1: Simulating the Exponential Growth Model (Example)

t_vals <- seq(0, 15, by = 1) # from t=0 to t=15 days

p_initial <- 1 # population starts with 1 individual

p_vals <- rep(NA, times = length(t_vals)) # creates empty vector same length as time vector

p_vals[1] <- p_initial
r <- 0.6 # growth rate
for (t in 1:(length(t_vals)-1)) # from 1 to t-1, as we work with two values at a time (t, t+1)
  p_vals[t+1] <- (1+r)*p_vals[t] # exponential model from class

p_vals # see if it worked

# Section 2:Visualizing our Results using a Plot (Example continued)

plot(t_vals, p_vals, type = "p",
     main = "Predictions of the discrete exponential growth model",
     xlab = "Day", ylab = "Population Size") 

# "p" stands for points here. for a line graph, use type = "1"
## xlab for x-axis label, ylab for y-axis label, main for title

# EXERCISE #

# Repeat the above process for the logistic growth model:
# p[t+1] = p[t] + r(1-p[t])p[t]
# where r is the growth rate and 0<=p<=1 ['p' is proportion of carrying capacity]

# Solution:

t_vals <- seq(0, 30, by = 1) # days
r = 0.4 # growth rate
p_initial <- 0.015

p_vals <- rep(NA, times = length(t_vals))

p_vals[1] <- p_initial

for (t in 1:(length(t_vals)-1))
  p_vals[t+1] = p_vals[t] + r*(1-p_vals[t])*p_vals[t]

plot(t_vals, p_vals, type = "p",
     main = "Predictions of the discrete logistic growth model",
     xlab = "Day", ylab = "Population as Proportion of Carrying Capacity")

# Reflection Questions: 

# What do you notice about the results of this model based on your graph? 

# The speed at which the populaiton grow is accelerating at first, but as we
# approach carrying capacity, growth slows and reaches an asymptote (~20 days).

# How do the predictions of the logistic growth model compare with those of the 
# exponential growth model? 

# In the exponential growth model, the rate at which the population grows is
# always increasing as time passes. In contrast, the logistic growth model
# has an inflection point at which point the rate at which growth changes goes
# from positive to negative, eventually reaching a point of near zero growth.

# Do these predictions make sense based on the assumptions we’re making with the 
# logistic growth model?

# Yes! With the logistic growth model, we assume a population has a certain 
# carrying capacity (due to limits in resources, food, space, etc.) past which
# it is no longer able to grow. Based on this, we'd expect there to be an inflection
# point in the growth curve at which point the rate at which the population is growing
# begins to slow down.

