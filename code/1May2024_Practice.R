# 2 May 2024 
# Learning about ggplot2 and how to use it. 

# load necessary libraries
library(tidyverse)
library(ggthemes)

# car data for plotting. 
car_data <- mtcars
  
#make a model comparing mpg to hp

lm_1 <-
lm(data = car_data, 
   hp ~ mpg) 

summary(lm_1)

# make a simple plot
qplot(x = mpg, 
      y = hp, 
      data = car_data,
      geom = c('point', 'smooth'), 
      method = 'lm')

# make the same plot in ggplot
ggplot(data = car_data) +
  geom_point(aes(x = mpg, 
                 y = hp)) +
  geom_smooth(aes(x = mpg, 
                  y = hp),
              method = 'lm',
              linetype = 3) +
  annotate(geom = 'text',
           x = 25, 
           y = 300,
           label = "horsepower declines as miles per gallon increases") +
  labs(x = "Miles Per Gallon",
       y = "Horsepower")
  
# Make a point ggplot with 'mpg' on the y axis, 'hp' on the x axis.  
# I'd like each color of the points to be based off of 'am' and the shape based on 'carb'
# I'd like the labs (hp, mpg, carb, am) to be explicit 
# (horsepower, miles per gallon, carbuerator, automatic/manual) on each part of the plot. 
# add a smooth layer that only has mpg on the y axis and hp on the x axis. 
# add an annotation layer that describes the trends seen. 
