## Day 40 Project - Image Compression using k-means algorithm, clustering, pca

### Project Description
Implement the K-means clustering algorithm and apply it to compress an image. The K-means algorithm is used for image compression by reducing the number of colors that occur in an image to only those that are most common in that image.

In the second part, principal component analysis is used to find a low-dimensional representation of face images.

### Implementing K-means
The K-means algorithm is a method to automatically cluster similar data examples together. The intuition behind K-means is an iterative procedure that starts by guess-
ing the initial centroids, and then refines this guess by repeatedly assigning examples to their closest centroids and then recomputing the centroids based on the assignments.

#### Finding closest centroids
In the "cluster assignment" phase of the K-means algorithm, the algorithm assigns every training example x<sup>(i)</sup> to its closest centroid, given the current positions of centroids. The `findClosestCentroids.m` function takes the data matrix `X` and the locations of all centroids inside `centroids` and should output a one-dimensional array `idx` that holds the index (a value in {1......K}, where K is total number of centroids) of the closest centroid to every training example.

#### Computing centroid means
Given assignments of every point to a centroid, the second phase of the algorithm recomputes, for each centroid, the mean of the points that were assigned to it. The script `main_imagecompression.m` will call the function in `computeCentroids.m` and output the centroids after the first step of K-means.

### Image compression with K-means
In a straightforward 24-bit color representation of an image (Figure 1) each pixel is represented as three 8-bit unsigned integers (ranging from 0 to 255) that specify the red, green and blue intensity values. This encoding is often refered to as the RGB encoding. The image contains thousands of colors, the task is to reduce the number of colors to 16 colors.
By making this reduction, it is possible to represent (compress) the photo in an efficient way. Specifically, you only need to store the RGB values of the 16 selected colors, and for each pixel in the image you now need to only store the index of the color at that location (where only 4 bits are necessary to represent 16 possibilities).


![](results/girl.png)

###### Figure 1- The original 128x128 image.

Here, the K-means algorithm is used to select the 16 colors that will be used to represent the compressed image. Concretely, every pixel in the original image is treated as a data example and the K-means algorithm is used to find the 16 colors that best group (cluster) the pixels in the 3-dimensional RGB space. Once the cluster centroids on
the image are computed, the 16 colors are used to replace the pixels in the original image.

#### K-means of Pixels
The `main_imagecompression.m` script first loads the image, and then reshapes it to create an mx3 matrix of pixel colors (where m = 16384 = 128 x 128), and calls the K-means function on it.
After finding the top K = 16 colors to represent the image, each pixel position is assigned to its closest centroid using the `findClosestCentroids` function. This represents the original image using the centroid assignments of each pixel.

![](results/compressed_16colors.png)

###### Figure 2: Original and reconstructed image (when using K-means to compress the image).

### Project Structure 

 `main_pca.m`  - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.
 
`Main_imagecompression.m` - Octave/MATLAB script for the first part on K-means

`main_pca.m` - Octave/MATLAB script for the second part on PCA

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
2. `run('main_pca.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).

