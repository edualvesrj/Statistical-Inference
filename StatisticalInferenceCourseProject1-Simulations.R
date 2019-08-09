# loading necessary R packages
if(!require(ggplot2)){install.packages('ggplot2')}; library(ggplot2)

# parameters
set.seed(135)
lambda <- 0.2
n <- 40
sims <- 1:1000

# Simulate exponential distribution
main.means <- sapply(sims, 
         function(x) { 
           mean( rexp(n, lambda) ) 
         })

population <- data.frame(x=main.means)

# Plot the histogram
ggplot(population, aes(x=x)) + 
  geom_histogram(aes(y=..count.., fill=..count..), bins = 30) +
  labs( 
    title="Simulations for Averages of 40 Exponentials", 
    y="Frequency", 
    x="Means")
