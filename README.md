---
title: "read.me"
author: "Alfonzo Vega"
date: "Saturday, December 20, 2014"
output: html_document
---

gettingAndCleaningDataProject
=============================

Getting and Cleaning Data - Project - Alfonzo Vega  
Prior to running the script, the source file from  
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
is unzipped and its files and folders under "UCI HAR DataSet" are extracted to a folder "data" under the working directory

The R Script run_analysis.R does the following steps  
1. Loads libraries dplyr (for summarize) and reshape2 (for melting the data to get the mean values)  
2. Loads the activity labels file activity_lables.txt into a data frame and names the columns as "ActivityNumber" and "ActivityLabel", all files all loaded with space as separator  
3. Every time a file is loaded a message is printed with the number of rows to check consistency  
4. Loads the features list file features.txt and names the columns "FeatureNumber" and "FeatureLabel"  
5. Loads the training subject file subject_train.txt and names the column "subject"
6. Loads the activity training file y_train.txt and names the column "Activity"  
7. Replaces the activity codes from the y_train activity training file with Activity labels from step 02  
8. Loads the facts training file x_train.txt naming the colums with the labels from the feature list in step 04 using the switch "check.names=FALSE" to avoid replacement of characters such as parenthesis, hyphen with dots   
9. Prints the number of columns of the loaded fact file  
10. Creates a data frame with one column, label "Type" value = "Training" and same number of rows as the facts  
11. "CBIND"s the Type data frame from step 10, the training subject DF from step 05 and the facts from 08 in a single training data frame.  
12. Every time a new "big" data frame is created, it removes the original one to free memory  
13. It prints the number of incomplete cases for observation   
14. Repeats steps 05-13 for the test data set, subject file, activity file, merging  
15. Merges the training and test data frames in a single one with rbind  
16. Creates a new data frame with only mean and standard deviation measures:   
-it combines the first 3 columns of the originally merged data frame with a filter of only the measures that contain mean() or std() via grep.  
17. Renames the columns using a function module with gsub based on the information provided in the features_info.txt file:  
-Replaces tBody with TimeBody, tGravity with TimeGravity,   
-fBody with FastFourierTransformBody, mean() with mean, std() with   -StandardDeviation, Acc with Acceleration, Mag with Magnitud   
-and -X, -Y, -Z with -Axis X, -Axis Y, -Axis Z.  
18. Melts the tidy data frame into a new one that has only  one measure column "value" and four characteristics:   
-Type (training or test),   
-subject,   
-Activity and   
-variable that contains the value of any of the 66 measures.  
19. Groups the melted data frame by subject, activity and variable  
20. Creates a tidy data frame with the mean values of each measure  using the summarize function  
21. Writes that tidy data frame to a file  