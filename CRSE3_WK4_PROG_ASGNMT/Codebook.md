# Codebook

The test data set and training data set were combined by subject, features, and activity given in the original dataset.
The original data set can be found in the /getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset

The new data set is located in Tidy.txt.
This data set contains the average of each variable for each activity and each subject.

# How To Get Tidy Data
1. Use read.table to read the activity labels and features.
2. Get the Test and Train data sets. (subjectTest, featuresTest, activityTest, subjectTrain, featuresTrain, activityTrain)
3. Combine the data sets with rbind.
4. Change the column names to appropriate names. Use feature.txt to name features.
5. Column bind the data sets to make a complete dataset.
6. Look for mean or std in column names using **grep**. Use these columns to sort through the complete data set to make the tidy data.
7. Use **gsub** to give appropriate labels.
8. **aggregate** the subject and activity of the tidy data using the mean function.
9. Order the data to using Subject first and Activity second.
10. Set the directory to where the text file "Tidy.txt" will be saved.
11. Write the table out.

# Subject

 The Test subject

 

# Activity Labels

 WALKING

 WALKING_UPSTAIRS

 WALKING_DOWNSTAIRS

 SITTING

 STANDING

 LAYING



# Features Labels

The following features (left-side) were changed to variables (right-side) to better described the terms more clearly:

 "tBodyAcc-mean()-X"                        "TimeBodyAccelerometerMean()-X"             

 "tBodyAcc-mean()-Y"                        "TimeBodyAccelerometerMean()-Y"     

 "tBodyAcc-mean()-Z"                        "TimeBodyAccelerometerMean()-Z"    

 "tBodyAcc-std()-X"                         "TimeBodyAccelerometerSTD()-X"  

 "tBodyAcc-std()-Y"                         "TimeBodyAccelerometerSTD()-Y"   

 "tBodyAcc-std()-Z"                         "TimeBodyAccelerometerSTD()-Z"    

 "tGravityAcc-mean()-X"                     "TimeGravityAccelerometerMean()-X" 

 "tGravityAcc-mean()-Y"                     "TimeGravityAccelerometerMean()-Y"      

 "tGravityAcc-mean()-Z"                     "TimeGravityAccelerometerMean()-Z"  

 "tGravityAcc-std()-X"                      "TimeGravityAccelerometerSTD()-X" 

 "tGravityAcc-std()-Y"                      "TimeGravityAccelerometerSTD()-Y" 

 "tGravityAcc-std()-Z"                      "TimeGravityAccelerometerSTD()-Z" 

 "tBodyAccJerk-mean()-X"                    "TimeBodyAccelerometerJerkMean()-X"   

 "tBodyAccJerk-mean()-Y"                    "TimeBodyAccelerometerJerkMean()-Y"   

 "tBodyAccJerk-mean()-Z"                    "TimeBodyAccelerometerJerkMean()-Z"  

 "tBodyAccJerk-std()-X"                     "TimeBodyAccelerometerJerkSTD()-X"   

 "tBodyAccJerk-std()-Y"                     "TimeBodyAccelerometerJerkSTD()-Y" 

 "tBodyAccJerk-std()-Z"                     "TimeBodyAccelerometerJerkSTD()-Z"   

 "tBodyGyro-mean()-X"                       "TimeBodyGyroscopeMean()-X"  

 "tBodyGyro-mean()-Y"                       "TimeBodyGyroscopeMean()-Y" 

 "tBodyGyro-mean()-Z"                       "TimeBodyGyroscopeMean()-Z"    

 "tBodyGyro-std()-X"                        "TimeBodyGyroscopeSTD()-X"

 "tBodyGyro-std()-Y"                        "TimeBodyGyroscopeSTD()-Y"   

 "tBodyGyro-std()-Z"                        "TimeBodyGyroscopeSTD()-Z"    

 "tBodyGyroJerk-mean()-X"                   "TimeBodyGyroscopeJerkMean()-X" 

 "tBodyGyroJerk-mean()-Y"                   "TimeBodyGyroscopeJerkMean()-Y"

 "tBodyGyroJerk-mean()-Z"                   "TimeBodyGyroscopeJerkMean()-Z"  

 "tBodyGyroJerk-std()-X"                    "TimeBodyGyroscopeJerkSTD()-X" 

 "tBodyGyroJerk-std()-Y"                    "TimeBodyGyroscopeJerkSTD()-Y"

 "tBodyGyroJerk-std()-Z"                    "TimeBodyGyroscopeJerkSTD()-Z"   

 "tBodyAccMag-mean()"                       "TimeBodyAccelerometerMagnitudeMean()" 

 "tBodyAccMag-std()"                        "TimeBodyAccelerometerMagnitudeSTD()" 

 "tGravityAccMag-mean()"                    "TimeGravityAccelerometerMagnitudeMean()"

 "tGravityAccMag-std()"                     "TimeGravityAccelerometerMagnitudeSTD()"

 "tBodyAccJerkMag-mean()"                   "TimeBodyAccelerometerJerkMagnitudeMean()"  

 "tBodyAccJerkMag-std()"                    "TimeBodyAccelerometerJerkMagnitudeSTD()"     

 "tBodyGyroMag-mean()"                      "TimeBodyGyroscopeMagnitudeMean()" 

 "tBodyGyroMag-std()"                       "TimeBodyGyroscopeMagnitudeSTD()" 

 "tBodyGyroJerkMag-mean()"                  "TimeBodyGyroscopeJerkMagnitudeMean()"   

 "tBodyGyroJerkMag-std()"                   "TimeBodyGyroscopeJerkMagnitudeSTD()"

 "fBodyAcc-mean()-X"                        "FrequencyBodyAccelerometerMean()-X"   

 "fBodyAcc-mean()-Y"                        "FrequencyBodyAccelerometerMean()-Y"  

 "fBodyAcc-mean()-Z"                        "FrequencyBodyAccelerometerMean()-Z" 

 "fBodyAcc-std()-X"                         "FrequencyBodyAccelerometerSTD()-X" 

 "fBodyAcc-std()-Y"                         "FrequencyBodyAccelerometerSTD()-Y" 

 "fBodyAcc-std()-Z"                         "FrequencyBodyAccelerometerSTD()-Z"    

 "fBodyAcc-meanFreq()-X"                    "FrequencyBodyAccelerometerMeanFrequency()-X"  

 "fBodyAcc-meanFreq()-Y"                    "FrequencyBodyAccelerometerMeanFrequency()-Y" 

 "fBodyAcc-meanFreq()-Z"                    "FrequencyBodyAccelerometerMeanFrequency()-Z"     

 "fBodyAccJerk-mean()-X"                    "FrequencyBodyAccelerometerJerkMean()-X"

 "fBodyAccJerk-mean()-Y"                    "FrequencyBodyAccelerometerJerkMean()-Y"

 "fBodyAccJerk-mean()-Z"                    "FrequencyBodyAccelerometerJerkMean()-Z"  

 "fBodyAccJerk-std()-X"                     "FrequencyBodyAccelerometerJerkSTD()-X"

 "fBodyAccJerk-std()-Y"                     "FrequencyBodyAccelerometerJerkSTD()-Y"  

 "fBodyAccJerk-std()-Z"                     "FrequencyBodyAccelerometerJerkSTD()-Z"

 "fBodyAccJerk-meanFreq()-X"                "FrequencyBodyAccelerometerJerkMeanFreq()-X" 

 "fBodyAccJerk-meanFreq()-Y"                "FrequencyBodyAccelerometerJerkMeanFreq()-Y" 

 "fBodyAccJerk-meanFreq()-Z"                "FrequencyBodyAccelerometerJerkMeanFreq()-Z" 

 "fBodyGyro-mean()-X"                       "FrequencyBodyGyroscopeMean()-X"   

 "fBodyGyro-mean()-Y"                       "FrequencyBodyGyroscopeMean()-Y" 

 "fBodyGyro-mean()-Z"                       "FrequencyBodyGyroscopeMean()-Z"  

 "fBodyGyro-std()-X"                        "FrequencyBodyGyroscopeSTD()-X"     

 "fBodyGyro-std()-Y"                        "FrequencyBodyGyroscopeSTD()-Y"  

 "fBodyGyro-std()-Z"                        "FrequencyBodyGyroscopeSTD()-Z"  

 "fBodyGyro-meanFreq()-X"                   "FrequencyBodyGyroscopeMeanFreq()-X"    

 "fBodyGyro-meanFreq()-Y"                   "FrequencyBodyGyroscopeMeanFreq()-Y"  

 "fBodyGyro-meanFreq()-Z"                   "FrequencyBodyGyroscopeMeanFreq()-Z"   

 "fBodyAccMag-mean()"                       "FrequencyBodyAccelerometerMagnitudeMean()"

 "fBodyAccMag-std()"                        "FrequencyBodyAccelerometerMagnitudeSTD()"       

 "fBodyAccMag-meanFreq()"                   "FrequencyBodyAccelerometerMagnitudeMeanFreq()"  

 "fBodyBodyAccJerkMag-mean()"               "FrequencyBodyAccelerometerJerkMagnitudeMean()"  

 "fBodyBodyAccJerkMag-std()"                "FrequencyBodyAccelerometerJerkMagnitudeSTD()"

 "fBodyBodyAccJerkMag-meanFreq()"           "FrequencyBodyAccelerometerJerkMagnitudeMeanFreq()"

 "fBodyBodyGyroMag-mean()"                  "FrequencyBodyGyroscopeMagnitudeMean()" 

 "fBodyBodyGyroMag-std()"                   "FrequencyBodyGyroscopeMagnitudeSTD()"

 "fBodyBodyGyroMag-meanFreq()"              "FrequencyBodyGyroscopeMagnitudeMeanFreq()"   

 "fBodyBodyGyroJerkMag-mean()"              "FrequencyBodyGyroscopeJerkMagnitudeMean()"

 "fBodyBodyGyroJerkMag-std()"               "FrequencyBodyGyroscopeJerkMagnitudeSTD()" 

 "fBodyBodyGyroJerkMag-meanFreq()"          "FrequencyBodyGyroscopeJerkMagnitudeMeanFreq()"

 "angle(tBodyAccMean,gravity)"              "Angle(tBodyAccelerometerMean,Gravity)"   

 "angle(tBodyAccJerkMean),gravityMean)"     "Angle(tBodyAccelerometerJerkMean),GravityMean)"

 "angle(tBodyGyroMean,gravityMean)"         "Angle(tBodyGyroscopeMean,GravityMean)"                      

 "angle(tBodyGyroJerkMean,gravityMean)"     "Angle(tBodyGyroscopeJerkMean,GravityMean)" 

 "angle(X,gravityMean)"                     "Angle(X,GravityMean)" 

 "angle(Y,gravityMean)"                     "Angle(Y,GravityMean)" 

 "angle(Z,gravityMean)"                     "Angle(Z,GravityMean)"                                       
                                                                                                   
  ### Refer to document features_info.txt for more information on the data.
