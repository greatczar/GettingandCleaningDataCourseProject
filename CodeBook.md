---
title: "CodeBook"
output: html_document
---

###Descriptors of variables found in averages.txt.


###Summary
Averages.txt constitutes 68 variables and 180 observations.To read average.txt into R, please run the following R command: `r averages<-read.csv("averages.txt")`. Averages.txt is based upon the Human Activity Recognition Using Smartphones Dataset, a dataset with 10,299 observations and 561 variables plus two identifying variables that identify the activity at the time the data was recorded(walking, walking upstairs, walking downstairs, sitting, standing, and laying) and the subject recording the data. The experiments were carried out with a group of 30 volunteers between the age of 19 and 48 years. The six activities were performed while wearing a smartphone. Accelerometer and gyroscope data were captured.  

###Data Disclaimer
The initial data upon which averages.txt is based can be found at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

More information can be obtained at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

or by contacting:

***
Human Activity Recognition Using Smartphones Dataset
Version 1.0

***
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

###Codebook for Averages.txt

***
All variable names use camel case to mark the boundary between words. 

***
subjects

* numeric identity of subject participant. Possible values 1 to 30.

***
activityLabel 
        
* description of possible subject activities.

        1. WALKING
        2. WALKING_UPSTAIRS 
        3. WALKING_DOWNSTAIRS
        4. SITTING 
        5. STANDING 
        6. LAYING

***
averageOfTimeBodyAccelerationMeanXAxis

* The average of: The mean time domain signal of the body acceleration in the x-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationMeanYAxis

* The average of: The mean time domain signal of the body acceleration in the y-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationMeanZAxis

* The average of: The mean time domain signal of the body acceleration in the z-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationStandardDeviationXAxis

* The average of: The standard deviation of the time domain signal of the body acceleration in the x-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationStandardDeviationYAxis

* The average of: The standard deviation of the time domain signal of the body acceleration in the y-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationStandardDeviationZAxis

* The average of: The standard deviation of the time domain signal of the body acceleration in the z-axis (in xyz space) direction.

***
averageOfTimeGravityAccelerationMeanXAxis

* The average of: The mean time domain signal of the gravity acceleration in the x-axis (in xyz space) direction.

***
averageOfTimeGravityAccelerationMeanYAxis

* The average of: The mean time domain signal of the gravity acceleration in the y-axis (in xyz space) direction.

***
averageOfTimeGravityAccelerationMeanZAxis

* The average of: The mean time domain signal of the gravity acceleration in the z-axis (in xyz space) direction.

***
averageOfTimeGravityAccelerationStandardDeviationXAxis

* The average of: The standard deviation of the time domain signal of the gravity acceleration in the x-axis (in xyz space) direction.

***
averageOfTimeGravityAccelerationStandardDeviationYAxis

* The average of: The standard deviation of the time domain signal of the gravity acceleration in the y-axis (in xyz space) direction.

***
averageOfTimeGravityAccelerationStandardDeviationZAxis

* The average of: The standard deviation of the time domain signal of the gravity acceleration in the z-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationJerkMeanXAxis

* The average of: The mean time domain signal of the body jerk acceleration in the x-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationJerkMeanYAxis

* The average of: The mean time domain signal of the body jerk acceleration in the y-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationJerkMeanZAxis

* The average of: The mean time domain signal of the body jerk acceleration in the z-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationJerkStandardDeviationXAxis

* The average of: The standard deviation of the time domain signal of the body jerk acceleration in the x-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationJerkStandardDeviationYAxis

* The average of: The standard deviation of the time domain signal of the body jerk acceleration in the y-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationJerkStandardDeviationZAxis

* The average of: The standard deviation of the time domain signal of the body jerk acceleration in the z-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeMeanXAxis

* The average of: The mean time domain signal of the body gyroscope in the x-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeMeanYAxis

* The average of: The mean time domain signal of the body gyroscope in the y-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeMeanZAxis

* The average of: The mean time domain signal of the body gyroscope in the z-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeStandardDeviationXAxis

* The average of: The standard deviation of the time domain signal of the body gyroscope in the x-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeStandardDeviationYAxis

* The average of: The standard deviation of the time domain signal of the body gyroscope in the y-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeStandardDeviationZAxis

* The average of: The standard deviation of the time domain signal of the body gyroscope in the z-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeJerkMeanXAxis

* The average of: The mean time domain signal of the body gyroscope jerk in the x-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeJerkMeanYAxis

* The average of: The mean time domain signal of the body gyroscope jerk in the y-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeJerkMeanZAxis

* The average of: The mean time domain signal of the body gyroscope jerk in the z-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeJerkStandardDeviationXAxis

* The average of: The standard deviation of the time domain signal of the body gyroscope jerk in the x-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeJerkStandardDeviationYAxis

* The average of: The standard deviation of the time domain signal of the body gyroscope jerk in the y-axis (in xyz space) direction.

***
averageOfTimeBodyGyroscopeJerkStandardDeviationZAxis

* The average of: The standard deviation of the time domain signal of the body gyroscope jerk in the z-axis (in xyz space) direction.

***
averageOfTimeBodyAccelerationMagnitudeMean

* The average of: The mean time domain signal of the magnitude of the body acceleration.

