# Challenge 1 : Linear Regression to Predict MPG
#install.packages("tidyverse")
#install.packages("dplyr")

# read open input file: 
mechacar_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

num_rows <- 1:nrow(mechacar_df)

# generate multiple linear regression model to determine the p-value 
# and r-squared value for the model
summary(lm( mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechacar_df)) 

