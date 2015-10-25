library(downloader)
library(dplyr)

## Section 1 - Merges the training and the test sets to create one data set.

#url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
#temp <- "wearables.zip"

#download(url, dest = temp, mode = "wb") 
#unzip (temp)
#unlink(temp)

# get header data
headers <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
headers <- c("subject", headers$V2, "dataset", "outcome")

# define directories
traindir <- "./UCI HAR Dataset/train/"
testdir <- "./UCI HAR Dataset/test/"

# read training data
subject_train <- read.table(paste(traindir, "subject_train.txt", sep = ""))
X_train <- read.table(paste(traindir, "X_train.txt", sep = ""))
y_train <- read.table(paste(traindir, "y_train.txt", sep = ""))

dataset <- rep("train", nrow(subject_train))
train <- cbind(subject_train, X_train, dataset, y_train)

# read test data
subject_test <- read.table(paste(testdir, "subject_test.txt", sep = ""))
X_test <- read.table(paste(testdir, "X_test.txt", sep = ""))
y_test <- read.table(paste(testdir, "y_test.txt", sep = ""))

dataset <- rep("test", nrow(subject_test))
test <- cbind(subject_test, X_test, dataset, y_test)

# combine training and test data
data <- rbind(train, test)
names(data) <- headers

## Section 2 - Extracts only the measurements on the mean and standard deviation for each measurement.

# 'Mean' is present in headers in uppercase, but these columns are not included in the dataset.
# They seem to represent the result of a function with a mean argument.
meanHeaders <- grep("mean", headers, ignore.case = FALSE) 
stdHeaders <- grep("std", headers, ignore.case = FALSE)

# Including subject, dataset and outcome in selected headers
selectedHeaders <- c("subject", headers[c(meanHeaders, stdHeaders)], "dataset", "outcome")

data <- data[, colnames(data) %in% selectedHeaders] 

## Section 3 - Uses descriptive activity names to name the activities in the data set.
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")
activities <- activities$V2

data$outcome <- as.factor(data$outcome) 
levels(data$outcome) <- activities

## Section 4 - Appropriately labels the data set with descriptive variable names. 
# This has already been completed in Section 1

## Section 5 - From the data set in step 4, creates a second, independent tidy data set
## with the average of each variable for each activity and each subject.
# data$outcome <- as.numeric(data$outcome)
data2 <- aggregate(x = data, by = list(data$subject, data$outcome), FUN = mean)

# reorder data.frame
data2$dataset <- NULL
data2$outcome <- NULL
data2$subject <- NULL

data2 <-rename(data2, subject = Group.1, activity = Group.2)

# reapply activity
data2$activity <- as.factor(data2$activity)
levels(data$activity) <- activities

## Output
write.table(data2, file = "submission.txt", row.names = FALSE)

