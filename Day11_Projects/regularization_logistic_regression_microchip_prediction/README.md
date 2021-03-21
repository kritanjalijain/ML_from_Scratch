# Day 11 - Regularized Logistic Regression Project 2

### Project Description
In this project, I implemented regularized logistic regression to predict whether microchips from a fabrication plant passes quality assurance (QA) based on the test results for some microchips on two different tests. From these tests, we would like to determine whether the microchips should be accepted or rejected.

The file ![microchipdata.txt](microchipdata.txt) contains historical data from previous applicants. The first column is the exam 1 score, the second column is the score of exam 2 and the third column is the the admissions decision. Zero indicates not admitted while one indicates admitted students.

### Plotting the Data
Before starting to implement any learning algorithm, it is often useful to understand the data by visualizing it. For this dataset, I have used a scatter plot to visualize the data. In `microchip_prediction.m`, the dataset is loaded from the data file `microchipdata.txt` and then the script calls the `plotData` function to create a scatter plot of the data.

##### Figure 1- Scatter Plot of training data

![](results/Scatter_Plot_3.png)

Figure 1 shows that the dataset cannot be separated into positive and negative examples by a straight-linethrough the plot. Therefore, a straightforward application of logistic regression will not perform well on this dataset since logistic regression will only be able to find a linear decision boundary.

### Feature Mapping
One way to fit the data better is to create more features from each data point. In the provided `functionmapFeature.m`, I mapped the features into all polynomial terms of x1 and x2 up to the sixth power.
This is because a logistic regression classifier trained on this higher-dimension feature vector will have a more complex decision boundary and will appear nonlinear when drawn in our 2-dimensional plot.
As a result of this mapping, our vector of two features (the scores on two QA tests) has been transformed into a 28-dimensional vector. A logistic
regression classifier trained on this higher-dimension feature vector will have a more complex decision boundary and will appear nonlinear when drawn in our 2-dimensional plot.
While the feature mapping allows us to build a more expressive classifier, it also more susceptible to overfitting.
 
### Cost function and gradient
Now you will implement code to compute the cost function and gradient for regularized logistic regression. `costFunctionReg.m` returns the cost and gradient which are then called in `microchip_prediction.m` to compute them.

#### Learning parameters using `fminunc`
After computing the cost and gradient for regularized logistic regression, `fminunc` is used to learn the optimal parameters theta.

### Plotting the decision boundary
To visualize the model learned by this classifier, the function `plotDecisionBoundary.m` is used which plots the (non-linear) decision boundary that separates the positive and negative examples. In `plotDecisionBoundary.m`, the non-linear decision boundary is plotted by computing the classifier's predictions on an evenly spaced grid and then and a contour plot of where the predictions change from y = 0 to y = 1 is drawn.

### Understanding Overfitting
Next, different regularization parameters are tried to to understand how regularization prevents overfitting.

* Case 1: With a small lambda, the classifier gets almost every training example correct, but draws a very complicated boundary, thus overfitting the data.

##### Figure 2- Scatter Plot of Overfitting case

![](results/Scatter_Plot_7.png)
