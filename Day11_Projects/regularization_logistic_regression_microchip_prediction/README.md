# Day 11 - Regularized Logistic Regression Project 2

### Project Description
In this project, I implemented regularized logistic regression to predict whether microchips from a fabrication plant passes quality assurance (QA) based on the test results for some microchips on two different tests. From these tests, we would like to determine whether the microchips should be accepted or rejected.

The file `microchipdata.txt` contains historical data from previous applicants. The first column is the exam 1 score, the second column is the score of exam 2 and the third column is the the admissions decision. Zero indicates not admitted while one indicates admitted students.

### Plotting the Data
Before starting to implement any learning algorithm, it is often useful to understand the data by visualizing it. For this dataset, I have used a scatter plot to visualize the data. In `microchip_prediction.m`, the dataset is loaded from the data file `microchipdata.txt` and then the script calls the `plotData` function to create a scatter plot of the data.

##### Figure 1- Scatter Plot of training data

![](results/Scatter_Plot_3.png)

Figure 1 shows that the dataset cannot be separated into positive and negative examples by a straight-linethrough the plot. Therefore, a straightforward application of logistic regression will not perform well on this dataset since logistic regression will only be able to find a linear decision boundary.

### Feature Mapping
One way to fit the data better is to create more features from each data point. In the provided `functionmapFeature.m`, I mapped the features into all polynomial terms of x1 and x2 up to the sixth power.
A logistic regression classifier trained on this higher-dimension feature vector will have a more complex decision boundary and will appear nonlinear when drawn in our 2-dimensional plot.
 
### Cost function and gradient
