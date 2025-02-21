# Load necessary libraries
library(ggplot2)
# Load the iris dataset
data(iris)
# Polynomial regression
model <- lm(Petal.Width ~ poly(Petal.Length, 3, raw = TRUE), data = iris)

# Create the scatter plot
plot <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width)) +
  geom_point(color = "blue", alpha = 0.6) +  
  stat_smooth(method = "lm", formula = y ~ poly(x, 3, raw = TRUE), color = "red", se = FALSE) + 
  labs(title = "Polynomial Regression of Petal Length vs Petal Width",
       x = "Petal Length",
       y = "Petal Width") +
  theme_minimal()

# Print the plot
print(plot)

