# Section 1: Simulating Discrete Linear Systems

# First, we need to give the function a vector containing all the data we want
# to store in the matrix. We can use the nrow and ncol arguments to specify the
# numbers of rows and columns. By default, the matrix will get filled column
# by column, so keep that in mind when ordering your data vector (if you want,
# you can change this by setting byrow = TRUE to fill the matrix row by row).
A <- matrix(c(0, 0.5, 4, 0), nrow = 2, ncol = 2)

# Choose a vector of time steps
t_vals <- seq(1, 10, by = 1)
# Setup a matrix to store the population values at each time step
popn <- matrix(rep(NA, times = 2*length(t_vals)), nrow = 2, ncol = length(t_vals))
# Choose an initial condition and store it as the first column in our matrix;
# using the notation [,1] tells R to take all rows in column 1, essentially
# returning the whole first column (in general, [i,j] will take the ith row
# and jth column of our matrix)
popn[,1] <- c(4, 2)

for (t in 2:length(t_vals)) {
  popn[,t] <- A%*%popn[,t-1]
}

# Section 2: Visualizing our Results

# This time, we're going to set type = "o" which will create a plot using
# both points and lines; we will also use the col argument to change the
# colour of the plot
plot(t_vals, popn[1,], type = "o", col = "red", xlab = "Day",
     ylab = "Population", main = "Population of Rabbits")
# Now we'll add the data on the number of adults in a different colour
points(t_vals, popn[2,], type = "o", col = "blue")
# Finally, we'll add the legend; the first argument sets the legend location;
# we can either specify exact coordinates for this or use keywords like
# "topleft" or "bottomright"; the "lty" argument sets the line type to use
# in the legend (if you don't set this to something, you won't see any
# lines appear in the legend); the "pch" argument sets the point type to
# use in the legend (if you don't set this to something, you won't see any
# points appear in the legend)
legend("topleft", legend = c("young rabbits", "adult rabbits"),
       col = c("red", "blue"), lty = 1, pch = 1)

# Section 3: Exercise

b <- 0.01

beta <- 0.75

gamma <- 0.12

N <- 100

t_vals <- seq(1, 200, by = 1)

results <- matrix(rep(NA, times = 2*length(t_vals)), nrow = 2, ncol = length(t_vals))

results[,1] <- c(85,15) # 85 susceptible individuals, 15 infected

for (t in 2:length(t_vals)) {
  results[1,t] <- (1-b-(beta/N)*results[2,t-1])*results[1,t-1] + b*N
  results[2,t] <- (1-b-gamma)*results[2,t-1] + (beta/N)*results[2,t-1]*results[1,t-1]
}

plot(t_vals, results[1,], type = "o", col = "red", xlab = "Week",
     ylab = "Number of Individuals", main = "Infectious Disease Model Predictions")

points(t_vals, results[2,], type = "o", col = "blue")

legend("topright", legend = c("susceptible", "infected"),
      col = c("red", "blue"), lty = 1, pch = 1)

# What does it look like is happening to both the susceptible and infected populations?

# Both of them reach a stable equilibrium, that is as time passes the number of
# infected and number of susceptible reach a constant level, with number of infected
# less than number of susceptible.

# Based on our discussions of this model in class, which equilibrium point do you think is stable?

# Based on the graph and the parameters of the model, the non-zero equilibrium where the disease
# becomes endemic is the stable one in this case, whereas the zero equilibrium (disease is wiped
# out) is unstable.





