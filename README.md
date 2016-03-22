# GCAD_ASSIGN
the repo for the Getting and Cleaning Data assignment

---
title: "Code Book for Getting and Cleaning Data"
---

Purpose:

##this is the code for the Coursera Getting and Cleaning Data Course Project ASsignment
#Its purpose is to:
  #1  Merges the training and the test sets to create one data set.
  #2  Extracts only the measurements on the mean and standard deviation for each measurement.
  #3  Uses descriptive activity names to name the activities in the data set
  #4  Appropriately labels the data set with descriptive variable names.
  #5  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##the cleaning process combines the test and training data sets, adds labels and subjects, etc.

Requirements:

#data must be in:
#C:\Users\muttalib.masum\Documents\Library\Coursera\Getting_Cleaning_Data\UCI HAR Dataset
#train data must be in sub-folder \train\
#test data must be in sub-folder \test\

packages required: Dplyr, plyr, reshape2

Output:
##Tidydata.txt


##contains three main sets of variables:
#1 - subject  (= id of the test subject)
#2 - activity (= type of activity performed when tests taken)
#3/n - std deviation and mean variables, unaffected by coding.

#[1] "subject"                      "activity"                     "tBodyAccMeanX"               
# [4] "tBodyAccMeanY"                "tBodyAccMeanZ"                "tBodyAccStdX"                
# [7] "tBodyAccStdY"                 "tBodyAccStdZ"                 "tGravityAccMeanX"            
#[10] "tGravityAccMeanY"             "tGravityAccMeanZ"             "tGravityAccStdX"             
#[13] "tGravityAccStdY"              "tGravityAccStdZ"              "tBodyAccJerkMeanX"           
#[16] "tBodyAccJerkMeanY"            "tBodyAccJerkMeanZ"            "tBodyAccJerkStdX"            
#[19] "tBodyAccJerkStdY"             "tBodyAccJerkStdZ"             "tBodyGyroMeanX"              
#[22] "tBodyGyroMeanY"               "tBodyGyroMeanZ"               "tBodyGyroStdX"               
#[25] "tBodyGyroStdY"                "tBodyGyroStdZ"                "tBodyGyroJerkMeanX"          
#[28] "tBodyGyroJerkMeanY"           "tBodyGyroJerkMeanZ"           "tBodyGyroJerkStdX"           
#[31] "tBodyGyroJerkStdY"            "tBodyGyroJerkStdZ"            "tBodyAccMagMean"             
#[34] "tBodyAccMagStd"               "tGravityAccMagMean"           "tGravityAccMagStd"           
#[37] "tBodyAccJerkMagMean"          "tBodyAccJerkMagStd"           "tBodyGyroMagMean"            
#[40] "tBodyGyroMagStd"              "tBodyGyroJerkMagMean"         "tBodyGyroJerkMagStd"         
#[43] "fBodyAccMeanX"                "fBodyAccMeanY"                "fBodyAccMeanZ"               
#[46] "fBodyAccStdX"                 "fBodyAccStdY"                 "fBodyAccStdZ"                
#[49] "fBodyAccMeanFreqX"            "fBodyAccMeanFreqY"            "fBodyAccMeanFreqZ"           
#[52] "fBodyAccJerkMeanX"            "fBodyAccJerkMeanY"            "fBodyAccJerkMeanZ"           
#[55] "fBodyAccJerkStdX"             "fBodyAccJerkStdY"             "fBodyAccJerkStdZ"            
#[58] "fBodyAccJerkMeanFreqX"        "fBodyAccJerkMeanFreqY"        "fBodyAccJerkMeanFreqZ"       
#[61] "fBodyGyroMeanX"               "fBodyGyroMeanY"               "fBodyGyroMeanZ"              
#[64] "fBodyGyroStdX"                "fBodyGyroStdY"                "fBodyGyroStdZ"               
#[67] "fBodyGyroMeanFreqX"           "fBodyGyroMeanFreqY"           "fBodyGyroMeanFreqZ"          
#[70] "fBodyAccMagMean"              "fBodyAccMagStd"               "fBodyAccMagMeanFreq"         
#[73] "fBodyBodyAccJerkMagMean"      "fBodyBodyAccJerkMagStd"       "fBodyBodyAccJerkMagMeanFreq" 
#[76] "fBodyBodyGyroMagMean"         "fBodyBodyGyroMagStd"          "fBodyBodyGyroMagMeanFreq"    
#[79] "fBodyBodyGyroJerkMagMean"     "fBodyBodyGyroJerkMagStd"      "fBodyBodyGyroJerkMagMeanFreq"
