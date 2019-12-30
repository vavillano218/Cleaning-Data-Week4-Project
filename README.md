---
title: "README"
output: 
  html_document:
    keep_md: true
---


Completed as part of a project for "Getting and Cleaning Data" course, the  R script "run_analysis.R" works as follows:  

1. The "UCI HAR Dataset" is downloaded into the working directory, where it is then unzipped. The structure of unzipped files are examined (using "list.files), before those files needed for the project are read with via fread into R. These files in particular are: subject_test.txt, X_test.txt, y_test.txt ,subject_train.txt, X_train.txt ,y_train.txt).
  
2. After some renaming involving the  activity (in y_test.txt and y_train.txt files)and subject-related variables (in subject_test.txt and subject_train.txt files), the activity, subject, and measurement data (the latter, in the X_train.txt and X_test.txt files) are merged to form one dataset. 

3. In line with project instructions, a new dataset is then formed containing only those feature columns relating to means and standard deviations. 

4. Descriptive activity names are assigned to the activities (which are coded from 1-6) in this new dataset

5. The column names (i.e., features, measurements) of the dataset are replaced with more descriptive names 

6. From the dataset a new,  independent "tidy" data set ("tidydataset.txt") with the average of each feature variable/measurement for each activity and each subject is generated

   
  
