# plot a density line at the sample means
ggplot(population, aes(x=x)) + 
  geom_histogram(aes(y=..density.., fill=..density..), bins = 30) +
  geom_density(colour="red") +
  labs( 
    title="Distribution of the Average Exponentials", 
    y="Density", 
    x="Means")
