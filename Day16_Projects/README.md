# Day 16 - Multi-classifictation Logistic Regression Project 1 (Handwriting Recognition)

### Project Description
Implement one-vs-all logistic to recognize hand-written digits.

The file `data1.mat` contains the dataset for the above logisitc regression problem. The dataset is a subset of the [MNIST handwritten digit dataset](http://yann.lecun.com/exdb/mnist/) that contains 5000 training examples of handwritten digits where each training example is a 20 pixel by 20 pixel grayscale image of the digit. Each pixel is represented by a floating point number indicating the grayscale intensity at that location. This gives us a 5000 by 400 matrix X where every row is a training example for a handwritten digit image.

### Visualizing the data and Model Representation
Before starting on any task, it is often useful to understand the data by visualizing it. For this dataset, load and display the data on a 2-dimensional plot by calling the function `displayData`

![](https://github.com/kritanjalijain/100_Days_0f_ML/blob/master/Day21_Projects/handwritten_digit_recognition_backpropagation/results/V1.png)

###### Figure 1- Display 100 examples from the dataset

### Vectorizing Logistic Regression
First vectorize the cost function J(&theta;) followed by vectorizing the gradient and lastly add regularization to the cost function.

### One-vs-all Classification
Implement one-vs-all classification by training multiple regularized logistic regression classifiers, one for each of the K classes in the dataset. ` oneVsAll.m` trains one classifier for each class, it returns all the classifier parameters in a matrix &Theta; &#8714;	R<sup> K x (N+1) </sup>, where each row of &Theta; corresponds to the learned
logistic regression parameters for one class.

#### One-vs-all Prediction
After training the one-vs-all classifier, use it to predict the digit contained in a given image. For each input, compute the probability of it belonging to each class using the trained logistic regression classifiers. The one-vs-all prediction function will pick the class for which the corresponding logistic regression classifier outputs the highest probability and return the class label (1, 2,..., or K) as the prediction for the input example.
`handwriting_number_recognition_1.m` will call predictOneVsAll function in `predictOneVsAll.m` to make predictions using the learned value of &Theta; .

### Results
The training set accuracy is about 94.9% (i.e., it classifies 94.9% of the examples in the training set correctly).

### Project Structure 

`handwriting_number_recognition_1.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.

User-Defined Function files
1. `displayData.m` - Function to help visualize the dataset
1. `fmincg.m` - Function minimization routine (similar to fminunc)
1. `sigmoid.m` - Sigmoid function
1. `lrCostFunction.m` - Logistic regression cost function
1. `oneVsAll.m` - Train a one-vs-all multi-class classifier
1. `predictOneVsAll.m` - Predict using a one-vs-all multi-class classifier

### How to run?
You can run project either in `octave` or `MATLAB`. 
1. Clone repository using `git clone `
2. `cd` to project directory and either run following command in `octave` or `MATLAB`
2. `run('handwriting_number_recognition_1.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).
