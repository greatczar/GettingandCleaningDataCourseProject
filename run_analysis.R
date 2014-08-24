#Please note, run_analysis.R requires the reshape2 package.

#run_analysis.R begins with the Human Activity Recognition (HAR) dataset and
#summarizes it by the following five general steps.
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each 
#   measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. Creates a second, independent tidy data (averages.txt) set with the average of each 
#   variable for each activity and each subject.

#please refer to readme.md for further information about the original dataset
#and the folder structure assumed by this script. 

#please refer to codebook.md for further information about the original dataset
#and documentation of the variables found in the output dataset, averages.txt

#load the features that will be used as column names
features<-read.table("./UCI HAR Dataset/features.txt")

#load the training data
trainingLabels<-read.table("./UCI HAR Dataset/train/y_train.txt")
trainingSet<-read.table("./UCI HAR Dataset/train/X_train.txt")
trainingSubjects<-read.table("./UCI HAR Dataset/train/subject_train.txt")
#column V2 of features contains the feature names. Apply these as column names 
#to trainingSet
names(trainingSet)<-features$V2
#add activity identifiers and subject identifiers to trainingSet
#and add column to indicate the data is from the trainingSet.
names(trainingLabels)<-"activityid"
trainingLabels$dataType<-"TRAINING DATA" 
trainingSet<-cbind(trainingLabels,trainingSet)
names(trainingSubjects)<-"subjects"
trainingSet<-cbind(trainingSubjects,trainingSet)

#Now do it all again for the test data
#load the test data
testLabels<-read.table("./UCI HAR Dataset/test/y_test.txt")
testSet<-read.table("./UCI HAR Dataset/test/X_test.txt")
testSubjects<-read.table("./UCI HAR Dataset/test/subject_test.txt")
#column V2 of features contains the feature names. Apply these as column names 
#to testSet
names(testSet)<-features$V2
#add activity identifiers and subject identifiers to testSet
#and add column to indicate the data is from the testSet.
names(testLabels)<-"activityid"
testLabels$dataType<-"TEST DATA" 
testSet<-cbind(testLabels,testSet)
names(testSubjects)<-"subjects"
testSet<-cbind(testSubjects,testSet)
#now combine the test and training into one data frame
HAR<-rbind(trainingSet, testSet)

#now that the data has been merged start on the process to Extract only the
#measurements on the mean and standard deviation for each measurement.
#Look for all occurrences of mean and std in the column names and
#keep those columns. Need to also keep subjectid, activityid, and datatype
HAR<-HAR[c("subjects", "activityid", "dataType", 
           grep("mean|std",names(HAR),value=TRUE, ignore.case = TRUE))]
#Not clear if we are to keep the weighted frequency means. I got rid of them.
#I also eliminated angle data
HAR<-HAR[!grepl("Freq|angle",names(HAR))]

#now add the descriptive activity name
#load the activity labels
activityLabels<-read.table("./UCI HAR Dataset/activity_labels.txt")
names(activityLabels)<-c("activityid", "activity")
#convert the activityID into a factor and add levels from the activity labels
HAR$activityid<-as.factor(HAR$activityid)
levels(HAR$activityid)<-activityLabels$activity
#convert the datatype into a factor
HAR$dataType<-as.factor(HAR$dataType)
#convert the subjects into a factor
HAR$subjects<-as.factor(HAR$subjects)

#change the names.I am making the variable names camel case
#if first character is an t then replace it with time
names(HAR)<-gsub("^t","time", names(HAR))
#if first character is an f then replace it with frequency
names(HAR)<-gsub("^f","frequency", names(HAR))
#replace Acc with Acceleration
names(HAR)<-gsub("Acc","Acceleration", names(HAR))
#replace -mean() with Mean
names(HAR)<-gsub("-mean\\()","Mean", names(HAR))
#replace -std() with StandardDeviation
names(HAR)<-gsub("-std\\()","StandardDeviation", names(HAR))
#replace the x, y and z with XAxis, YAxis, ZAxis
names(HAR)<-gsub("-X","XAxis", names(HAR))
names(HAR)<-gsub("-Y","YAxis", names(HAR))
names(HAR)<-gsub("-Z","ZAxis", names(HAR))
#replace Gyro with Gyroscope
names(HAR)<-gsub("Gyro","Gyroscope", names(HAR))
#replace Mag with Magnitude
names(HAR)<-gsub("Mag","Magnitude", names(HAR))
#replace BodyBody with Body.
names(HAR)<-gsub("BodyBody","Body", names(HAR))
#change activityid to something more readable
names(HAR)[2]<-"activityLabel"
#Free up memory by removing data frames that are no longer required.
rm(testLabels, testSubjects, trainingLabels, trainingSubjects, trainingSet, 
   testSet, activityLabels, features)
#create a new dataset containing the  average of each variable for each 
#activity and each subject. I use melt and dcast, which requires the
#reshape2 package
library(reshape2)
averages<-melt(HAR,id=names(HAR[1:2]),measure.vars=names(HAR[4:69]))
averages<-dcast(averages,subjects+activityLabel~variable,mean)
#change the column names for columns 3 to 68 to 
#indicate the columns are now averages by prefixing the columns with 
#averageOf. Also, capitilize the first character of the initial names
#to keep in proper camel case. 
newNames<-paste("averageOf", gsub(pattern = "^([a-z])", replacement = "\\U\\1",
                                  names(averages[,3:68]), perl=TRUE), sep="")
names(averages)[3:68]<-newNames
#write the data frame to working directory as a comma separated text file.
write.table(averages, file="averages.txt",row.names=FALSE, sep=",")