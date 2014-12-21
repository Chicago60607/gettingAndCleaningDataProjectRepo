---
title: "Getting and Cleaning Data - Code Book"
author: "Alfonzo Vega"
date: "Saturday, December 20, 2014"
output: html_document
---

gettingAndCleaningDataProject

=============================


CodeBook
The original files are extracted from

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
is unzipped and its files and folders under "UCI HAR DataSet" are extracted to a folder
"data" under the working directory

All original measures were extracted and then only the ones representing
mean values or standard deviations were extracted

These measure values were renamed as per below.
Finally for each measure of the ones listed, a mean value is 
calculated per subject and activity.

Data was checked to make sure there were no invalid records:
All subjects between 1 and 30
All activities between 

Original Measure  	  New Measure
______________________________________________________________________
tBodyAcc-mean()-X	TimeBodyAcceleration-mean-Axis X
tBodyAcc-mean()-Y	TimeBodyAcceleration-mean-Axis Y
tBodyAcc-mean()-Z	TimeBodyAcceleration-mean-Axis Z
tBodyAcc-std()-X TimeBodyAcceleration-StandardDeviation-Axis X
tBodyAcc-std()-Y TimeBodyAcceleration-StandardDeviation-Axis Y
tBodyAcc-std()-Z TimeBodyAcceleration-StandardDeviation-Axis Z
tGravityAcc-mean()-X TimeGravityAcceleration-mean-Axis X
tGravityAcc-mean()-Y TimeGravityAcceleration-mean-Axis Y
tGravityAcc-mean()-Z TimeGravityAcceleration-mean-Axis Z
tGravityAcc-std()-X	TimeGravityAcceleration-StandardDeviation-Axis X
tGravityAcc-std()-Y	TimeGravityAcceleration-StandardDeviation-Axis Y
tGravityAcc-std()-Z	TimeGravityAcceleration-StandardDeviation-Axis Z
tBodyAccJerk-mean()-X TimeBodyAccelerationJerk-mean-Axis X
tBodyAccJerk-mean()-Y	TimeBodyAccelerationJerk-mean-Axis Y
tBodyAccJerk-mean()-Z	TimeBodyAccelerationJerk-mean-Axis Z
tBodyAccJerk-std()-X	TimeBodyAccelerationJerk-StandardDeviation-Axis X
tBodyAccJerk-std()-Y TimeBodyAccelerationJerk-StandardDeviation-Axis Y
tBodyAccJerk-std()-Z TimeBodyAccelerationJerk-StandardDeviation-Axis Z
tBodyGyro-mean()-X TimeBodyGyro-mean-Axis X
tBodyGyro-mean()-Y TimeBodyGyro-mean-Axis Y
tBodyGyro-mean()-Z TimeBodyGyro-mean-Axis Z
tBodyGyro-std()-X	TimeBodyGyro-StandardDeviation-Axis X
tBodyGyro-std()-Y	TimeBodyGyro-StandardDeviation-Axis Y
tBodyGyro-std()-Z TimeBodyGyro-StandardDeviation-Axis Z
tBodyGyroJerk-mean()-X TimeBodyGyroJerk-mean-Axis X
tBodyGyroJerk-mean()-Y TimeBodyGyroJerk-mean-Axis Y
tBodyGyroJerk-mean()-Z TimeBodyGyroJerk-mean-Axis Z
tBodyGyroJerk-std()-X	TimeBodyGyroJerk-StandardDeviation-Axis X
tBodyGyroJerk-std()-Y TimeBodyGyroJerk-StandardDeviation-Axis Y
tBodyGyroJerk-std()-Z TimeBodyGyroJerk-StandardDeviation-Axis Z
tBodyAccMag-mean() TimeBodyAccelerationMagnitud-mean
tBodyAccMag-std()	TimeBodyAccelerationMagnitud-StandardDeviation
tGravityAccMag-mean() TimeGravityAccelerationMagnitud-mean
tGravityAccMag-std() TimeGravityAccelerationMagnitud-StandardDeviation
tBodyAccJerkMag-mean() TimeBodyAccelerationJerkMagnitud-mean
tBodyAccJerkMag-std()	TimeBodyAccelerationJerkMagnitud-StandardDeviation
tBodyGyroMag-mean()	TimeBodyGyroMagnitud-mean
tBodyGyroMag-std() TimeBodyGyroMagnitud-StandardDeviation
tBodyGyroJerkMag-mean()	TimeBodyGyroJerkMagnitud-mean
tBodyGyroJerkMag-std() TimeBodyGyroJerkMagnitud-StandardDeviation
fBodyAcc-mean()-X	FastFourierTransformBodyAcceleration-mean-Axis X
fBodyAcc-mean()-Y	FastFourierTransformBodyAcceleration-mean-Axis Y
fBodyAcc-mean()-Z	FastFourierTransformBodyAcceleration-mean-Axis Z
fBodyAcc-std()-X FastFourierTransformBodyAcceleration-StandardDeviation-Axis X
fBodyAcc-std()-Y FastFourierTransformBodyAcceleration-StandardDeviation-Axis Y
fBodyAcc-std()-Z FastFourierTransformBodyAcceleration-StandardDeviation-Axis Z
fBodyAccJerk-mean()-X FastFourierTransformBodyAccelerationJerk-mean-Axis X
fBodyAccJerk-mean()-Y	FastFourierTransformBodyAccelerationJerk-mean-Axis Y
fBodyAccJerk-mean()-Z FastFourierTransformBodyAccelerationJerk-mean-Axis Z
fBodyAccJerk-std()-X FastFourierTransformBodyAccelerationJerk-StandardDeviation-Axis X
fBodyAccJerk-std()-Y FastFourierTransformBodyAccelerationJerk-StandardDeviation-Axis Y
fBodyAccJerk-std()-Z FastFourierTransformBodyAccelerationJerk-StandardDeviation-Axis Z
fBodyGyro-mean()-X FastFourierTransformBodyGyro-mean-Axis X
fBodyGyro-mean()-Y FastFourierTransformBodyGyro-mean-Axis Y
fBodyGyro-mean()-Z FastFourierTransformBodyGyro-mean-Axis Z
fBodyGyro-std()-X	FastFourierTransformBodyGyro-StandardDeviation-Axis X
fBodyGyro-std()-Y	FastFourierTransformBodyGyro-StandardDeviation-Axis Y
fBodyGyro-std()-Z	FastFourierTransformBodyGyro-StandardDeviation-Axis Z
fBodyAccMag-mean() FastFourierTransformBodyAccelerationMagnitud-mean
fBodyAccMag-std() FastFourierTransformBodyAccelerationMagnitud-StandardDeviation
fBodyBodyAccJerkMag-mean() FastFourierTransformBodyBodyAccelerationJerkMagnitud-mean
fBodyBodyAccJerkMag-std()	FastFourierTransformBodyBodyAccelerationJerkMagnitud-StandardDeviation 
fBodyBodyGyroMag-mean()	FastFourierTransformBodyBodyGyroMagnitud-mean
fBodyBodyGyroMag-std() FastFourierTransformBodyBodyGyroMagnitud-StandardDeviation
fBodyBodyGyroJerkMag-mean()	FastFourierTransformBodyBodyGyroJerkMagnitud-mean
fBodyBodyGyroJerkMag-std() FastFourierTransformBodyBodyGyroJerkMagnitud-StandardDeviation
