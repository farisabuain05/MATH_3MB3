# Lab 5 - Linear Regression with Least Squares

age <- seq(1,7, by=1)

num_rabbits <- c(8, 10, 5, 6, 4, 1, 2)

# typed ?lm into console to get an understanding of how to use this function

model <- lm(num_rabbits ~ age) # only argument used is the 'formula' argument; SLR

# obtained intercept (b hat) of 10.429 and slope (m hat) of -1.321 

age_for_prediction <- seq(0, 8, by=1)

coefficients <- coefficients(model)

y_fitted_vals <- rep(NA, times = length(age_for_prediction))

for (t in 1:length(age_for_prediction)) {
  y_fitted_vals[t] = coefficients[1] + coefficients[2]*age_for_prediction[t]
}

# note for future: coefficients[0] is a label, coefficients[1] and coefficients[2] gives desired
# values for the fitted model

plot(age, num_rabbits, type="p", pch=16, xlab="Age", ylab="Number of rabbits hunted per week")

lines(age_for_prediction, y_fitted_vals, type="l", col="blue")


