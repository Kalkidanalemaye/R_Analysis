#MPG Regression

mechacar_mpg <- read.csv('MechaCar_mpg.csv', stringsAsFactors = F) #read in dataset

lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mechacar_mpg) #generate multiple linear regression model

summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD, data = mechacar_mpg)) #generate summary statistics



#Suspension Coil Summary

suspension_coil <- read.csv('Suspension_Coil.csv', stringsAsFactors = F) #read in dataset

summary(suspension_coil) #generate summaru statistics

standard_deviation_coil <- sd(suspension_coil$PSI) #calculate standard deviation

variance_coil <- standard_deviation ** 2 #calculate variance


#Suspension Coil T-Test

t.test(suspension_coil$PSI, mu = 1500) 

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500) #compare sample versus population means

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500) #compare sample versus population means

t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500) #compare sample versus population means
