# Day 42 - Movie Recommendation System

### Project Description
Build a recommender system for movies using collabrative filtering. Thus, by implementing the collaborative filtering learning algorithm, we have applied it to a dataset of movie ratings. This dataset consists of ratings on a scale of 1 to 5.

The first part of the script `cofi.m` will load the dataset `movies.mat`, providing the variables Y and R in your Octave/MATLAB environment.

### Visualizing the data and Model Representation



### Project Structure 

`handwriting_recognition_3.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.

User-Defined Function files

* `movies.mat` - movie review dataset
* `movieParams.mat` - Parameters provided for debugging
* `movie ids.txt` - List of movies

1. `displayData.m` - Function to help visualize the dataset
1. `fmincg.m` - Function minimization routine (similar to fminunc)
1. `loadMovieList.m` - Loads the list of movies into a cell-array
1. `cofiCostFunc.m` - Implement the cost function for collaborative filtering
1. `normalizeRatings.m` - Mean normalization for collaborative filtering


### How to run?
You can run project either in `octave` or `MATLAB`. 
1. Clone repository using `git clone `
2. `cd` to project directory and either run following command in `octave` or `MATLAB`
2. `run('cofi.m')` to run this project

### Where to find help?
* If you do not have Octave installed, please refer to the installation instructions on the [Octave Download](https://www.gnu.org/software/octave/download.html) official site.
* At the Octave/MATLAB command line, typing `help` followed by a function name displays documentation for a built-in function. For example, `help plot` will bring up help information for plotting. Further documentation for Octave functions can be found at the [Octave documentation pages](https://octave.org/doc/v5.2.0/). 
* MATLAB is a proprietary software but see if your school/university has a [MATLAB campus license](https://in.mathworks.com/academia/tah-support-program/eligibility.html). 
* MATLAB documentation can be found at the [MATLAB documentation pages](https://in.mathworks.com/help/matlab/?refresh=true).


