# Day 17 - Mutli-classifictation Neural Network Project 1 (Handwriting Recognition)

### Project Description
Implement one-vs-all neural network to recognize hand-written digits.

The file `data1.mat` contains the dataset for the above neural network problem. The dataset is a subset of the [MNIST handwritten digit dataset](http://yann.lecun.com/exdb/mnist/) that contains 5000 training examples of handwritten digits.

### Project Structure 

`handwriting_recognition_2.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.

User-Defined Function files
1. `displayData.m` - Function to help visualize the dataset
1. `sigmoid.m` - Sigmoid function
1. `lrCostFunction.m` - Logistic regression cost function
1. `oneVsAll.m` - Train a one-vs-all multi-class classifier
1. `predict.m` - 
1. `predictOneVsAll.m` - Predict using a one-vs-all multi-class classifier

### How to run?
You can run project either in `octave` or `MATLAB`. 
1. Clone repository using `git clone `
2. `cd` to project directory and either run following command in `octave` or `MATLAB`
2. `run('handwriting_recognition_2.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).

