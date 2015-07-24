---
title       : UCI HAR Summary Dataset Code Book
subtitle    : 
author      : Jim Pfleger 
job         : Getting and Cleaning Data - Course Project
mode        : selfcontained # {standalone, draft}
---

# Code Book for UCI HAR Summary Dataset

- Values are means of features, which were first normalized and bounded within [-1,1], thus they are unitless.
- Each row is the means of all measurements for that subject and activity.
- Refer to the [original dataset documentation](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) for more details.

Column Name | Column Type | Description
------------|:-----------:|------------
activity | character (factor) | Activity name. One of (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)
subject | numeric (factor) | Subject ID number

Column Name | Column Type | Aggregate | Component | Meas. type | Axis | Domain
------------|:-----------:|:---------:|:---------:|:----------:|:----:|:------:
tBodyAcc.X.mean | numeric | mean | body | linear acceleration | X | time
tBodyAcc.Y.mean | numeric | mean | body | linear acceleration | Y | time
tBodyAcc.Z.mean | numeric | mean | body | linear acceleration | Z | time
tBodyAcc.X.std | numeric | SD | body | linear acceleration | X | time
tBodyAcc.Y.std | numeric | SD | body | linear acceleration | Y | time
tBodyAcc.Z.std | numeric | SD | body | linear acceleration | Z | time
tGravityAcc.X.mean | numeric | mean | gravity | linear acceleration | X | time
tGravityAcc.Y.mean | numeric | mean | gravity | linear acceleration | Y | time
tGravityAcc.Z.mean | numeric | mean | gravity | linear acceleration | Z | time
tGravityAcc.X.std | numeric | SD | gravity | linear acceleration | X | time
tGravityAcc.Y.std | numeric | SD | gravity | linear acceleration | Y | time
tGravityAcc.Z.std | numeric | SD | gravity | linear acceleration | Z | time
tBodyAccJerk.X.mean | numeric | mean | body jerk | acceleration | X | time 
tBodyAccJerk.Y.mean | numeric | mean | body jerk | acceleration | Y | time
tBodyAccJerk.Z.mean | numeric | mean | body jerk | acceleration | Z | time
tBodyAccJerk.X.std | numeric | SD | body jerk | acceleration | X | time
tBodyAccJerk.Y.std | numeric | SD | body jerk | acceleration | Y | time
tBodyAccJerk.Z.std | numeric | SD | body jerk | acceleration | Z | time
tBodyGyro.X.mean | numeric | mean | body | angular velocity | X | time
tBodyGyro.Y.mean | numeric | mean | body | angular velocity | Y | time
tBodyGyro.Z.mean | numeric | mean | body | angular velocity | Z | time
tBodyGyro.X.std | numeric | SD | body | angular velocity | X | time
tBodyGyro.Y.std | numeric | SD | body | angular velocity | Y | time
tBodyGyro.Z.std | numeric | SD | body | angular velocity | Z | time
tBodyGyroJerk.X.mean | numeric | mean | body jerk | angular velocity | X | time
tBodyGyroJerk.Y.mean | numeric | mean | body jerk | angular velocity | Y | time
tBodyGyroJerk.Z.mean | numeric | mean | body jerk | angular velocity | Z | time
tBodyGyroJerk.X.std | numeric | SD | body jerk | angular velocity | X | time
tBodyGyroJerk.Y.std | numeric | SD | body jerk | angular velocity | X | time
tBodyGyroJerk.Z.std | numeric | SD | body jerk | angular velocity | X | time
tBodyAccMag.mean | numeric | mean of Euclidian norm | body | linear acceleration | N/A | time
tBodyAccMag.std | numeric | SD of Euclidian norm | body | linear acceleration | N/A | time
tGravityAccMag.mean | numeric | mean of Euclidian norm | gravity | linear acceleration | N/A | time
tGravityAccMag.std | numeric | SD of Euclidian norm | gravity | linear acceleration | N/A | time
tBodyAccJerkMag.mean | numeric | mean of Euclidian norm | body jerk | linear acceleration | N/A | time
tBodyAccJerkMag.std | numeric | SD of Euclidian norm | body jerk | linear acceleration | N/A | time
tBodyGyroMag.mean | numeric | mean of Euclidian norm | body | angular velocity | N/A | time 
tBodyGyroMag.std | numeric | SD of Euclidian norm | body | angular velocity | N/A | time 
tBodyGyroJerkMag.mean | numeric | mean of Euclidian norm | body jerk | angular velocity | N/A | time 
tBodyGyroJerkMag.std | numeric | SD of Euclidian norm | body jerk | angular velocity | N/A | time 
fBodyAcc.X.mean | numeric | mean | body | linear acceleration | X | frequency
fBodyAcc.Y.mean | numeric | mean | body | linear acceleration | Y | frequency
fBodyAcc.Z.mean | numeric | mean | body | linear acceleration | Z | frequency
fBodyAcc.X.std | numeric | SD | body | linear acceleration | X | frequency
fBodyAcc.Y.std | numeric | SD | body | linear acceleration | Y | frequency
fBodyAcc.Z.std | numeric | SD | body | linear acceleration | Z | frequency
fBodyAccJerk.X.mean | numeric | mean | body jerk | acceleration | X | frequency 
fBodyAccJerk.Y.mean | numeric | mean | body jerk | acceleration | Y | frequency
fBodyAccJerk.Z.mean | numeric | mean | body jerk | acceleration | Z | frequency
fBodyAccJerk.X.std | numeric | SD | body jerk | acceleration | X | frequency
fBodyAccJerk.Y.std | numeric | SD | body jerk | acceleration | Y | frequency
fBodyAccJerk.Z.std | numeric | SD | body jerk | acceleration | Z | frequency
fBodyGyro.X.mean | numeric | mean | body | angular velocity | X | frequency
fBodyGyro.Y.mean | numeric | mean | body | angular velocity | Y | frequency
fBodyGyro.Z.mean | numeric | mean | body | angular velocity | Z | frequency
fBodyGyro.X.std | numeric | SD | body | angular velocity | X | frequency
fBodyGyro.Y.std | numeric | SD | body | angular velocity | Y | frequency
fBodyGyro.Z.std | numeric | SD | body | angular velocity | Z | frequency
fBodyAccMag.mean | numeric | mean of Euclidian norm | body | linear acceleration | N/A | frequency
fBodyAccMag.std | numeric | SD of Euclidian norm | body | linear acceleration | N/A | frequency
fBodyBodyAccJerkMag.mean | numeric | mean of Euclidian norm | body jerk | linear acceleration | N/A | frequency
fBodyBodyAccJerkMag.std | numeric | SD of Euclidian norm | body jerk | linear acceleration | N/A | frequency
fBodyBodyGyroMag.mean | numeric | mean of Euclidian norm | body | angular velocity | N/A | frequency 
fBodyBodyGyroMag.std | numeric | SD of Euclidian norm | body | angular velocity | N/A | frequency 
fBodyBodyGyroJerkMag.mean | numeric | mean of Euclidian norm | body jerk | angular velocity | N/A | frequency 
fBodyBodyGyroJerkMag.std | numeric | SD of Euclidian norm | body jerk | angular velocity | N/A | frequency 
