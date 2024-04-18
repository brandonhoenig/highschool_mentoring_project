# 18 April 2024 
# Learning R and how it works. 

# general notes 
  # learn github?
  # Brianna likes STEM and jobs in it. 


# R only likes tidy data
  # every row is an observation/individual.
  # every column is a variable. 


# object - nouns, things that we can do things to. 

a <- 20 # assigned the number twenty to a 
a = 20 # assigned the number twenty to a 

car_data <- 
  mtcars 

list_of_numbers <- 
  c(20, 20, 30, 45, 23, 35)


# function - verbs, they do things. 

#load libraries 
install.packages('ggthemes')

library(ggthemes)
library(tidyverse)

car_data_gear_4 = 
filter(.data = car_data, # performed a filter on car data
       gear == 4) # kept only gear = 4 


# argument - adverbs, they tell us how to do things


mean(x = car_data_gear_4$cyl) # gets the mean of the cylinders in car data with only 4 gears. 



qplot(data = car_data_gear_4, # data used in the plot 
      x = mpg, # miles per gallon on x
      y = disp, # whatever disp is on y
      color = carb, # a
      geom = 'point') # makes a point plot. 

# 

