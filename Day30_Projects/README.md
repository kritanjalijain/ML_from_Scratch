## Day 30 Project - Builiding a spam email classifier using SVM


### Project Description
In this model, I have used support vector machines (SVMs) to build a spam filter. Many email services today provide spam filters that are able to classify emails into spam and non-spam email with high accuracy. The classifier is trained to classify whether a given email, x, is spam (y = 1) or non-spam (y = 0).

### Pre-processing Emails
One method often employed in processing emails is to "normalize" the entities, so that all URLs are treated the same, all numbers are treated the same, etc. For example, we could replace each URL in the email with the unique string \httpaddr" to indicate that a URL was present.

This has the effect of letting the spam classifier make a classification decision based on whether any URL was present, rather than whether a specific URL
was present. This typically improves the performance of a spam classifier, since spammers often randomize the URLs, and thus the odds of seeing any particular URL again in a new piece of spam is very small.

In `processEmail.m`, I have implemented the following email preprocessing and normalization steps:

* Lower-casing: The entire email is converted into lower case, so that captialization is ignored (e.g., IndIcaTE is treated the same as Indicate).

* Stripping HTML: All HTML tags are removed from the emails. Many emails often come with HTML formatting; we remove all the HTML tags, so that only the content remains.

* Normalizing URLs: All URLs are replaced with the text \httpaddr".

* Normalizing Email Addresses: All email addresses are replaced with the text \emailaddr".

* Normalizing Numbers: All numbers are replaced with the text\number".

* Normalizing Dollars: All dollar signs ($) are replaced with the text\dollar".

* Word Stemming: Words are reduced to their stemmed form. For example, \discount", \discounts", \discounted" and \discounting" are all replaced with \discount". Sometimes, the Stemmer actually strips off additional characters from the end, so \include", \includes", \included", and \including" are all replaced with \includ".

* Removal of non-words: Non-words and punctuation have been removed. All white spaces (tabs, newlines, spaces) have all been trimmed to a single space character.

While pre-processing has left word fragments and non-words, this form turns out to be much easier to work with for performing feature extraction.

### Vocabulary List
After preprocessing the emails, a list of words for each email is formed. The next step is to choose which words to use in our classifier and which to leave out.
Here, I have chosen only the most frequently occuring words as the set of words considered (the vocabulary list). Since words that occur rarely in the training set are only in a few emails, they might cause the model to overfit the training set. This vocabulary list was selected by choosing all words which occur at least a 100 times in the spam corpus, resulting in a list of 1899 words. Given the vocabulary list, now each word in the preprocessed email is mapped into a list of word indices that contains the index of the word in the vocabulary list.

### Extracting Features from Emails
The feature extraction is now implemented to convert each email into a vector in R^n.

### Training SVM for Spam Classification
After the feature extraction functions are done, the next step of `spam.m` will load a preprocessed training dataset that will be used to train a SVM classifier. `spamTrain.mat` contains 4000 training examples of spam and non-spam email, while spamTest.mat contains 1000 test examples. Each original email was processed using the `processEmail` and `emailFeatures` functions and converted into a vector x(i) belongs to R^1899.


After loading the dataset, `spam.m` will train a SVM to classify between spam (y = 1) and non-spam (y = 0) emails.


### Project Structure 

`spam_classifier.m` - Octave/MATLAB script to set up the dataset for the problem and make calls to user-defined functions.

* `SVM.m` - Octave/MATLAB script 
* `data1.mat` - Example Dataset 1
* `data2.mat` - Example Dataset 2
* `data3.mat` - Example Dataset 3
* `svmTrain.m` - SVM training function
* `svmPredict.m` - SVM prediction function
* `plotData.m` - Plot 2D data
* `visualizeBoundaryLinear.m` - Plot linear boundary
* `visualizeBoundary.m` - Plot non-linear boundary
* `linearKernel.m` - Linear kernel for SVM
* `gaussianKernel.m` - Gaussian kernel for SVM
* `dataset3Params.m` - Parameters to use for Dataset 3
* `spamTrain.mat` - Spam training set
* `spamTest.mat` - Spam test set
* `emailSample1.txt` - Sample email 1
* `emailSample2.txt` - Sample email 2
* `spamSample1.txt` - Sample spam 1
* `spamSample2.txt` - Sample spam 2
* `amey_email_sample1` - Personal email as sample
* `vocab.txt` - Vocabulary list
* `getVocabList.m` - Load vocabulary list
* `porterStemmer.m` - Stemming function
* `readFile.m` - Reads a file into a character string
* `processEmail.m` - Email preprocessing
* `emailFeatures.m` - Feature extraction from emails

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

