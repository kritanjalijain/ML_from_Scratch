## Day 40 Project - Image Compression using k-means algorithm, clustering, pca

### Project Structure 

`spam_classifier.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.
ex7.m - Octave/MATLAB script for the rst exercise on K-means
ex7 pca.m - Octave/MATLAB script for the second exercise on PCA

* data1.mat - Example Dataset for PCA
* data2.mat - Example Dataset for K-means
* faces.mat - Faces Dataset
* girl.png - Example Image
* displayData.m - Displays 2D data stored in a matrix
* drawLine.m - Draws a line over an exsiting figure
* plotDataPoints.m - Initialization for K-means centroids
* plotProgresskMeans.m - Plots each step of K-means as it proceeds
* runkMeans.m - Runs the K-means algorithm
* pca.m - Perform principal component analysis
* projectData.m - Projects a data set into a lower dimensional space
* recoverData.m - Recovers the original data from the projection
* findClosestCentroids.m - Find closest centroids (used in K-means)
* computeCentroids.m - Compute centroid means (used in K-means)
* kMeansInitCentroids.m - Initialization for K-means centroids

### How to run?
You can run project either in `octave` or `MATLAB`. 
1. Clone repository using `git clone `
2. `cd` to project directory and either run following command in `octave` or `MATLAB`
2. `run('spam_classifier.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).

