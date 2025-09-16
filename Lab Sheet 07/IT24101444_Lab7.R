getwd() 
setwd("C:\\Users\\DELL\\Desktop\\PS\\Lab7")

# Exercise 1: Uniform Distribution (Train arrival)
# X ~ Uniform(0, 40)
# P(10 < X < 25) = P(X <= 25) - P(X <= 10)
prob_train <- punif(25, min = 0, max = 40, lower.tail = TRUE) - 
  punif(10, min = 0, max = 40, lower.tail = TRUE)
cat("Exercise 1 - Probability train arrives between 8:10 and 8:25:", prob_train, "\n\n")

# Exercise 2: Exponential Distribution (Software update)
# X ~ Exponential(rate = 1/3)
# P(X <= 2)
prob_update <- pexp(2, rate = 1/3, lower.tail = TRUE)
cat("Exercise 2 - Probability update takes at most 2 hours:", prob_update, "\n\n")

# Exercise 3: Normal Distribution (IQ scores)
# X ~ Normal(100, 15)
# Part i: P(X > 130) = 1 - P(X <= 130)
prob_iq_above <- 1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)
cat("Exercise 3i - Probability IQ above 130:", prob_iq_above, "\n")

# Part ii: 95th percentile (P(X <= x) = 0.95)
iq_95 <- qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
cat("Exercise 3ii - 95th percentile IQ score:", iq_95, "\n")

