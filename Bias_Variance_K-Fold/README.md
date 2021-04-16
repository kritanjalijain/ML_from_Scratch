# Day 26- Bias and Variance

### Project Description
To study models with different bias-variance properties using learning curves and k-folds cross validation


## Regularized Linear Regression
Implement regularized linear regression to predict the amount of water flowing out of a dam using the change of water level in a reservoir.

### Visualizing the dataset
Begin by visualizing the dataset containing historical records on the change in the water level, x, and the amount of water flowing out of the dam, y.
This dataset is divided into three parts:
* A training set that your model will learn on: X, y
* A cross validation set for determining the regularization parameter: Xval, yval
* A test set for evaluating performance. These are \unseen" examples which your model did not see during training: Xtest, ytest


<img src="results/V1(1).png"
     height="450" width="500" />

##### Figure 1- Plot of Training Data

### Regularized linear regression cost function
Next, the regularized linear regression cost function was calculated using `theta` initialized at [1; 1] in `linearRegCostFunction.m.`.

### Regularized linear regression gradient
Next, the gradient was calculated, returning it in the variable `grad`initialized at [1; 1] in `linearRegCostFunction.m.`.

### Fitting linear regression
Function in `trainLinearReg.m` is used to compute the optimal values of &theta;. This training function uses `fmincg` to optimize the cost function. 
The  `bias_variance.m` script uses `plotFit.m` to plot the best fit line


<img src="results/V2.png"
     height="450" width="500" />

##### Figure 2- Linear Fit

The best fit line tells us that the model is not a good fit to the data because the data has a non-linear pattern.

## Bias-variance
An important concept in machine learning is the bias-variance tradeoff. Models with high bias are not complex enough for the data and tend to underfit, while models with high variance overfit to the training data.

### Learning curves
A learning curve plots training and cross validation error as a function of training set size. To plot the learning curve, we need a training and cross validation set
error for different training set sizes.
The `trainLinearReg` function finds the &theta; parameters. After learning the &theta; parameters, compute the error on the training and cross validation sets in `learningCurve.m` which will return a vector of errors for the training set and cross validation set. Print the learning curves and produce a plot.



<img src="results/V3.png"
     height="450" width="500" />

##### Figure 3- Linear regression learning curve

It is observed that both the train error and cross validation error are high when the number of training examples is increased. This reflects a high bias problem in the model - the linear regression model is too simple and is unable to fit our dataset well.

## Polynomial regression
The problem with the linear model was that it was too simple for the data and resulted in underfitting (high bias). Thus, this problem was tried to be fixed by adding more features.
The `polyFeatures` function maps the original training set X of size m x 1 into its higher powers. After that, they are applied to the training set, the test set, and the
cross validation set.

### Learning Polynomial Regression
After the `polyFeatures` function map features to a higher dimension, we proceed to train polynomial regression using linear regression cost function since even though we have polynomial terms in our feature vector, we are still solving a linear regression optimization problem. The polynomial terms have simply turned into features that we can use for linear regression. 

Before learning the parameters &theta; for the polynomial regression,  `featureNormalize` will normalize the features of the training set, storing the `mu`, `sigma` parameters separately.

After that two plots are generated for polynomial regression with &lambda; = 0.
  

<img src="results/overfit.png"
     height="450" width="500" />

##### Figure 4- Polynomial fit, &lambda; = 0

From Figure 4, it is observed that the polynomial fit is able to follow the datapoints very well - thus, obtaining a low training error. However, the polynomial fit is very complex and even drops off at the extremes. This is an indicator that the polynomial regression model is overfitting the training data and will not generalize well. 


<img src="results/highvariance.png"
     height="450" width="500" />

##### Figure 5- Polynomial learning curve, &lambda; = 0

From Figure 5, it is observed that the learning curve shows the same effect where the low training error is low, but the cross validation error is high. There is a gap between the training and cross validation errors, indicating a high variance problem.


One way to combat the overfitting (high-variance) problem is to add regularization to the model.

### Adjusting the regularization parameter &lambda;

