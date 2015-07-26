##load dplyr
library("dplyr")

##Check to see if directory exists. Creates directory if not, then uses that as working directory
if(!file.exists("tidyproject")) {dir.create("tidyproject")
}
setwd("./tidyproject")

##Download zipfile and unzip into working directory
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "./projectdataset.zip")
unzip("./projectdataset.zip")

##Read each relevant table out of the zip file
features <- read.table("./UCI HAR Dataset/features.txt")
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

##Turn the features.txt file into the variable names for the train and test sets
featurenames <- as.character(features[,2])
colnames(X_train) <- featurenames
colnames(X_test) <- featurenames

##Add the activity type as a new column to the train and test sets
activity <- as.vector(y_test[,1])
testset <- cbind(activity,X_test)
activity <- as.vector(y_train[,1])
trainset <- cbind(activity, X_train)

##Add the subject number as a new column to the train and test sets
subject <- as.vector(subject_test[,1])
testset <- cbind(subject, testset)
subject <- as.vector(subject_train[,1])
trainset <- cbind(subject, trainset)

##Merge the train and test sets
totaldata <- rbind(trainset, testset)

##Remove duplicated column names
totaldata <- totaldata[,!duplicated(colnames(totaldata))]

##Identify all columns dealing with mean or standard deviation. Create new
##dataset that only includes these columns plus subject and activity columns

meanstdnames <- grep("mean|std", names(totaldata))
col_sel <- c(1,2,meanstdnames)
smalldata <- select(totaldata,col_sel)

##Rename the activity types (1-6) by their descriptive names
actlab <- as.vector(activity_labels[,2])
smalldata[,2] <- as.factor(smalldata[,2])
smalldata[,2]<- factor(smalldata[,2], labels=actlab)

##Rename all columns with descriptive names. This is done separately for various 
##character string groupings. I'm sure there are better ways to do this!

##Axis
names(smalldata) <- gsub("-X","_X_Axis",names(smalldata))
names(smalldata) <- gsub("-Y","_Y_Axis",names(smalldata))
names(smalldata) <- gsub("-Z","_Z_Axis",names(smalldata))

##Raw Signals with "t" prefix
names(smalldata) <- gsub("tBodyAcc-","RawSignal_Body_Acceleration_",names(smalldata))
names(smalldata) <- gsub("tGravityAcc-","RawSignal_Gravity_Acceleration_",names(smalldata))
names(smalldata) <- gsub("mean()","Mean",names(smalldata))
names(smalldata) <- gsub("std()","StdDev",names(smalldata))
names(smalldata) <- gsub("tBodyAccJerk-","JerkSignal_Body_Acceleration_",names(smalldata))
names(smalldata) <- gsub("tBodyGyro-","RawSignal_Gyroscope_",names(smalldata))
names(smalldata) <- gsub("tBodyGyroJerk-","JerkSignal_Gyroscope_",names(smalldata))
names(smalldata) <- gsub("tBodyAccMag-","RawSignal_Body_Acceleration_Magnitude",names(smalldata))
names(smalldata) <- gsub("tGravityAccMag-","RawSignal_Gravity_Acceleration_Magnitude",names(smalldata))
names(smalldata) <- gsub("tBodyAccJerkMag-","JerkSignal_Body_Acceleration_Magnitude",names(smalldata))
names(smalldata) <- gsub("tBodyGyroMag-","RawSignal_Body_Gyroscope_Magnitude",names(smalldata))
names(smalldata) <- gsub("tBodyGyroJerkMag-","JerkSignal_Body_Gyroscope_Magnitude",names(smalldata))

##Fast Fourier Transformed Signals with "f" prefix
names(smalldata) <- gsub("fBodyAcc-","Transformed_Signal_Body_Acceleration_",names(smalldata))
names(smalldata) <- gsub("fBodyAccJerk-","Transformed_Jerk_Signal_Body_Acceleration_",names(smalldata))
names(smalldata) <- gsub("fBodyGyro-","Transformed_Signal_Body_Gyroscope_",names(smalldata))
names(smalldata) <- gsub("fBodyAccMag-","Transformed_Signal_Body_Acceleration_Magnitude",names(smalldata))
names(smalldata) <- gsub("fBodyBodyAccJerkMag-","Transformed_Jerk_Signal_Body_Acceleration_Magnitude",names(smalldata))
names(smalldata) <- gsub("fBodyBodyJerkMag-","Transformed_Jerk_Signal_Body_Acceleration_Magnitude",names(smalldata))
names(smalldata) <- gsub("fBodyBodyGyroMag-","Transformed_Signal_Body_Gyroscope_Magnitude",names(smalldata))
names(smalldata) <- gsub("fBodyBodyGyroJerkMag-","Transformed_Jerk_Signal_Body_Gyroscope_Magnitude",names(smalldata))

##Turn subject variable into a factor, then group dataset by subject and activity
##Create new tidy dataset with the mean value for each subject and each activity.
smalldata$subject <- as.factor(smalldata$subject)
subgroup <- group_by(smalldata, subject, activity)
tidyset <- summarise_each(subgroup, funs(mean))
tidyset
