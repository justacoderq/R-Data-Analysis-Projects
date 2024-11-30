---
title: "MATH 3070 Lab Project 12"
author: "Prachi Aswani"
date: "`r format(Sys.time(), '%d %B, %Y')`"
output:
  pdf_document:
    toc: true
  html_document:
    toc: true
---

*Remember: I expect to see commentary either in the text, in the code with comments created using `#`, or (preferably) both! **Failing to do so may result in lost points!***

## Problem 1 (Verzani problem 8.7)
*Of the last ten times you've dropped your toast, it landed sticky-side down nine times. If these are a random sample from the $\text{Ber}(p)$ distribution, find an 80% confidence interval for $p$, the probability of the stidy side landing down. (Use `binconf()` (**Hmisc**) to compute the score interval.)*

```{r, tidy = TRUE}
# Load necessary library
library(Hmisc)

# Define the observed data
successes <- 9  # Number of times toast lands sticky-side down
trials <- 10    # Total trials

# Compute the 80% confidence interval using the score method
ci <- binconf(successes, trials, alpha = 0.2,method = "wilson")

# Print results
ci
```

## Problem 2 (Verzani problem 8.10)
*A survey is taken of 250 students, and a $\hat{p}$ of 0.45 is found. The same survey is repeated with 1000 students, and the same $\hat{p}$ is found. Compare the two 95% confidence intervals. What is the relationship? Is the margin of error for the second one four times smaller? If not, how much smaller is it? (Use `binom.test()` to answer this problem.)*

```{r, tidy = TRUE}
# Define observed proportions and sample sizes
p_hat <- 0.45
n1 <- 250  # First sample size
n2 <- 1000 # Second sample size

# Compute the number of successes (must be integer)
successes_n1 <- round(p_hat * n1)  # Round to the nearest integer
successes_n2 <- round(p_hat * n2)

# Compute 95% confidence intervals using binom.test()
ci_n1 <- binom.test(successes_n1, n1)$conf.int
ci_n2 <- binom.test(successes_n2, n2)$conf.int

# Print results
cat("95% CI for n = 250:", ci_n1, "\n")
cat("95% CI for n = 1000:", ci_n2, "\n")

# Calculate margin of error ratios
moe_n1 <- diff(ci_n1) / 2
moe_n2 <- diff(ci_n2) / 2
ratio <- moe_n1 / moe_n2

cat("Margin of error for n = 1000 is", ratio, "times smaller than n = 250.\n")
```

## Problem 3 (Verzani problem 8.15)
*The `stud.recs` (**UsingR**) data set contains a sample of math SAT scores from some population in the variable `sat.m`. Find a 90% confidence interval for the mean math SAT score for this data. (Do not use `t.test(); find this confidence interval "by hand".)*

```{r, tidy = TRUE}
# Load necessary library
library(UsingR)

# Extract data
data("stud.recs")
scores <- stud.recs$sat.m

# Calculate statistics
mean_score <- mean(scores, na.rm = TRUE)
sd_score <- sd(scores, na.rm = TRUE)
n <- length(scores)

# Find critical t-value
alpha <- 0.1  # 90% confidence level
t_crit <- qt(1 - alpha/2, df = n - 1)

# Compute confidence interval
moe <- t_crit * (sd_score / sqrt(n))  # Margin of error
ci <- c(mean_score - moe, mean_score + moe)

# Print results
cat("90% Confidence Interval for Mean Math SAT Score:", ci, "\n")
```

## Problem 4 (Verzani problem 8.15)
*For the `homedata` (**UsingR**) data set find 90% confidence intervals for both variables `y1970` and `y2000`, assuming the sample represents some population. Perform one sample t-test for each variable, use `t.test()`, but first discuss whether the model assumptions are appropriate (include some check of the assumptions, like a Q-Q plot).*

```{r, tidy = TRUE}
# Your solution here
# Load necessary library
data("homedata")

# Variables to analyze
data_1970 <- homedata$y1970
data_2000 <- homedata$y2000

# Check normality with Q-Q plots
qqnorm(data_1970, main = "Q-Q Plot for y1970")
qqline(data_1970)

qqnorm(data_2000, main = "Q-Q Plot for y2000")
qqline(data_2000)

hist(data_1970)
hist(data_2000)

# Perform one-sample t-tests and calculate 90% CIs
t_test_1970 <- t.test(data_1970, conf.level = 0.90)
t_test_2000 <- t.test(data_2000, conf.level = 0.90)

# Print results
cat("90% CI for y1970:", t_test_1970$conf.int, "\n")
cat("90% CI for y2000:", t_test_2000$conf.int, "\n")

```