For &lambda; = 1, a poylnomial fit is observed that follows the data trend well and a learning curve showing that both the cross validation and training error converge to a relatively low value. This shows the &lambda; = 1 regularized polynomial regression model does not have the high-bias or high-variance problems. In effect, it achieves a good trade-off between bias and variance.

<img src="results/lambda1.png"
     height="450" width="500" />

##### Figure 6- Polynomial fit, &lambda; = 1

<img src="results/lambda_1.png"
     height="450" width="500" />

##### Figure 7- Polynomial learning curve, &lambda; = 1


For &lambda; = 100, a polynomial fit is observed that does not follow the data well. In this case, there is too much regularization and the model is unable to fit the training data.

<img src="results/lambda100.png"
     height="450" width="500" />

##### Figure 8- Polynomial fit, &lambda; = 100

<img src="results/lambda_100.png"
     height="450" width="500" />

##### Figure 9- Polynomial learning curve, &lambda; = 100

### Selecting &lambda; using a cross validation set
Now, a cross validation set is used to evaluate how good each &lambda; value is. After selecting the best &lambda; value using the cross validation set, the model is evaluated on the test set to estimate how well the model will perform on actual unseen data.
The `trainLinearReg` function is implemented to train the model using different values of &lambda; and compute the training error and cross validation error.
The `validationCurve` function will plot a cross validation curve of error v.s. &lambda; 


<img src="results/cross_train.png"
     height="450" width="500" />

##### Figure 10- Selecting &lambda; using a cross validation set

In the above figure, it is seen that the best value of &lambda; is around 3.

### Computing test set error
Next the final model is evaluated using the best value of &lambda; i.e. 3 on a test set that was not used in any part of training (that is, it was neither used to select the &lambda; parameters, nor to learn the model parameters &theta;).

### Linear Regression Model vs Polynomial Regression Model

<img src="results/v.png"
     height="450" width="500" />

##### Figure 11- Linear Regression Model vs Polynomial Regression Model on training data

### Alternate Method- Partition the dataset
The below steps have been carried out on a partition of the dataset

### Using K-fold cross validation 
Instead of using learning curves to detect high bias or variance issues, followed by validation curves to determine the optimal regularization parameter value, the `kfoldLoss` function is used to compute the cost of all models in the partitioned model variable using the validation set. Then the individual model with
the lowest cost is extracted using the `selectModels` function. The result will be a RegressionLinear model variable corresponding to the best model as found by cross-validation.

### Visualising Model Responses
Next, the training data, validation data, and the models are plotted for each &lambda;


<img src="results/k-fold.png"
     height="450" width="500" />

##### Figure 12 - Best value of lamdba using a fixed set of parameters

### Hyperparameter Optimization
Hyperparameter optimization  is used with `fitrlinear` to automatically obtain the best cross-validation strength and the corresponding model.
 * Step 1- Specify the cross-validation method 
 * Step 2- Automatically select &lambda using hyperparameter optimization



<img src="results/min_obj.png"
     height="450" width="500" />

##### Figure 13 - Progress plot 1: Minimum Objective vs No of evaluations

<img src="results/obj_func.png"
     height="450" width="500" />

##### Figure 14 - Progress plot 2: Objective Function Model

The best model found above using a fixed set of parameters and manual model selection plotted alongside the optimized model computed below for comparison.

<img src="results/hyperparameter.png"
     height="450" width="500" />

##### Figure 15 - Fixed Parameter Manual Model vs Hyperparameterized Optimized Model

### Project Structure
 `bias_variance.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.
  
#### User-Defined Function files
1. `data.mat` - Dataset
1. `featureNormalize.m` - Feature normalization function
1. `fmincg.m` - Function minimization routine 
2. `plotFit.m` - Plot a polynomial fit
3. `trainLinearReg.m` - Trains linear regression using cost function
4. `linearRegCostFunction.m` - Regularized linear regression cost function
5. `learningCurve.m` - Generates a learning curve
6. `polyFeatures.m` - Maps data into polynomial feature space
7. `validationCurve.m` - Generates a cross validation curve

### How to run?
You can run project either in `octave` or `MATLAB`. 
1. Clone repository using `git clone `
2. `cd` to project directory and either run following command in `octave` or `MATLAB`
2. `run('bias_variance.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).
