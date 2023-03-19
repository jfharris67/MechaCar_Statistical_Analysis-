# Load dplyr package
library(dplyr)

# Set working directory
setwd("/Users/johnharris/Documents/R_Analysis/MechaCar_Statistical_Analysis-")

# Import and read the MechaCar_mpg.csv file
mechaCar_data <- read.csv("MechaCar_mpg.csv")

# Perform linear regression
linear_regression <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mechaCar_data)

# Get the summary of the linear regression model
linear_regression_summary <- summary(linear_regression)

# Print the summary
print(linear_regression_summary)

coil_data <- read.csv("Suspension_Coil.csv")

library(dplyr)

total_summary <- coil_data %>%
  summarise(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            Standard_Deviation = sd(PSI))
print(total_summary)

lot_summary <- coil_data %>%
  group_by(Manufacturing_Lot) %>%
  summarise(Mean = mean(PSI),
            Median = median(PSI),
            Variance = var(PSI),
            Standard_Deviation = sd(PSI))
print(lot_summary)
