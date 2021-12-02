

# Exercises for ggplot
#Dataset : Iris data set 

install.packages("ggplot2")
library(ggplot2)
?iris
names(iris)
head(iris)

df=iris
df
# Exercise 1
# Plot density chart for column Sepal Width of Iris Dataset. Hint : density().

plot(density(iris$Sepal.Width),na.rm=TRUE)


# Exercise 2
# Compare Sepal.Length with Sepal.Width. Also apply Color format wrt Species

# 
ggplot(df, aes(x = Sepal.Length, y = Sepal.Width,color = Species))+
  geom_point()


# Exercise 3
# This time you have to make bar chart for Species. Also try to fill it with unique colors
# Hint : bar().

ggplot(df, aes(x = Species)) + 
  geom_bar(fill = rainbow(3))



# Exercise 4

#  create object 'df' and save "iris" dataset to it.
# Assuming flowers dimensions are square in shape, you have to find area of sepal (lentgh * breadth) and petal(lentgh * breadth).
# Then compare the areas and use color option to differentiate wrt 'Species'
# Add title, ylab, xlab.
# Hint : mutate funtion of dplyr and bar.

df=iris

q1=mutate(df,Sepal.Area=(Sepal.Length*Sepal.Width),Petal.Area=(Petal.Length*Petal.Width))
q1

ggplot(q1, aes(x = Sepal.Area, y = Petal.Area, color = Species)) + 
  geom_point()+
  labs(xlab = "SepalArea", ylab = "Count", title = "POINT CHART")

