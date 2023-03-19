# MechaCar_Statistical_Analysis-
## Linear Regression to Predict MPG
<img width="519" alt="Linear Regression to Predict MPG" src="https://user-images.githubusercontent.com/114355199/226210928-4cf4490c-469f-417e-babe-0784d47ac4c6.png">

### Based on the linear regression results, the following interpretations can be made:
#### 1. Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Vehicle_length and ground_clearance provided a non-random amount of variance to the mpg values in the dataset. This is indicated by their low p-values (less than 0.05), which suggests that these variables are statistically significant predictors of mpg.

#### 2. Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model is not considered to be zero. The F-statistic tests the null hypothesis that all regression coefficients (excluding the intercept) are equal to zero. In our case, the F-statistic is 22.07, and the corresponding p-value is 5.35e-11, which is very small (less than 0.05). This means we can reject the null hypothesis and conclude that at least one of the regression coefficients is not equal to zero, indicating that the slope of the linear model is not zero.

#### 3. Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model predicts the mpg of MechaCar prototypes moderately effectively. The multiple R-squared value is 0.7149, meaning that approximately 71.49% of the variability in mpg can be explained by this linear model. The adjusted R-squared value is 0.6825, which accounts for the number of predictors in the model and is a more accurate measure of the model's explanatory power. While the model can explain a substantial portion of the variability in mpg, there is still room for improvement, as around 28.51% of the variability remains unexplained by this model. Further analysis could potentially identify additional variables that contribute to the prediction of mpg or improve the model's predictive power through feature engineering or model selection techniques.

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Based on the summary statistics, we can assess whether the current manufacturing data meets this design specification for all manufacturing lots in total and each lot individually.

<img width="423" alt="Total_Summary" src="https://user-images.githubusercontent.com/114355199/226211997-1ec624e2-eebb-47b5-aaeb-2e4a7463008c.png">

<img width="557" alt="Lot_Summary" src="https://user-images.githubusercontent.com/114355199/226212006-7b34a811-f3ab-4856-8f3e-791c129fdf6c.png">

- Total manufacturing lots: The total_summary dataframe shows that the variance for all manufacturing lots combined is 62.29, which is less than 100. This means that the design specification is met for all manufacturing lots combined.

- Individual manufacturing lots: The lot_summary dataframe displays the following variances for each lot:

  - Lot1: 0.98
  - Lot2: 7.47
  - Lot3: 170
  
The variance for Lot1 and Lot2 is below 100, which means the design specification is met for these lots individually. However, the variance for Lot3 is 170, which exceeds the limit of 100. Therefore, the design specification is not met for Lot3.

In conclusion, the current manufacturing data meets the design specification for all manufacturing lots combined and for Lot1 and Lot2 individually. However, the design specification is not met for Lot3, as its variance exceeds the allowed limit of 100 pounds per square inch.  

## T-Tests on Suspension Coils
Based on the results of the t-tests, we can observe the following:

### For all manufacturing lots combined:
- The p-value is 0.06028, which is greater than the 0.05 significance level. This means that we fail to reject the null hypothesis, and there is not enough evidence to conclude that the PSI for all manufacturing lots combined is statistically different from the population mean of 1,500 PSI.
### For Lot1:
- The p-value is 1, which is greater than the 0.05 significance level. This means that we fail to reject the null hypothesis, and there is not enough evidence to conclude that the PSI for Lot1 is statistically different from the population mean of 1,500 PSI.
### For Lot2:
- The p-value is 0.6072, which is greater than the 0.05 significance level. This means that we fail to reject the null hypothesis, and there is not enough evidence to conclude that the PSI for Lot2 is statistically different from the population mean of 1,500 PSI.
### For Lot3:
The p-value is 0.04168, which is less than the 0.05 significance level. This means that we reject the null hypothesis, and there is enough evidence to conclude that the PSI for Lot3 is statistically different from the population mean of 1,500 PSI.
### Summary
In summary, the t-tests show that the PSI values for Lot1 and Lot2 are not statistically different from the population mean of 1,500 PSI, while the PSI values for Lot3 are statistically different from the population mean. This suggests that there may be some inconsistencies in the manufacturing process for Lot3 that need to be investigated further.
