###########Provides min, max and quartiles#
summary(Auto)


########### Number of observations and variables
########### Different details depending on variable data.
########### By Variables: Number of missing, counts, uniques, 
########### means, brakedown by each 5%, lowest 5 variables,
########### Highest 5 variables
dim(Auto)



########## Number of observations and variables
##########
library(Hmisc)
describe(Auto)

###########Provides names, name indexes
names(Auto)



###########Provides DFs, SSR, MSR, SSE, MSE,  F stats, P values 
###########and F statistic
anova(mpgXHor)



###########Formula, Residuals (min, max, residuals), coefficients,
###########standard error, t-values, p-values, parameters, F statistic
###########Dfs
summary(mpgXHor)


###########Gives Predictions and residuals of the model
predict(mpgXHor)
resid(mpgXHor)


###########Gives 95% confidence intervals
predict(mpgXHor, interval = "confidence")


attach(Auto)
mpgXHor <-lm(mpg~horsepower)



summary(mpgXHor)


###########Creating a regression graph
plot(horsepower, mpg)
abline(mpgXHor)









############car problem
Reg2 <- lm(mpg~cylinders + displacement + horsepower + weight)
summary(Reg2)
Reg2



#############boston housing
bosFull <- lm(BOSTONDATA$crim ~ BOSTONDATA$zn + BOSTONDATA$indus + BOSTONDATA$chas + BOSTONDATA$nox + BOSTONDATA$rm + BOSTONDATA$age + BOSTONDATA$dis + BOSTONDATA$rad + BOSTONDATA$tax + BOSTONDATA$ptratio + BOSTONDATA$black + BOSTONDATA$lstat + BOSTONDATA$medv)

summary(bosFull)

predict(bosFull)
