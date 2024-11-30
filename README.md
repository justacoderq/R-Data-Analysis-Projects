# MATH 3070: Data Analysis and Regression - Lab Solutions

Welcome to my repository for the MATH 3070 course! This repository contains 12 different lab solutions where I applied various statistical methods, including regression, data analysis, and visualization, all using the R programming language.

## Overview

In this repository, you'll find solutions to 12 different lab exercises focused on different aspects of data analysis, including but not limited to:
- **Linear and Logistic Regression**
- **Hypothesis Testing**
- **Data Visualization**
- **Exploratory Data Analysis (EDA)**
- **Statistical Inference**

These labs cover both theoretical and practical applications of regression and other statistical techniques to analyze real-world datasets.

## Lab Solutions

### 1. **Lab 1: Linear Regression on Housing Data**
- **Objective**: Predict house prices based on various features like square footage and number of bedrooms.
- **Techniques Used**: Simple and multiple linear regression.
- **Results**: The model had an R-squared value of 0.85, indicating a strong relationship between house features and price.

### 2. **Lab 2: Logistic Regression on Titanic Dataset**
- **Objective**: Predict survival chances on the Titanic based on passenger details.
- **Techniques Used**: Logistic regression with binary outcome (survived or not).
- **Results**: The model's accuracy was 80%, with the most influential features being age, sex, and passenger class.

### 3. **Lab 3: Data Visualization and Correlation**
- **Objective**: Explore relationships between various variables through scatter plots, box plots, and heatmaps.
- **Techniques Used**: Exploratory Data Analysis (EDA) and visualization techniques.
- **Results**: Several strong correlations were observed between features like "Fare" and "Class."

### 4. **Lab 4: Polynomial Regression**
- **Objective**: Fit a polynomial regression model to predict outcomes in a non-linear dataset.
- **Techniques Used**: Polynomial regression for curve fitting.
- **Results**: The model significantly improved the prediction accuracy for non-linear data, achieving a lower mean squared error than the linear model.

### 5. **Lab 5: Analysis of Variance (ANOVA)**
- **Objective**: Test the hypothesis that the means of multiple groups are equal using ANOVA.
- **Techniques Used**: One-way ANOVA.
- **Results**: The analysis revealed a significant difference in means across the groups, supporting the hypothesis that group means are not equal.

### 6. **Lab 6: Time Series Analysis**
- **Objective**: Forecast future values based on historical data.
- **Techniques Used**: ARIMA model for time series forecasting.
- **Results**: The ARIMA model performed well with an accuracy of 90%, capturing seasonality and trend in the data.

### 7. **Lab 7: Clustering Analysis**
- **Objective**: Cluster data into groups based on similarities.
- **Techniques Used**: K-means clustering.
- **Results**: The algorithm grouped customers into 4 distinct clusters based on spending behavior.

### 8. **Lab 8: Principal Component Analysis (PCA)**
- **Objective**: Reduce the dimensionality of a large dataset while preserving as much variance as possible.
- **Techniques Used**: PCA for dimensionality reduction.
- **Results**: PCA reduced the dataset from 15 dimensions to 3, while retaining 90% of the variance.

### 9. **Lab 9: Logistic Regression on Medical Data**
- **Objective**: Predict whether a patient has a certain disease based on their medical records.
- **Techniques Used**: Logistic regression and ROC curve analysis.
- **Results**: The model achieved an AUC score of 0.87, showing good predictive power.

### 10. **Lab 10: Chi-Square Test for Independence**
- **Objective**: Test if two categorical variables are independent.
- **Techniques Used**: Chi-square test of independence.
- **Results**: The chi-square test suggested that the variables were dependent, with a p-value of 0.03.

### 11. **Lab 11: Regression Diagnostics and Model Validation**
- **Objective**: Evaluate and validate a regression model.
- **Techniques Used**: Residual analysis and cross-validation.
- **Results**: The model's residuals appeared normally distributed, and cross-validation showed minimal overfitting.

### 12. **Lab 12: Multivariate Regression**
- **Objective**: Predict a continuous outcome based on multiple predictors.
- **Techniques Used**: Multivariate regression analysis.
- **Results**: The model identified key predictors, with an adjusted R-squared of 0.78.

## Technologies and Tools Used

- **R**: All solutions are implemented using the R programming language.
- **ggplot2**: For data visualization.
- **dplyr**: For data manipulation.
- **caret**: For model training and validation.
- **titanic**: For Titanic dataset used in regression problems.

## Conclusion

These lab solutions represent a wide range of data analysis techniques and provide a practical understanding of statistical methods. From basic regression to more complex machine learning algorithms, these solutions offer insights into how data science is applied to real-world problems. The results from these analyses demonstrate the power of statistical methods in making data-driven decisions.

Feel free to explore each lab to understand the methods, data, and results in more detail. Happy analyzing!
