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

The original measures are described in detailed in the file included
in the zip, also attached in this repository - features_info.txt

All original measures were extracted and then only the ones representing
mean values or standard deviations were extracted

These measure values were renamed as per below.
Finally for each measure of the ones listed, a mean value is 
calculated per subject and activity.

Data was checked to make sure there were no invalid records:
All subjects between 1 and 30

All activities between 1 and 6

Original Measure 01
**tBodyAcc-mean()-X**  
New Measure 01   
**TimeBodyAcceleration-mean-Axis X**  

Original Measure 02
**tBodyAcc-mean()-Y**  
New Measure 02
**TimeBodyAcceleration-mean-Axis Y**    

Original Measure 03 
**tBodyAcc-mean()-Z**   
New Measure 03 
**TimeBodyAcceleration-mean-Axis Z**  

Original Measure 04 
**tBodyAcc-std()-X**   
New Measure 04 
**TimeBodyAcceleration-StandardDeviation-Axis X**    

Original Measure 05 
**tBodyAcc-std()-Y**   
New Measure 05 
**TimeBodyAcceleration-StandardDeviation-Axis Y**  

Original Measure 06 
**tBodyAcc-std()-Z**   
New Measure 06 
**TimeBodyAcceleration-StandardDeviation-Axis Z**  

Original Measure 07 
**tGravityAcc-mean()-X**   
New Measure 07 
**TimeGravityAcceleration-mean-Axis X**  

Original Measure 08
**tGravityAcc-mean()-Y**   
New Measure 08 
**TimeGravityAcceleration-mean-Axis Y**  

Original Measure 09 
**tGravityAcc-mean()-Z**   
New Measure 09 
**TimeGravityAcceleration-mean-Axis Z**  

Original Measure 10 
**tGravityAcc-std()-X**   
New Measure 10 
**TimeGravityAcceleration-StandardDeviation-Axis X**  

Original Measure 11 
**tGravityAcc-std()-Y**   
New Measure 11 
**TimeGravityAcceleration-StandardDeviation-Axis Y**  

Original Measure 12 
**tGravityAcc-std()-Z**   
New Measure 12 
**TimeGravityAcceleration-StandardDeviation-Axis Z**  

Original Measure 13 
**tBodyAccJerk-mean()-X**  
New Measure 13 
**TimeBodyAccelerationJerk-mean-Axis X**  

Original Measure 14 
**tBodyAccJerk-mean()-Y**   
New Measure 14 
**TimeBodyAccelerationJerk-mean-Axis Y**  

Original Measure 15
**tBodyAccJerk-mean()-Z**   
New Measure 15 
**TimeBodyAccelerationJerk-mean-Axis Z**  

Original Measure 16 
**tBodyAccJerk-std()-X**   
New Measure 16 
**TimeBodyAccelerationJerk-StandardDeviation-Axis X**  

Original Measure 17 
**tBodyAccJerk-std()-Y**   
New Measure 17 
**TimeBodyAccelerationJerk-StandardDeviation-Axis Y**  

Original Measure 18 
**tBodyAccJerk-std()-Z**   
New Measure 18 
**TimeBodyAccelerationJerk-StandardDeviation-Axis Z**  

Original Measure 19 
**tBodyGyro-mean()-X**   
New Measure 19 
**TimeBodyGyro-mean-Axis X**  

Original Measure 20 
**tBodyGyro-mean()-Y**   
New Measure 20 
**TimeBodyGyro-mean-Axis Y**  

Original Measure 21 
**tBodyGyro-mean()-Z**   
New Measure 21 
**TimeBodyGyro-mean-Axis Z**  

Original Measure 22 
**tBodyGyro-std()-X**   
New Measure 22
**TimeBodyGyro-StandardDeviation-Axis X**  

Original Measure 23 
**tBodyGyro-std()-Y**   
New Measure 23 
**TimeBodyGyro-StandardDeviation-Axis Y**  

Original Measure 24 
**tBodyGyro-std()-Z**   
New Measure 24 
**TimeBodyGyro-StandardDeviation-Axis Z**  

Original Measure 25 
**tBodyGyroJerk-mean()-X**   
New Measure 25 
**TimeBodyGyroJerk-mean-Axis X**  

Original Measure 26 
**tBodyGyroJerk-mean()-Y**   
New Measure 26 
**TimeBodyGyroJerk-mean-Axis Y**  

Original Measure 27 
**tBodyGyroJerk-mean()-Z**   
New Measure 27 
**TimeBodyGyroJerk-mean-Axis Z**  

Original Measure 28 
**tBodyGyroJerk-std()-X**   
New Measure 28 
**TimeBodyGyroJerk-StandardDeviation-Axis X**  

Original Measure 29
**tBodyGyroJerk-std()-Y**   
New Measure 29 
**TimeBodyGyroJerk-StandardDeviation-Axis Y**  

Original Measure 30 
**tBodyGyroJerk-std()-Z**  
New Measure 30 
**TimeBodyGyroJerk-StandardDeviation-Axis Z**  

Original Measure 31 
**tBodyAccMag-mean()**   
New Measure 31 
**TimeBodyAccelerationMagnitud-mean**  

Original Measure 32 
**tBodyAccMag-std()**   
New Measure 32 
**TimeBodyAccelerationMagnitud-StandardDeviation**  

Original Measure 33 
**tGravityAccMag-mean()**   
New Measure 33 
**TimeGravityAccelerationMagnitud-mean**  

