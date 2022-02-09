## MechaCar Statistical Analysis

### Purpose: Statistical Analysis on Car Performance and Sales

## Linear Regression to Predict MPG

MechaCar prototype metrics have been gathered so that correlations between the prototype's features (vehicle_length, vehicle_weight,spoiler_angle, ground_clearance and AWD) and MPG can be discovered. The linear modeling function (*****lm()*****) was used to be able to find feature(s) needing to be used to predict MPG in MechaCar prototypes.

![](images/D1-2.png)

The above image shows the linear modeling function's results.

Observing the coefficients p-values (Pr(>|t|) columns, it becomes obvious it is the vehicle’s length and ground clearance having the most statistical significance. They provide a non-random amount of variance to the mpg values in the dataset. It is these two variables needing to be used while predicting MPG of the prototypes. These are the two variables having the highest probability of correlation with MPG.

As for the overall p-value, we can see it is also significantly smaller than that of the normal statistical significance of 5%. This lets us know the data sample being used does have a statistical significance. We are justified in using this data.

Lastly, the multiple R-squared (coefficient of determination) lets us know the data model used has a 71.49% of the variability of our dependent variable (mpg) explained using the linear model. I don't know how this compares with other data models; however, 71.49% is reasonably high.

Summary: There is a linear relationship between the prototype's features and MPG; therefore, the slope of the line should be nonzero. The metrics, length of cars and ground clearance can be used for linear regression modeling for the prediction of MPG.

## Summary Statistics on Suspension Coils

The design specifications for MechaCar suspension coils states the variance of the suspension coils must not exceed 100 pounds per square inch. To test this, we first capture the summary statistics of all suspension coils (below).

![](images/D2-1.png)

For the entire sampling we can see the variance is 62.29356. So, initially, it appears the suspension coils pass specifications.

![](images/D2-2.png)

However, when we compare each lots statistics (above), it becomes obvious there is a large variance in Lot3's sample. The manufacturing process is not consistent across production lots.

Summary: There are a few concerns needing to be address. The design specification of 100 PSI does not state whether this is a plant-wide statistical specification or whether it is an expected outcome per lot. The design specifications need to be corrected by the team owning the design specifications.
Next, Lot3 is showing a LARGE variance, lot3's data (as well as the machines used to create lot 3's coils) needs to be investigated and addressed properly.

## T-Test on Suspension Coils

To determine whether the mean PSI values are equal to the population mean 1500 for the total lots and for each lot individually, one-sample t-tests were performed and the results are shown below.

The first t-test (shown below) is performed on the entire dataset. The resulting data from the t-test shows us a p-value of .06028. This p-value is above the normal statistical significance level of 5%. Therefore, the p-value indicates the null hypothesis should not be rejected and the means are statistically similar.
![](images/D3-1.png)

As for the other t-tests. Lot1 and Lot 2 aren't below the 5% 'normal' statistical significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis. The two means are statistically similar. Both p-values agree with the entire dataset's results.

![](images/D3-2.png)![](images/D3-3.png)
When observing Lot3's resulting t-test, we are able to see the p-level is under the statistical significace level of 5%. Therefore, we reject the null hypothesis.

![](images/D3-4.png)

Summary: We do not have sufficient evidence to reject the null hypothesis for lots 1 and 2. However, we would reject the null hypothesis and state Lot3 is not statistically similar to the population.

## Design a Study Comparing the MechaCar to the Competition

MechaCar needs to make sure they are selling as many cars as possible. They have been planning to attempt using customer online car search engine results to come up with factors important to the drivers of their current vehicles.

MechaCar will be able to gather the following data:

- maximum speed the car(s) will go
- engine size
- ease of maintenance
- safety features
- crash dummy test score
- safety ratings/scores
- maintenance costs
- warranties
- overall cost of the vehicle
- comfortability rating
- user friendliness
- designed for the buyer rating (does the customer like the look and feel of the car)

Once the data is gathered, it will be studied first by attempting linear regression, summary and t-tests. The question that our study will attempt answering is:  **Does anyone of these metrics effect the number of cars sold?**

The null hypothesis will the following (where x is one of the metrics given): If x is not related to the number of cars sold, then this metric will not be found as part of a customer's search.

If any of the data is found to be of any statistical significance, it will be used in an ANOVA analysis with other customer database obtained by MechaCar.

