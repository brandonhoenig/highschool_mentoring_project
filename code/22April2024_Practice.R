# 23 April 2024 
# Learning R and how it works. 

# name the mtcars dataset 'car_data' for later calling
car_data = mtcars

# figure that compares hp to mpg for our car_data. 
ggplot(car_data) +
  aes(x = hp, 
      y = mpg) +
  geom_point() +
  geom_smooth(method = 'lm') +
  theme_bw()

qplot(data = car_data, 
      x = hp, 
      y = mpg)

# example using the linear model function 
lm(data = data, 
   y ~ x)

# real linear model 
lm_1 <-
lm(data = car_data, 
   mpg ~ hp)

# slope formula 
y = mx + b

y = -0.06823(x) + 30.09886


y_cad_fleetwood = (-0.06823*205) + 30.09886 

# Observed miles per gallon of cadillac fleetwood is 10.4
# Modeled miles per gallon of cadillac fleetwood is 16.1


qplot(data = car_data, 
      x = hp, 
      y = mpg,
      colour = wt)

# Multiple linear models 
lm(data = data, 
   y ~ x1 + x2)

# real multiple linear model 
lm_2 <-
lm(data = car_data, 
   mpg ~ hp + wt)

y = m1x1 + m2x2 + b


y_cad_fleetwood_2 = (-0.03177*205) + (-3.87783*5.25) + 37.22727

# Observed miles per gallon of cadillac fleetwood is 10.4
# Modeled miles per gallon of cadillac fleetwood is 10.35

# evidence suggests that the model with wt is a better model, but lets test that. 

# using an anova to compare models.  we found that the model with weight (lm_2) was the better of the two. 
anova(lm_1, 
      lm_2)

# using AIC to compare models. we found that the model with weight (lm_2) was the better of the two. 
AIC(lm_1, 
    lm_2)





