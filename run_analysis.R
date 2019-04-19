## 19APR2019 Quyen Dong 
##CRSE3_WK4_PROG_ASGNMT
##
## Data for the project: 
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
##  
## Description for data:
## http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
##
## You should create one R script called run_analysis.R 
## that does the following. 
## 1.	Merges the training and the test sets to create one data set.
## 2.	Extracts only the measurements on the mean and 
##    standard deviation for each measurement. 
## 3.	Uses descriptive activity names to name the activities in the data set
## 4.	Appropriately labels the data set with descriptive variable names. 
## 5.	From the data set in step 4, creates a second, 
##    independent tidy data set with the average of 
##    each variable for each activity and each subject.

##Set directory to where data folder is
setwd("C:/Users/RDITLQTD/Desktop/Data_Science_Specialization/CRSE3_GettingAndCleaningData/CRSE3_WK4_PROG_ASGNMT/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
dir <- "C:/Users/RDITLQTD/Desktop/Data_Science_Specialization/CRSE3_GettingAndCleaningData/CRSE3_WK4_PROG_ASGNMT/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"
library(data.table)
library(dplyr)
##Get the Features Names of the Data
featureNames <- read.table("features.txt", header = FALSE)

##Get the Activity Names of the Data
activityNames <- read.table("activity_labels.txt", header = FALSE)

##Declare columns
columns <- c("Subject", "Features", "Activity", "Dataset")

##Get the Test data sets
subjectTest <- read.table(file = paste0(dir,"/test/subject_test.txt", sep=""), header = FALSE)
featuresTest <- read.table(file = paste0(dir, "/test/X_test.txt", sep = ""), header = FALSE)
activityTest <- read.table(file = paste0(dir, "/test/y_test.txt", sep = ""), header = FALSE)
dataTest <- "test"

##Get the Train data sets
subjectTrain <- read.table(file = paste0(dir,"/train/subject_train.txt", sep=""), header = FALSE)
featuresTrain <- read.table(file = paste0(dir, "/train/X_train.txt", sep = ""), header = FALSE)
activityTrain <- read.table(file = paste0(dir, "/train/y_train.txt", sep = ""), header = FALSE)
dataTrain <- "train"

##Combine the datasets
subject <- rbind(subjectTest, subjectTrain)
feature <- rbind(featuresTest, featuresTrain)
activity <- rbind(activityTest, activityTrain)

##Change the column names of combined datasets
colnames(subject) <- "Subject"
colnames(feature) <- t(featureNames[2])
colnames(activity) <- "Activity"

##Make 1 dataset with all data
allData <- cbind(subject, feature, activity)

##Grab all the data that has mean or std in the colnames
colMeanSTD <- grep(".*Mean.*|.*Std.*", names(allData), ignore.case=TRUE)

##Create vector Subject, colMeanSTD, and Activity. Store into reqCol
reqCol <- c(1, colMeanSTD, 563)

##Get reqCol columns from allData and store it into tidyData
tidyData <- allData[, reqCol]

##Change tidyData column Activity as characters.
tidyData$Activity <- as.character(tidyData$Activity)

##Give Activity Names to tidyData column Activity
for (i in 1:6) {
  tidyData$Activity[tidyData$Activity == i] <- as.character(activityNames[i,2])
}

##Change tidyData columns Activity and Subject to factors.
tidyData$Activity <- as.factor(tidyData$Activity)
tidyData$Subject <- as.factor(tidyData$Subject)

##Give appropriate labels to tidyData using gsub
names(tidyData) <- gsub("Acc", "Accelerometer", names(tidyData))
names(tidyData) <- gsub("^t", "Time", names(tidyData))
names(tidyData) <- gsub("\\(t", "\\(Time", names(tidyData))
names(tidyData) <- gsub("-mean()", "Mean", names(tidyData))
names(tidyData) <- gsub("-std()", "STD", names(tidyData))
names(tidyData) <- gsub("Gyro", "Gyroscope", names(tidyData))
names(tidyData) <- gsub("Mag", "Magnitude", names(tidyData))
names(tidyData) <- gsub("^f", "Frequency", names(tidyData))
names(tidyData) <- gsub("BodyBody", "Body", names(tidyData))
names(tidyData) <- gsub("angle", "Angle", names(tidyData))
names(tidyData) <- gsub("gravity", "Gravity", names(tidyData))

##Make tidyData a data.table
tidyData <- data.table(tidyData)

##Get the mean of the two data sets
completeTidyData <- aggregate(.~Subject + Activity, tidyData, FUN = mean)

##Order dataset with Subject first, then Activity
completeTidyData <- completeTidyData[order(completeTidyData$Subject, completeTidyData$Activity),]

##Set directory to where you want to save the data.
setwd("C:/Users/RDITLQTD/Desktop/Data_Science_Specialization/CRSE3_GettingAndCleaningData/CRSE3_WK4_PROG_ASGNMT")

##Write data to table. File is called Tidy.txt
write.table(completeTidyData, file = "Tidy.txt", row.names = FALSE)