***
averageOfTimeBodyAccelerationMagnitudeStandardDeviation

* The average of: The standard deviation of time domain signal of the magnitude of the body acceleration.

***
averageOfTimeGravityAccelerationMagnitudeMean

* The average of: The mean time domain signal of the magnitude of the gravity acceleration.

***
averageOfTimeGravityAccelerationMagnitudeStandardDeviation

* The average of: The standard deviation of time domain signal of the magnitude of the gravity acceleration.

***
averageOfTimeBodyAccelerationJerkMagnitudeMean

* The average of: The mean time domain signal of the body jerk magnitude.

***
averageOfTimeBodyAccelerationJerkMagnitudeStandardDeviation

* The average of: The standard deviation of the time domain signal of the body jerk magnitude.

***
averageOfTimeBodyGyroscopeMagnitudeMean

* The average of: The mean time domain signal of the body gyroscope magnitude.

***
averageOfTimeBodyGyroscopeMagnitudeStandardDeviation

* The average of: The standard deviation of the time domain signal of the body gyroscope magnitude

***
averageOfTimeBodyGyroscopeJerkMagnitudeMean

* The average of: The mean time domain signal of the body gyroscope jerk magnitude

***
averageOfTimeBodyGyroscopeJerkMagnitudeStandardDeviation

* The average of: The standard deviation of the time domain signal of the body gyroscope jerk magnitude

***
averageOfFrequencyBodyAccelerationMeanXAxis

* The average of: The mean frequency domain signal of the body acceleration in the x-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationMeanYAxis

* The average of: The mean frequency domain signal of the body acceleration in the y-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationMeanZAxis

* The average of: The mean frequency domain signal of the body acceleration in the z-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationStandardDeviationXAxis

* The average of: The standard deviation of the frequency domain signal of the body acceleration in the x-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationStandardDeviationYAxis

* The average of: The standard deviation of the frequency domain signal of the body acceleration in the y-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationStandardDeviationZAxis

* The average of: The standard deviation of the frequency domain signal of the body acceleration in the z-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationJerkMeanXAxis

* The average of: The mean frequency domain signal of the body acceleration jerk in the x-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationJerkMeanYAxis

* The average of: The mean frequency domain signal of the body acceleration jerk in the y-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationJerkMeanZAxis

* The average of: The mean frequency domain signal of the body acceleration jerk in the z-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationJerkStandardDeviationXAxis

* The average of: The standard deviation of the frequency domain signal of the body acceleration jerk in the x-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationJerkStandardDeviationYAxis

* The average of: The standard deviation of the frequency domain signal of the body acceleration jerk in the y-axis (in xyz space) direction.v

***
averageOfFrequencyBodyAccelerationJerkStandardDeviationZAxis

* The average of: The standard deviation of the frequency domain signal of the body acceleration jerk in the z-axis (in xyz space) direction.

***
averageOfFrequencyBodyGyroscopeMeanXAxis

* The average of: The mean frequency domain signal of the body gyroscope in the x-axis (in xyz space) direction.

***
averageOfFrequencyBodyGyroscopeMeanYAxis

* The average of: The mean frequency domain signal of the body gyroscope in the y-axis (in xyz space) direction.

***
averageOfFrequencyBodyGyroscopeMeanZAxis

* The average of: The mean frequency domain signal of the body gyroscope in the z-axis (in xyz space) direction.

***
averageOfFrequencyBodyGyroscopeStandardDeviationXAxis

* The average of: The standard deviation of the frequency domain signal of the body gyroscope in the x-axis (in xyz space) direction.

***
averageOfFrequencyBodyGyroscopeStandardDeviationYAxis

* The average of: The standard deviation of the frequency domain signal of the body gyroscope in the y-axis (in xyz space) direction.

***
averageOfFrequencyBodyGyroscopeStandardDeviationZAxis

* The average of: The standard deviation of the frequency domain signal of the body gyroscope in the z-axis (in xyz space) direction.

***
averageOfFrequencyBodyAccelerationMagnitudeMean

* The average of: The mean frequency domain signal of the body acceleration magnitude.

***
averageOfFrequencyBodyAccelerationMagnitudeStandardDeviation

* The average of: The standard deviation of the frequency domain signal of the body acceleration magnitude.

***
averageOfFrequencyBodyAccelerationJerkMagnitudeMean

* The average of: The mean frequency domain signal of the body acceleration jerk magnitude.


***
averageOfFrequencyBodyAccelerationJerkMagnitudeStandardDeviation

* The average of: The standard deviation of the frequency domain signal of the body acceleration jerk magnitude.

***
averageOfFrequencyBodyGyroscopeMagnitudeMean

* The average of: The mean frequency domain signal of the body gyroscope magnitude.

***
averageOfFrequencyBodyGyroscopeMagnitudeStandardDeviation

* The average of: The standard deviation of the frequency domain signal of the body gyroscope magnitude.

***
averageOfFrequencyBodyGyroscopeJerkMagnitudeMean

* The average of: The mean frequency domain signal of the body gyroscope jerk magnitude.

***
averageOfFrequencyBodyGyroscopeJerkMagnitudeStandardDeviation

* The average of: The standard deviation of the frequency domain signal of the body gyroscope jerk magnitude.

