######################################################
# Deliverable 1 :  Linear Regression to Predict MPG  #
######################################################

#install.packages("tidyverse")
#install.packages("dplyr")

# read open input file: 
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

num_rows <- 1:nrow(mechacar_df)

# generate multiple linear regression model to determine the p-value 
# and r-squared value for the model
summary(lm( mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)) 

##############################################################
# Deliverable 2: Create Visualizations for the Trip Analysis #
##############################################################
# read open input file: 
suspend_df <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
library(tidyverse)

# get mean, median, variance and standard deviation (no grouping)
total_summary <- suspend_df %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

# mean, median, variance and standard deviation (group by Manufacturing Lot)
lot_summary <- suspend_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table

###############################################
# Deliverable 3: T-Tests on Suspension Coils  #
###############################################

# given the population's mean is 1,500 PSI, we test to see if the PSI 
# is statistically different across all lots: 
PSI_all_lots <- t.test(suspend_df$PSI, mu=1500)

# given the population's mean is 1500 PSI, we test to see if the PSI 
# is statistically different FOR EACH lot: 
PSI_lot1 <- t.test(subset(suspend_df,Manufacturing_Lot=="Lot1")$PSI, mu=1550)
print(PSI_lot1)

PSI_lot2 <- t.test(subset(suspend_df,Manufacturing_Lot=="Lot2")$PSI, mu=1550)
print(PSI_lot2)

PSI_lot3 <- t.test(subset(suspend_df,Manufacturing_Lot=="Lot3")$PSI, mu=1550)
print(PSI_lot3)


#t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means

#> filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain
# one-sample t-test

#t.test(subset(suspend_df$PSI, suspend_df$Manufacturing_Lot=="Lot1"), mu=1500)
#t.test(subset(suspend_df$PSI, suspend_df$Manufacturing_Lot=="Lot2"), mu=1500)
#t.test(subset(suspend_df$PSI, suspend_df$Manufacturing_Lot=="Lot3"), mu=1500)
