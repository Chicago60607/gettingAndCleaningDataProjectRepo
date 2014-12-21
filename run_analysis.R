# run_analysis.R
library(dplyr)
library(reshape2)
# check for data directory

if(!file.exists("data")) { 
  dir.create("data")
}
# Download the file 
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# unzip it and move the files and folders under "UCI HAR Dataset" to
# the folder "data"

# load the activity labels file
activity_labels <- read.table("./data/activity_labels.txt",sep="",
                              col.names=c("ActivityNumber",
                                          "ActivityLabel"))
print(paste(
  "activity labels file loaded with",
  nrow(activity_labels),
  "rows"))

# load the features file
features <- read.table("./data/features.txt",sep="",
                       col.names=c("FeatureNumber","FeatureLabel"))
print(paste(
  "features file loaded with",
  nrow(features),
  "rows"))

#training subfolder
#load the subject_training file 
#(contains the individuals performing the training)
#and rename the column to "subject"
subject_train <- read.table("./data/train/subject_train.txt",sep="",
                           col.names="subject")

print(paste(
  "subject training file loaded with",
  nrow(subject_train),
  "rows"))

#load the activity training file
#and rename the column to "activity"
y_train <- read.table("./data/train/y_train.txt",sep="",
                     col.names="Activity")
print(paste("activity training file loaded with",
            nrow(y_train),
            "rows"))

#and replace activity numeric values by labels
y_train$Activity <- activity_labels[y_train$Activity,2]

#load the facts training file
trainFactsDF <- read.table("./data/train/x_train.txt",sep="",
                          col.names=features$FeatureLabel, 
                          check.names = FALSE)
print(paste("training facts file loaded with",
            nrow(trainFactsDF),
            "rows"))
print(paste("and",
            ncol(trainFactsDF),
            "columns"))
ever
#Create a column "Type" to differentiate between Test and Training
typeTrainDF = data.frame(rep("Training",nrow(trainFactsDF)),
                         stringsAsFactors=FALSE)
colnames(typeTrainDF) <- "Type"

#Create the training Object with the type subject, activity and facts
trainDF <- cbind(typeTrainDF,subject_train,y_train,trainFactsDF)

#Remove redundant big object
rm(trainFactsDF)

#List "un-complete cases"
print(paste("Number of incomplete training cases",
            nrow(trainDF[!complete.cases(trainDF),])))

#test subfolder
#load the subject_test (contains the individuals performing the tests)
#and rename the column to "subject"
subject_test <- read.table("./data/test/subject_test.txt",sep="",
                           col.names="subject")
print(paste(
  "subject test file loaded with",
  nrow(subject_test),
  "rows"))

#load the activity test file
#and rename the column to "activity"
y_test <- read.table("./data/test/y_test.txt",sep="",
                     col.names="Activity")
print(paste("activity test file loaded with",
            nrow(y_test),
            "rows"))
#and replace activity numeric values by labels
y_test$Activity <- activity_labels[y_test$Activity,2]

#load the facts test file
testFactsDF <- read.table("./data/test/x_test.txt",sep="",
                          col.names=features$FeatureLabel,
                          check.names = FALSE)
print(paste("test facts file loaded with",
            nrow(testFactsDF),
            "rows"))
print(paste("and",
            ncol(testFactsDF),
            "columns"))

#Create a column "Type" to differentiate between Test and Training
typeTestDF = data.frame(rep("Test",nrow(testFactsDF)),stringsAsFactors=FALSE)
colnames(typeTestDF) <- "Type"

#Create the test Object with the type subject, activity and facts
testDF <- cbind(typeTestDF,subject_test,y_test,testFactsDF)

#Remove redundant big object
rm(testFactsDF)

#List "un-complete cases"
print(paste("Number of incomplete test cases",
            nrow(testDF[!complete.cases(testDF),])))

#Merging the training and test data frames
totalCompleteDF <- rbind(trainDF,testDF)
print(paste("total combined file has",M
            nrow(totalCompleteDF),
            "rows"))

#remove big redundant data sets
rm(testDF,trainDF)

#Tidy set will have only mean and standard deviation columns
# the feature_info file explains that
# The set of variables that were estimated from these signals are: 
# (...)
# mean(): Mean value
# std(): Standard deviation

#so let's create a new data set with only columns with labels with
#either mean() or std()
pattern <- "mean\\(\\)|std\\(\\)"
totalTidyDF <- cbind(totalCompleteDF[,1:3],
  totalCompleteDF[,grep(pattern,colnames(totalCompleteDF))])
#remove big redundant data sets
rm(totalCompleteDF)

#make column names (variables) more descriptive
#this FM based on post in
#http://stackoverflow.com/questions/26676045/
#replace-a-set-of-pattern-matches-with-corresponding-
#replacement-strings-in-r
replace_string_pcre <- 
  function(string, patterns, replacements) {
    for (i in seq_along(patterns))
      string <- gsub(patterns[i], replacements[i], string, perl=TRUE)
      string
  }

#using the information in the file "features_info"
#translate the labels
patterns <- c(
  "tBody",
  "tGravity",
  "fBody",
  "mean\\(\\)",
  "std\\(\\)",
  "Acc",
  "Mag",
  "\\-X",
  "\\-Y",
  "\\-Z")

replacements <- c(
  "TimeBody",
  "TimeGravity",
  "FastFourierTransformBody",
  "mean",
  "StandardDeviation",
  "Acceleration",
  "Magnitud",
  "\\-Axis X",
  "\\-Axis Y",
  "\\-Axis Z")

colnames(totalTidyDF) <- 
  replace_string_pcre(colnames(totalTidyDF), patterns, replacements)

#Now to create a data set that has the measured variable as 
#a column, we "melt-it"
meltedDF <- melt(totalTidyDF, id18.vars=c("Type", "subject", "Activity"))
meltedDFgb <- group_by(meltedDF, subject, Activity, variable)
meanValuesTidyDF <- summarize(meltedDFgb, meanValue = mean(value))

#Now we write the file
write.table(meanValuesTidyDF,"./data/meanValuesTidyDF.txt",sep=",",col.names=FALSE)
