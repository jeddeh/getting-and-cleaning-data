## README for 'getting and cleaning data' repository
### Getting and Cleaning Data Coursera Project  

Last updated 2015-10-25 10:40PM Rob Grant

This is a README for the script for the 'Getting and Cleaning Data' project run by Coursera.  
The script is found on github at <https://github.com/jeddeh/getting-and-cleaning-data/blob/master/run_analysis.R>
  
<br>  

#### External libraries  
- downloader  
- dplyr  
  
<br>  

#### Loading the data
The original data can be found at <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>  
It contains processed data collected from the accelerometers of Samsung Galaxy S smartphones.   

The original data can be re-read into the working directory by uncommenting and running the below lines in the script.

    #url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    #temp <- "wearables.zip"

    #download(url, dest = temp, mode = "wb") 
    #unzip (temp)
    #unlink(temp)  
  
<br>  

#### Reading the data
The 'UCI HAR Dataset' folder must be in the R working directory in order for the script to read the data.  
  
  ---
  
#### Section 1 - Merges the training and the test sets to create one data set.
The headers for the dataset are read from the 'features.txt' file into the data.frame `headers`.

The files in the `train` folder are read into memory and bound using `cbind` into a single dataset named `train`.
The files in the `test` folder are read into memory and bound using `cbind` into a single dataset named `test`.  

A new column called `dataset` is created for each of the datasets holding the factor value `train` or `test` depending on which dataset the observation has come from.

The `test` and `train` datasets are merged into a single dataset named `data` using `rbind`.

The header names from `headers` are applied to the `data` data.frame.  
The header name for the subject is `subject`.    
The header name for the activity outcomes read from the 'y_test.txt' and 'y_train.txt' files is `outcome`.

The files in the `Intertial` folders are not used.  

<br>      

#### Section 2 - Extracts only the measurements on the mean and standard deviation for each measurement.  
The fields selected have `mean()` or `std()` in their headers

'Mean' is present in the some of the headers with an uppercase 'M', but these columns are not included in the resulting dataset.  
They seem to represent the result of some other function with a mean argument.  

The `data` data.frame then holds the processed data with only mean and standard deviation measurements.  
  
<br>   

#### Section 3 - Uses descriptive activity names to name the activities in the data set.  
The different types of activity are read into a data.frame `activities` from the 'activity_labels.txt' file.  
These factors then replace the numeric values in the `outcome` column in the `data` data.frame.  
  
<br>  

#### Section 4 - Appropriately labels the data set with descriptive variable names. 
This was already been completed in the script for Section 1.  

<br>  

#### Section 5 - From the data set in step 4, creates a second, independent tidy data set  
#### with the average of each variable for each activity and each subject.  
The `aggregate` function is used to get the average value for the intersection of each activity and subject.  
A new data.frame `data2` is created to hold these values.  
Unneccessary columns are deleted from the `data2` data.frame.  
The `outcome` column is renamed `activity`.
  
  ---

#### Output  
The `data2` data.frame is written to the file 'submission.txt'.
The data.frame can be read back into memory from the working directory using  
`read.table("submission.txt", header = TRUE)`

<br>
<br>
<br>

       