---
title       : Tidying the UCI HAR Dataset
subtitle    : 
author      : Jim Pfleger 
job         : Getting and Cleaning Data - Course Project
mode        : selfcontained # {standalone, draft}
---

# Overview

This project takes the UCI HAR Dataset and produces a tidy subset for further analysis.

# Data Source

The project data was provided by the course instructors here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original source of the data is here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

# Methodology

## Loading the Data

The variable `data.root.dir` in `run_analysis.R` should be set to the root directory of the UCI HAR Dataset. This directory should contain the following structure:

```
.
+-- test
|   +-- subject_test.txt
|   +-- X_test.txt
|   +-- Y_test.txt
+-- train
|   +-- subject_train.txt
|   +-- X_train.txt
|   +-- Y_train.txt
+-- activity_labels.txt
+-- features.txt
```

Here's how the files are used:

* `X_test.txt` and `X_train.txt` contain the 10,299 total observations of the 561 numeric variables. These variables are labeled according to the contents of `features.txt`. Both files are merged into `data.set`.
* `Y_test.txt` and `Y_train.txt` contain the numeric label indicating the activity recorded in the corresponding X\_ files. The numeric labels are converted to a factor based on the contents of `activity_labels.txt` and added as the `activity` column in `data.set`.
* `subject_test.txt` and `subject_train.txt` contain the number of the subject performing the activity recorded in the corresponding X\_ files. They are converted to a factor and added as the `subject` column in `data.set`.

## Extract mean and SD columns

The dataset is then trimmed to only the mean and SD measurements of the following features:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The following means were excluded because they did not have corresponding SDs:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The names were then normalized as _measurement_._(axis)_._function_ where _measurement_ is the measurement name, _axis_ is X, Y, Z if the original measurement was along an axis, and _function_ is either _mean_ for the mean or _std_ for the SD. Examples:

* tBodyAcc.X.mean
* tBodyAcc.Y.std
* tBodyAccMag.mean

---
TODO Put instructions for loading the tidy data set here.
```
address <- "https://s3.amazonaws.com/coursera-uploads/user-longmysteriouscode/asst-3/massivelongcode.csv"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) #if they used some other way of saving the file than a default write.table, this step will be different
View(data)
```
---

# References

Wickham, Hadley. "[Tidy Data](http://www.jstatsoft.org/v59/i10)." *The Journal of Statistical Software* 59.10 (2014): n. pag. Web. 14 July 2015.
