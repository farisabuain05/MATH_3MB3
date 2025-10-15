# Section 1: Generating the Bifurcation Diagram for the Logistic Growth Model.

r_vals <- seq(0, 2, by = 0.01) # parameter range

t_vals <- seq(0, 1000, by = 1) # we choose 1000 time-steps so our model reaches long-term behaviour

p_vals <- matrix(NA, # this tells R what we want to put in the matrix
                 nrow = length(r_vals), # this tells R how many rows we want
                 ncol = length(t_vals)) # this tells R how many columns we want

# creates a 3x1001 matrix of p-values, where p is the proportion of the population
# over carrying capacity (0<p<1).

p_init <- 0.20 # initial condition.
# We now want to fill the first column of each row of our matrix with this
# initial condition. To index a matrix in R, we use the syntax [m,n] where
# m denotes the row number and n denotes the column number. If we want to
# denote all rows (or all columns) we can leave the corresponding index blank.
p_vals[,1] <- p_init # this puts p_init in the first column of each row

for (r in 1:length(r_vals)) { # this loops through all r values
  for (t in 1:(length(t_vals) - 1)) { # this loops through all time steps
    # we record the simulation results within the r-th row of our matrix
    p_vals[r,t+1] <- p_vals[r,t] + r_vals[r]*(1 - p_vals[r,t])*p_vals[r,t] # computing p-values with our logistic growth model
    # like vectors we previously used, we can used [i] to assign value to or
    # pick value from a specific element with index i. For matrix, we have to
    # specify two index [i,j] to locate a specific element, where i represent
    # the i-th row and j represent the j-th row.
  }
}

# we'll setup the plot using the results for the first r value in our list
plot(rep(r_vals[1], 50), p_vals[1,952:1001], type = "p", xlim = c(-3, 3),
ylim = c(-0.4, 1.4), xlab = "r", ylab = "p*") # we only plot p-values for last 
# 50 time steps, in order to only represent long term behaviour of the model
# then we'll loop through each of our other r values and add them to the plot;
# we use the points() function which adds the data to the current plot as
# points without starting a new plot (if we used plot() it would create a
# new plot window each time instead of putting them all on the same plot)
for (r in 2:length(r_vals)) {
  points(rep(r_vals[r], 50), p_vals[r,952:1001])
}

# plot obtained is same as one in Question Sheet #

# Section 2: Exercise.

r_vals <- seq(-3,3, by =0.01) # chose same spacing as above

t_vals <- seq(0, 1000, by=1) # same number of time steps, to get long-term behaviour

p_vals <- matrix(NA, nrow=length(r_vals), ncol=length(t_vals))

p_init <- 0.35 # we'll play around with this value
# note: doesn't really change diagram other than changing initial value.
p_vals[,1] <- p_init

for (r in 1:length(r_vals)) {
  for (t in 1:(length(t_vals) - 1)) {
    p_vals[r,t+1] <- p_vals[r,t] + r_vals[r]*(1 - p_vals[r,t])*p_vals[r,t] 
  }
}

# based on logistic growth model, p(t+1) = p(t) + r*(1-p(t))*p(t) #

plot(rep(r_vals[1], 50), p_vals[1,952:1001], type = "p", xlim = c(-3, 3), 
     ylim = c(-0.4, 1.4), xlab = "r", ylab = "p*")

for (r in 2:length(r_vals)) {
  points(rep(r_vals[r], 50), p_vals[r,952:1001])
}

# End of Lab 3. #












