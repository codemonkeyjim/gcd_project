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

## Identifying columns

Column Name | Column Type | Description
------------|:-----------:|------------
activity | character (factor) | Activity name. One of (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)
subject | numeric (factor) | Subject ID number

## Time-domain columns

These columns are all numeric means of time-domain aggregates

Column Name | Aggregate | Component | Meas. type | Axis
------------|:---------:|:---------:|:----------:|:----:
tBodyAcc.X.mean | mean | body | linear acceleration | X
tBodyAcc.Y.mean | mean | body | linear acceleration | Y
tBodyAcc.Z.mean | mean | body | linear acceleration | Z
tBodyAcc.X.std | SD | body | linear acceleration | X
tBodyAcc.Y.std | SD | body | linear acceleration | Y
tBodyAcc.Z.std | SD | body | linear acceleration | Z
tGravityAcc.X.mean | mean | gravity | linear acceleration | X
tGravityAcc.Y.mean | mean | gravity | linear acceleration | Y
tGravityAcc.Z.mean | mean | gravity | linear acceleration | Z
tGravityAcc.X.std | SD | gravity | linear acceleration | X
tGravityAcc.Y.std | SD | gravity | linear acceleration | Y
tGravityAcc.Z.std | SD | gravity | linear acceleration | Z
tBodyAccJerk.X.mean | mean | body jerk | acceleration | X 
tBodyAccJerk.Y.mean | mean | body jerk | acceleration | Y
tBodyAccJerk.Z.mean | mean | body jerk | acceleration | Z
tBodyAccJerk.X.std | SD | body jerk | acceleration | X
tBodyAccJerk.Y.std | SD | body jerk | acceleration | Y
tBodyAccJerk.Z.std | SD | body jerk | acceleration | Z
tBodyGyro.X.mean | mean | body | angular velocity | X
tBodyGyro.Y.mean | mean | body | angular velocity | Y
tBodyGyro.Z.mean | mean | body | angular velocity | Z
tBodyGyro.X.std | SD | body | angular velocity | X
tBodyGyro.Y.std | SD | body | angular velocity | Y
tBodyGyro.Z.std | SD | body | angular velocity | Z
tBodyGyroJerk.X.mean | mean | body jerk | angular velocity | X
tBodyGyroJerk.Y.mean | mean | body jerk | angular velocity | Y
tBodyGyroJerk.Z.mean | mean | body jerk | angular velocity | Z
tBodyGyroJerk.X.std | SD | body jerk | angular velocity | X
tBodyGyroJerk.Y.std | SD | body jerk | angular velocity | X
tBodyGyroJerk.Z.std | SD | body jerk | angular velocity | X
tBodyAccMag.mean | mean of Euclidian norm | body | linear acceleration | N/A
tBodyAccMag.std | SD of Euclidian norm | body | linear acceleration | N/A
tGravityAccMag.mean | mean of Euclidian norm | gravity | linear acceleration | N/A
tGravityAccMag.std | SD of Euclidian norm | gravity | linear acceleration | N/A
tBodyAccJerkMag.mean | mean of Euclidian norm | body jerk | linear acceleration | N/A
tBodyAccJerkMag.std | SD of Euclidian norm | body jerk | linear acceleration | N/A
tBodyGyroMag.mean | mean of Euclidian norm | body | angular velocity | N/A 
tBodyGyroMag.std | SD of Euclidian norm | body | angular velocity | N/A 
tBodyGyroJerkMag.mean | mean of Euclidian norm | body jerk | angular velocity | N/A 
tBodyGyroJerkMag.std | SD of Euclidian norm | body jerk | angular velocity | N/A 

## Frequency-domain columns

These columns are all numeric means of frequency-domain aggregates

Column Name | Aggregate | Component | Meas. type | Axis
------------|:---------:|:---------:|:----------:|:----:
fBodyAcc.X.mean | mean | body | linear acceleration | X
fBodyAcc.Y.mean | mean | body | linear acceleration | Y
fBodyAcc.Z.mean | mean | body | linear acceleration | Z
fBodyAcc.X.std | SD | body | linear acceleration | X
fBodyAcc.Y.std | SD | body | linear acceleration | Y
fBodyAcc.Z.std | SD | body | linear acceleration | Z
fBodyAccJerk.X.mean | mean | body jerk | acceleration | X 
fBodyAccJerk.Y.mean | mean | body jerk | acceleration | Y
fBodyAccJerk.Z.mean | mean | body jerk | acceleration | Z
fBodyAccJerk.X.std | SD | body jerk | acceleration | X
fBodyAccJerk.Y.std | SD | body jerk | acceleration | Y
fBodyAccJerk.Z.std | SD | body jerk | acceleration | Z
fBodyGyro.X.mean | mean | body | angular velocity | X
fBodyGyro.Y.mean | mean | body | angular velocity | Y
fBodyGyro.Z.mean | mean | body | angular velocity | Z
fBodyGyro.X.std | SD | body | angular velocity | X
fBodyGyro.Y.std | SD | body | angular velocity | Y
fBodyGyro.Z.std | SD | body | angular velocity | Z
fBodyAccMag.mean | mean of Euclidian norm | body | linear acceleration | N/A
fBodyAccMag.std | SD of Euclidian norm | body | linear acceleration | N/A
fBodyBodyAccJerkMag.mean | mean of Euclidian norm | body jerk | linear acceleration | N/A
fBodyBodyAccJerkMag.std | SD of Euclidian norm | body jerk | linear acceleration | N/A
fBodyBodyGyroMag.mean | mean of Euclidian norm | body | angular velocity | N/A 
fBodyBodyGyroMag.std | SD of Euclidian norm | body | angular velocity | N/A 
fBodyBodyGyroJerkMag.mean | mean of Euclidian norm | body jerk | angular velocity | N/A 
fBodyBodyGyroJerkMag.std | SD of Euclidian norm | body jerk | angular velocity | N/A 
