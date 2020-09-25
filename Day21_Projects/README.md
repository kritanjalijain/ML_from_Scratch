# Day 21 - Neural Network using backpropagation Project 2 (Handwriting Recognition)

### Project Description
Implement backpropagation algorithm to learn the parameters for the neural network to recognize hand-written digits.

The file `data1.mat` contains the dataset for the above neural network problem. The dataset is a subset of the [MNIST handwritten digit dataset](http://yann.lecun.com/exdb/mnist/) that contains 5000 training examples of handwritten digits.
The `weights.mat` contsains the parameters of the neural network.

### Visualizing the data
Before starting on any task, it is often useful to understand the data by visualizing it. For this dataset, load and display the data on a 2-dimensional plot by calling the function `displayData`.

![](results/V1.png)

###### Figure 1- 100 examples from the dataset


### Project Structure 

`handwriting_recognition_3.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.

User-Defined Function files

* `data1.mat` - Training set of hand-written digits
* `weights.mat` - Neural network parameters 

1. `displayData.m` - Function to help visualize the dataset
1. `sigmoid.m` - Sigmoid function
1. `fmincg.m` - Function minimization routine (similar to fminunc)
1. `computeNumericalGradient.m` - Numerically compute gradients
1. `checkNNGradients.m` - Function to help check your gradients
1. `debugInitializeWeights.m` - Function for initializing weights
1. `predict.m` - Neural network prediction function
1. `sigmoidGradient.m` - Compute the gradient of the sigmoid function
1. `randInitializeWeights.m` - Randomly initialize weights
1. `nnCostFunction.m` - Neural network cost function


### How to run?
You can run project either in `octave` or `MATLAB`. 
1. Clone repository using `git clone `
2. `cd` to project directory and either run following command in `octave` or `MATLAB`
2. `run('handwriting_recognition_3.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).

