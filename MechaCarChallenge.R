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