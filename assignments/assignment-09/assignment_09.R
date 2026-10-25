# Chose and load in dataset
data(iris)
head(iris)

# 1. Base R Graphics
# Scatter plot
plot(iris$Sepal.Length, iris$Sepal.Width,
     main   = "Base: Sepal Length vs. Speal Width",
     xlab   = "Length",
     ylab   = "Width")

# Histogram
hist(iris$Petal.Length,
     main   = "Base: Distribution of Petal Length",
     xlab   = "Petal Length in cm")

#2. Lattice Graphics
library(lattice)

#  scatter plot
xyplot(Sepal.Length ~ Sepal.Width | factor(Species),
       data = iris,
       main = "Lattice: Sepal Length vs. Sepal Width by species")

# Box-and-whisker plot
bwplot(Petal.Length ~ factor(Species),
       data = iris,
       main = "Lattice: Petal Length by Species")

#3. ggplot2

library(ggplot2)

# Scatter plot with smoothing
ggplot(iris, aes(x = Sepal.Width, y = Sepal.Length, color = factor(Species))) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(title = "ggplot2: Sepal Length vs. Sepal Width with trend by species")

# Faceted histogram
ggplot(iris, aes(Petal.Length)) +
  geom_histogram(binwidth = 1) +
  facet_wrap(~ Species) +
  labs(title = "ggplot2: Petal Length distribution by Species")


# blog link: https://morganlefey.com/assignment9-lis4370/
