# Day 11 - Logistic Regression Project 1

### Project Description

In this project, I built a logistic regression model to predict each applicant's chance of admission in a university based on their results on two exams. have historical data from previous applicants that you can use as a training set for logistic regression. For each training example, we have the applicant's scores on two exams and the admissions decision. Your task is to build a classification model that estimates an applicant's probability of admission based the scores from those two exams. 

### Plotting the Data
Before starting to implement any learning algorithm, it is often useful to understand the data by visualizing it. For this dataset, I have used a scatter plot to visualize the data. In `student_admission_prediction.m`, the dataset is loaded from the data file `studentdata.txt` and then the script calls the `plotData` function to create a scatter plot of the data.

### Gradient Descent
Next, I implemented the cost function and gradient for logistic regression. The script calls the file `costFunction.m` to implement the algorithm.

![](results/Scatter_Plot_1.png)
