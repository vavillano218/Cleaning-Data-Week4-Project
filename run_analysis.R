library(data.table)
library(dplyr)
##(1) downloading dataset; unzipping, looking at structure of contents, reading files into R
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./ucihar_dataset.zip",method="curl")

unzip("ucihar_dataset.zip")
filenames <- list.files("UCI HAR Dataset",pattern =".txt", full.names=TRUE, include.dirs=T)
test_filenames<-list.files("UCI HAR Dataset/test",pattern =".txt", full.names=TRUE, include.dirs=T)
train_filenames<-list.files("UCI HAR Dataset/train",pattern =".txt", full.names=TRUE, include.dirs=T)
inrtsignals_filenames<-list.files("UCI HAR Dataset/test/Inertial Signals", pattern =".txt",full.names=TRUE, include.dirs=T)

activity_labels<-fread("UCI HAR Dataset/activity_labels.txt")
features<-fread("UCI HAR Dataset/features.txt") 
subject_test<-fread("UCI HAR Dataset/test/subject_test.txt")
X_test<-fread("UCI HAR Dataset/test/X_test.txt")
y_test<-fread("UCI HAR Dataset/test/y_test.txt")
subject_train<-fread("UCI HAR Dataset/train/subject_train.txt")
X_train<-fread("UCI HAR Dataset/train/X_train.txt")
y_train<-fread("UCI HAR Dataset/train/y_train.txt")


## (2) merging the training and the test sets to create one data set (also,renaming some variables)
y_test_r<-rename(y_test, activity=V1)     
y_train_r<-rename(y_train, activity=V1) 

subject_test_r<-rename(subject_test, subject=V1)
subject_train_r<-rename(subject_train, subject=V1)

test<-cbind(y_test_r,X_test)
train<-cbind(y_train_r,X_train)

test2<-cbind(subject_test_r, test)
train2<-cbind(subject_train_r, train)

features_names<-features$V2
colnames(test2)<-c("subject", "activity",features$V2)
colnames(train2)<-c("subject", "activity",features$V2)

merged<-rbind(test2,train2)


## (3)extracts only the measurements on the mean and standard deviation for each measurement

colsretained <- grepl( "subject|activity|mean|std" , colnames(merged))
merged2<-merged[,..colsretained]
 

## (4) using descriptive activity names to name the activities in the data set

activity_labels$V2
for(i in 1:6){
merged2$activity[merged2$activity ==i]<-activity_labels$V2[i]
}

## (5) labels the data set with descriptive variable names (with cleanup) 

activitycolnames <- colnames(merged2)
activitycolnames <- gsub("[()|-]", "",activitycolnames)
activitycolnames  <- gsub("BodyBody", "body", activitycolnames )
activitycolnames  <- gsub("Body", "body", activitycolnames )
activitycolnames <- gsub("mean", " mean" , activitycolnames)
activitycolnames <- gsub("std", "standard.deviation", activitycolnames)
activitycolnames <- gsub("^t", "time.domain", activitycolnames)
activitycolnames<- gsub("^f", "frequency.domain" , activitycolnames)
activitycolnames <- gsub("Freq", "frequency" ,activitycolnames)
activitycolnames<- gsub("Gyro", "gyroscope", activitycolnames)
activitycolnames <- gsub("Acc", "accelerometer", activitycolnames)
activitycolnames <- gsub("Mag", "magnitude" ,activitycolnames)
colnames(merged2)<-activitycolnames

##from the data set in step 4, creates a second, independent tidy data set with the average of 
##each variable for each activity and each subject.

activitymeans  <-  merged2 %>% group_by ( subject, activity )  %>%  summarize_each(funs(mean) )
write.table(activitymeans , "tidydataset.txt" , row.name=FALSE)