Original Measure 34 
**tGravityAccMag-std()**   
New Measure 34 
**TimeGravityAccelerationMagnitud-StandardDeviation**  

Original Measure 35 
**tBodyAccJerkMag-mean()**   
New Measure 35 
**TimeBodyAccelerationJerkMagnitud-mean**  

Original Measure 36 
**tBodyAccJerkMag-std()**   
New Measure 36 
**TimeBodyAccelerationJerkMagnitud-StandardDeviation**  

Original Measure 37 
**tBodyGyroMag-mean()**   
New Measure 37 
**TimeBodyGyroMagnitud-mean**  

Original Measure 38 
**tBodyGyroMag-std()**   
New Measure 38 
**TimeBodyGyroMagnitud-StandardDeviation**  

Original Measure 39 
**tBodyGyroJerkMag-mean()**   
New Measure 39 
**TimeBodyGyroJerkMagnitud-mean**  

Original Measure 40 
**tBodyGyroJerkMag-std()**   
New Measure 40 
**TimeBodyGyroJerkMagnitud-StandardDeviation**  

Original Measure 41 
**fBodyAcc-mean()-X**   
New Measure 41 
**FastFourierTransformBodyAcceleration-mean-Axis X**  

Original Measure 42 
**fBodyAcc-mean()-Y**   
New Measure 42 
**FastFourierTransformBodyAcceleration-mean-Axis Y**  

Original Measure 43 
**fBodyAcc-mean()-Z**   
New Measure 43 
**FastFourierTransformBodyAcceleration-mean-Axis Z**  

Original Measure 44 
**fBodyAcc-std()-X**   
New Measure 44 
**FastFourierTransformBodyAcceleration-StandardDeviation-Axis X**  

Original Measure 45 
**fBodyAcc-std()-Y**   
New Measure 45
**FastFourierTransformBodyAcceleration-StandardDeviation-Axis Y**  

Original Measure 46 
**fBodyAcc-std()-Z**   
New Measure 46 
**FastFourierTransformBodyAcceleration-StandardDeviation-Axis Z**  

Original Measure 47 
**fBodyAccJerk-mean()-X**   
New Measure 47 
**FastFourierTransformBodyAccelerationJerk-mean-Axis X**  

Original Measure 48 
**fBodyAccJerk-mean()-Y**   
New Measure 48
**FastFourierTransformBodyAccelerationJerk-mean-Axis Y**  

Original Measure 49 
**fBodyAccJerk-mean()-Z**   
New Measure 49
**FastFourierTransformBodyAccelerationJerk-mean-Axis Z**  

Original Measure 50 
**fBodyAccJerk-std()-X**   
New Measure 50 
**FastFourierTransformBodyAccelerationJerk-StandardDeviation-Axis X**  

Original Measure 51 
**fBodyAccJerk-std()-Y**   
New Measure 51
**FastFourierTransformBodyAccelerationJerk-StandardDeviation-Axis Y**  

Original Measure 52 
**fBodyAccJerk-std()-Z**   
New Measure 52 
**FastFourierTransformBodyAccelerationJerk-StandardDeviation-Axis Z**  

Original Measure 53 
**fBodyGyro-mean()-X**   
New Measure 53 
**FastFourierTransformBodyGyro-mean-Axis X**  

Original Measure 54 
**fBodyGyro-mean()-Y**   
New Measure 54 
**FastFourierTransformBodyGyro-mean-Axis Y**  

Original Measure 55 
**fBodyGyro-mean()-Z**   
New Measure 55 
**FastFourierTransformBodyGyro-mean-Axis Z**  

Original Measure 56 
**fBodyGyro-std()-X**   
New Measure 56 
**FastFourierTransformBodyGyro-StandardDeviation-Axis X**  

Original Measure 57 
**fBodyGyro-std()-Y**  
New Measure 57 
**FastFourierTransformBodyGyro-StandardDeviation-Axis Y**  

Original Measure 58 
**fBodyGyro-std()-Z**  
New Measure 58 
**FastFourierTransformBodyGyro-StandardDeviation-Axis Z**  

Original Measure 59 
**fBodyAccMag-mean()**   
New Measure 59 
**FastFourierTransformBodyAccelerationMagnitud-mean**  

Original Measure 60
**fBodyAccMag-std()**   
New Measure 60 
**FastFourierTransformBodyAccelerationMagnitud-StandardDeviation**  

Original Measure 61 
**fBodyBodyAccJerkMag-mean()**   
New Measure 61 
**FastFourierTransformBodyBodyAccelerationJerkMagnitud-mean**  

Original Measure 62 
**fBodyBodyAccJerkMag-std()**   
New Measure 62 
**FastFourierTransformBodyBodyAccelerationJerkMagnitud-StandardDeviation**  

Original Measure 63 
**fBodyBodyGyroMag-mean()**   
New Measure 63 
**FastFourierTransformBodyBodyGyroMagnitud-mean**  

Original Measure 64 
**fBodyBodyGyroMag-std()**  
New Measure 64 
**FastFourierTransformBodyBodyGyroMagnitud-StandardDeviation**  

Original Measure 65 
**fBodyBodyGyroJerkMag-mean()**   
New Measure 65 
**FastFourierTransformBodyBodyGyroJerkMagnitud-mean**  

Original Measure 66 
**fBodyBodyGyroJerkMag-std()**  
New Measure 66 
**FastFourierTransformBodyBodyGyroJerkMagnitud-StandardDeviation**  
