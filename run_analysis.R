
##this is the code for the Coursera Getting and Cleaning Data Course Project ASsignment
#It's purpose is to:
  #1  Merges the training and the test sets to create one data set.
  #2  Extracts only the measurements on the mean and standard deviation for each measurement.
  #3  Uses descriptive activity names to name the activities in the data set
  #4  Appropriately labels the data set with descriptive variable names.
  #5  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

library(dplyr)
library(plyr)
library(reshape2)

#import activity labels + features
setwd("c:/Users/Muttalib.Masum/documents/Library/Coursera/Getting_Cleaning_Data/UCI HAR Dataset")
act_labels <- read.table("activity_labels.txt")
features <- read.table("features.txt")

# Extract only the data on mean and standard deviation
featmeanstd <- grep(".*mean.*|.*std.*", features[,2])
featmeanstd.names <- features[featmeanstd,2]

featmeanstd.names = gsub('-mean', 'Mean', featmeanstd.names)
featmeanstd.names = gsub('-std', 'Std', featmeanstd.names)
featmeanstd.names <- gsub('[-()]', '', featmeanstd.names)

#import training data
setwd("c:/Users/Muttalib.Masum/documents/Library/Coursera/Getting_Cleaning_Data/UCI HAR Dataset/train")

train <- read.table("X_train.txt")[featmeanstd]
Acts_train <- read.table("Y_train.txt")
Subj_train <- read.table("subject_train.txt")
train <- cbind(Subj_train, Acts_train, train)


#import test data
setwd("c:/Users/Muttalib.Masum/documents/Library/Coursera/Getting_Cleaning_Data/UCI HAR Dataset/test")

test <- read.table("X_test.txt")[featmeanstd]
Acts_test <- read.table("Y_test.txt")
Subj_test <- read.table("subject_test.txt")
test <- cbind(Subj_test,Acts_test, test)

# row-combine test and train data and add labels
combinedData <- rbind(train, test)
colnames(combinedData) <- c("subject", "activity", featmeanstd.names)

# turn activities & subjects into factors
combinedData$activity <- factor(combinedData$activity, levels = act_labels[,1], labels = act_labels[,2])
combinedData$subject <- as.factor(combinedData$subject)

combinedData.melted <- melt(combinedData, id = c("subject", "activity"))
combinedData.mean <- dcast(combinedData.melted, subject + activity ~ variable, mean)

#print data file
setwd("c:/Users/Muttalib.Masum/documents/Library/Coursera/Getting_Cleaning_Data/UCI HAR Dataset")
write.table(combinedData.mean, "tidydata.txt", row.names = FALSE, quote = FALSE)