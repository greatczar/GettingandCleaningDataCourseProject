#Contents of Repository
This repository contains the following files. 

* ReadMe.MD - breif explanation of repository contents and analysis
* CodeBook.MD - detailed description of variables in the dataset averages.txt. 
* run_analysis.R - script that will perform the analysis
* averages.txt - the final output of run_analysis.R


##run_analysis.R

The R script does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5.  Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The initial data required to use run_analysis.R can be found at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

More information can be obtained at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Once the dateset is obtained it should be unzipped into the working directory.
The folder structure within the working directory should be arranged as follows:

./UCI HAR Dataset

./UCI HAR Dataset/test

./UCI HAR Dataset/train

There will be an additional folder with the test and train folders but they 
are not needed for the analysis.

The test folder should contain the following three files.

* subject_test.txt
* X_test.txt
* y_test.txt

The train folder should contain the following three files.

* subject_train.txt
* X_train.txt
* y_train.txt

Additionally, ./UCI HAR Dataset should contain the following two files.

* activity_labels.txt
* features.txt

Other files will be present but only the files explicitly mentioned are required for run_analysis.R to work properly. 

**Please note, run_analysis.R requires the reshape2 package.**

###Analytic steps

The three training files found in ./UCI HAR Dataset/train were read into R. The features from features.txt were added as column names to X_train.txt. Subject_train.txt, X_train.txt, and y_train.txt were merged into a single data frame called trainingSet.This process was repeated for the contents of ./UCI HAR Dataset/test with a data frame called testSet being produced.

The data frames trainingSet and testSet were merged into a new data frame called HAR. HAR is the abbreviation for Human Activity Recognition.

The HAR data frame contained 564 columns and 10,299 observations. Only columns containing means and standard deviations were required for the analysis. Extraneous columns were dropped from the data frame leaving 69 columns.

Three columns, subjects, activityLabel, and dataType were converted to factor. Labels from activity_labels.txt were applied as levels to the activityLabel column. Please note, the column dataType was added as a means to track the source of the row, either from trainingSet or testSet. It was not part of the original data.

The column names of the HAR data frame were changed, making them more descriptive. Abbreviations were expanded and camel case was used to denote the boundary between words. 

The reshape2 library package was called giving access to the melt and dcast functions.

The melt function was used to reshape the data into a tall narrow data frame for individual subjects and activityLabels.This tall data has a column for possible variable types and a column for the values of those variables.

The dcast funtion was used on the output of the melt function to calculate the average of each variable for each activity and subject.This generated a data frame called average with 180 rows and 68 variables. Column names were changed to indicate they were averages of the original columns. 

The averages data frame was exported as a text file called averages.txt. Each column in this file is delimited by a comma.

To read average.txt into R, please run the following R command: `r averages<-read.csv("averages.txt")` 