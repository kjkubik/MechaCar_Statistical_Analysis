## MechaCar Statistical Analysis

### Purpose: Statistical Analysis on Car Performance

## Linear Regression to Predict MPG

MechaCar prototype data has been gathered so that correlations between features (vehicle_length, vehicle_weight, pooiler_angle, ground_clearance and AWD) and MPG can be discovered. The linear modeling function (*****lm()*****) was used to be able to find feature(s) needing to be used to predict MPG in MechaCar prototypes.

![](images/D1-2.png)

The resulting individual p-values (Pr(>|t|) help us validate that it is the vehicle’s length and ground clearance having the most statistical significance. The coefficients providing a non-random amount of variance to the mpg values in the dataset are vehicle length and ground clearance. It is these two variables needing to be used while evaluating MPG of the prototypes. These are the two variables having the highest probablity of correlation with MPG.

As for the the overall p-value, we can see that it is also smaller that the normal statistical significants of 5%. This lets us know that the data sample we are using does have a statistical significants. We are justified in using this data.

Lastly, the multilpel R-squared (coefficient of determination) lets us know that the data model used has a 71.49% of the variability of our dependent
variable (mpg) explained using the linear model. I don't know how this compares with other data models; however, 71.49% is reasonably high.

The slope of the linear model is not zero; we will be able to use the slope found to clearly see there is a linear relationship between the dependant variable, MPG and the independant variables.

## Summary Statistics on Suspension Coils

Before grouping the suspension coil's data into lots, let's look at the data as a whole and then 'drill down'.

![](images/D2-1.png)
Over all, the mean  and median are very close. There is a difference of only 1.22%. The variance is 62.29356.The deviation from the mean is not large at all. Also the standard deviation is reasonably low also. This leads me to believe the data isn't skew.

Furthermore, when we look at each individual lots data we can see the mean and meadian are at most ~2% away from eachother. I am concern by the variance of 170 found in Lot3. It may be a good idea to spend more time investigating Lot3's data.

![](images/D2-2.png)

•	The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

## T-Test on Suspension Coils

The one-sample t-test is used to determine whether there is a statistical difference between the means of a sample dataset and a hypothesized, potential population dataset.

The first t-test performed is on the entire dataset. The resulting data from the t-test shows us a p-value of .06028. This p-value is above the normal statistical significance level of 5%. Therefore, the p-value indicates the null hypothesis cannot be rejected and the means are statistically similar.

The other t-tests performed are on each of the dataset's lot number subsets.
The first and second lots, Lot1 and Lot2, each show a p-value agreeing with the entire dataset's results.

It is not until we observe Lot3's resulting t-test that we are able ot  reis also over the number statistical significace levelof 5%

![](images/D3-1.png)
![](images/D3-2.png)
![](images/D3-3.png)
![](images/D3-4.png)

## Design a Study Comparing the MechaCar to the Competition

