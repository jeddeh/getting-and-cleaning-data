## CodeBook for Samsung Galaxy Data
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


