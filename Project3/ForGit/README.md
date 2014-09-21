# This file contains information for "Getting and Cleaning Data" Course Project submission.

===========================================================================================
'run_analysis.R' file contains code that performs the following operations with 
Human Activity Recognition Using Smartphones Dataset sourced from here
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average 
of each variable for each activity and each subject. This data set is then saved in 
'CourseProjectData.txt' file in the same directory.

============================================================================================
Before running the program make sure that the file containing code (run_analysis.R) 
and all .txt files containing original datasets (the list below) are saved in the working directory. 
* 'features.txt': List of all variables
* 'activity_labels.txt': Links the numerical activity labels with an activity name
* 'train/X_train.txt': Training set
* 'train/y_train.txt': Training activity labels
* 'subject_train.txt': Training subjects
* 'test/X_test.txt': Test set
* 'test/y_test.txt': Test activity labels
* 'subject_test.txt': Training subjects

The code uses plyr library. Make sure it is installed before running the code.

=============================================================================================
HOW THE SCRIPT WORKS
Downloads all data from the files above into 8 separate data frames 
(corresponding to the files above): features, activities, trainData, trainLabels, trainSubjects,
testData, testLabels, testSubjects.
**Task 1:**
Merges trainSubjects, trainLabels, trainData using cbind into fulltrainDataset, 
testSubjects, testLabels, testData - into fulltestDataset.
Merges fulltestDataset and fulltrainDataset using rbind into fullDataset data frame.

**Task 2:**
Creates a subset of the variable names that includes only subjects, activity labels and mean and standard
deviation measurements using grep and RegEx. Uses this subset to create a new data frame MeanStdDataset
from fullDataset that only includes columns with the names from the subset.

**Task 3:**
Uses a for loop to replace all numerical activity labels in MeanStdDataset column 'Activity' with corresponding 
activity names from activities data frame.

**Task 4:**
Uses sub and gsub to change variable names in MeanStdDataset columns to more descriptive ones. 
The following changes were made 
* remove all '-' and '()'
* remove duplications: 'BodyBody' to 'Body'
* expand all abbreviations: 'Gyro' to 'Gyroscope', 'Acc' to 'Acceleration'
* change first symbols from 't' to 'Time' and from 'f' to 'Freq' 
* change 'mean' to 'Mean' and 'std' to 'StdDev'

**Task 5:**
Uses ddply and numcolwise to create a new data set finalDataset from MeanStdDataset that contains averages for each variable 
by each subject and each activity.

The finalDataset has been written to 'CourseProjectData.txt' file in the same directory using 
write.table(finalDataset,"CourseProjectData.txt", row.names = FALSE)

To extract data from the file and view it use this code (please make sure your working directory is the same directory where the file is saved)
data <- read.table("CourseProjectData.txt", header = TRUE) 
View(data)




