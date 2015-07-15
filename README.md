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
