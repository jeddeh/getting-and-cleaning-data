## CodeBook for 'submission.txt'
### Getting and Cleaning Data Coursera Project  

Last updated 2015-10-25 10:22PM Rob Grant

This is a codebook for the submitted text file for the 'Getting and Cleaning Data' project run by Coursera.  
The file is found on github at <https://github.com/jeddeh/getting-and-cleaning-data/blob/master/submission.txt>

It contains processed data collected from the accelerometers of Samsung Galaxy S smartphones.   
The original data can be found at <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The submitted file has a header row with single-space separated values and 180 rows of data.
  
Character field values are double-quoted.
  
### Fields

#### (1) subject
A integer identifier representing the person who generated the data for a particualar row (observation).
Range from 1 to 30.

#### (2) activity  
A character field representing the activity the person generating the data was involved in.  
Possible values are:  
- WALKING  
- WALKING_UPSTAIRS  
- WALKING_DOWNSTAIRS  
- SITTING  
- STANDING  
- LAYING  

#### (3 - 81) Other fields  
These are numeric fields representing the mean of various measurements for each subject and outcome (activity).  
These values are calculated from normalised data ranging from -1 to 1.

The selected fields are fields involving the mean and standard deviation of device measurements.


3. tBodyAcc-mean()-X
4. tBodyAcc-mean()-Y
5. tBodyAcc-mean()-Z
6. tBodyAcc-std()-X
7. tBodyAcc-std()-Y
8. tBodyAcc-std()-Z
9. tGravityAcc-mean()-X
10. tGravityAcc-mean()-Y
11. tGravityAcc-mean()-Z
12. tGravityAcc-std()-X
13. tGravityAcc-std()-Y
14. tGravityAcc-std()-Z
15. tBodyAccJerk-mean()-X
16. tBodyAccJerk-mean()-Y
17. tBodyAccJerk-mean()-Z
18. tBodyAccJerk-std()-X
19. tBodyAccJerk-std()-Y
20. tBodyAccJerk-std()-Z  
tBodyGyro-mean()-X  
tBodyGyro-mean()-Y  
tBodyGyro-mean()-Z  
tBodyGyro-std()-X  
tBodyGyro-std()-Y  
tBodyGyro-std()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-mean()
tBodyAccMag-std()
tGravityAccMag-mean()
tGravityAccMag-std()
tBodyAccJerkMag-mean()
tBodyAccJerkMag-std()
tBodyGyroMag-mean()
tBodyGyroMag-std()
tBodyGyroJerkMag-mean()
tBodyGyroJerkMag-std()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAcc-meanFreq()-X
fBodyAcc-meanFreq()-Y
fBodyAcc-meanFreq()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyAccJerk-meanFreq()-X
fBodyAccJerk-meanFreq()-Y
fBodyAccJerk-meanFreq()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyGyro-meanFreq()-X
fBodyGyro-meanFreq()-Y
fBodyGyro-meanFreq()-Z
fBodyAccMag-mean()
fBodyAccMag-std()
fBodyAccMag-meanFreq()
fBodyBodyAccJerkMag-mean()
fBodyBodyAccJerkMag-std()
fBodyBodyAccJerkMag-meanFreq()
fBodyBodyGyroMag-mean()
fBodyBodyGyroMag-std()
fBodyBodyGyroMag-meanFreq()
fBodyBodyGyroJerkMag-mean()
fBodyBodyGyroJerkMag-std()
fBodyBodyGyroJerkMag-meanFreq()

