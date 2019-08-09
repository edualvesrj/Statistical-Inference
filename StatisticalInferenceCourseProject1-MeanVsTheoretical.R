# calculate sample.means
sample.means <- mean(main.means)

# plot a vertical line at the mean of the sample means
ggplot(population, aes(x=x)) + 
  geom_histogram(aes(y=..count.., fill=..count..), bins = 30) +
  geom_vline(xintercept=sample.means, colour="red", linetype="solid", size=1) +
  labs( 
    title="Simulations for Averages of 40 Exponentials", 
    y="Frequency", 
    x="Means")
