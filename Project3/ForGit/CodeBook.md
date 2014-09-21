## This file contains information on variables for "Getting and Cleaning Data" Course Project submission.

RAW DATA  
Consists of 8 different data sets  
1. features - names of 561 variables derived from the measurements made during the experiment   
2. activities - 6 types of activity performed during the experiments with corresponding numerical labels  
3. trainData - data for all variables in the training group (7352 observations in total)
4. trainLabels - numerical labels for activities for all of the observations in training group
5. trainSubjects - numerical labels for subjects for all of the observations in the training group
6. testData - data for all variables in the test group (2947 observations in total)
7. testLabels - numerical labels for activities for all of the observations in test group
8. testSubjects - numerical labels for subjects for all of the observations in the test group  

HOW DATA WAS COLLECTED   
The data for these data sets came from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz. Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. Finally a Fast Fourier Transform (FFT) was applied to some of these signals.  

FINAL TIDY DATA   
To create final data set the following steps were taken    
1. test and train data sets the were merged keeping all 561 variables and 2 columns containing subjects ('Subject') and activity labels ('Activity') were added  
2. the variable names were subsetted to contain only 'Subject', 'Activity' and mean and standard deviation measurements (all variables containing
'mean' or 'std' but excluding 'meanFreq') 
3. variables were renamed with the following changes made  
    * removed all '-' and '()'
    * removed duplications: 'BodyBody' to 'Body'
    * expanded all abbreviations: 'Gyro' to 'Gyroscope', 'Acc' to 'Acceleration
    * changed first symbols from 't' to 'Time' and from 'f' to 'Freq' 
    * changed 'mean' to 'Mean' and 'std' to 'StdDev'  
4. data was transformed to calculate average for each variable by each subject and activity    

Final data set is tidy because  
* each variable is in one column
* each row contains a summary of all observations of one type
* contains only one table  
Please note each row contains a unique combination of 'Subject' and 'Activity'  

VARIABLES  

Subject
Integer: value in 1-30 range represents the volunteer that participated in experiment   

Activity  
Factor with 6 levels    
* WALKING    
* WALKING_UPSTAIRS  
* WALKING_DOWNSTAIRS  
* SITTING  
* STANDING  
* LAYING    
	
The remaining 66 variables represent averages of different measurements obtained during the experiment with 'time' and 'freq' at the beginning  
of the name denoting 'time domain signals' or 'frequency domain signals'.   	
	
timeBodyAccelerationMeanX   
timeBodyAccelerationMeanY  
timeBodyAccelerationMeanZ  
Numeric: contains average of the mean values of body acceleration signals in X, Y and Z directions   

timeBodyAccelerationStdDevX  
timeBodyAccelerationStdDevY  
timeBodyAccelerationStdDevZ  
Numeric: contains average of the standard deviations of body acceleration signals in X, Y and Z directions  

timeGravityAccelerationMeanX  
timeGravityAccelerationMeanY  
timeGravityAccelerationMeanZ  
Numeric: contains average of the mean values of gravity acceleration signals in X, Y and Z directions  

timeGravityAccelerationStdDevX  
timeGravityAccelerationStdDevY  
timeGravityAccelerationStdDevZ  
Numeric: contains average of the standard deviations of gravity acceleration signals in X, Y and Z directions  

timeBodyAccelerationJerkMeanX  
timeBodyAccelerationJerkMeanY  
timeBodyAccelerationJerkMeanZ  
Numeric: contains average of the mean values of body acceleration jerk signals in X, Y and Z directions  

timeBodyAccelerationJerkStdDevX  
timeBodyAccelerationJerkStdDevY  
timeBodyAccelerationJerkStdDevZ  
Numeric: contains average of the standard deviations of body acceleration jerk signals in X, Y and Z directions  

timeBodyGyroscopeMeanX  
timeBodyGyroscopeMeanY  
timeBodyGyroscopeMeanZ  
Numeric: contains average of the mean values of body angular velocity signals in X, Y and Z directions  

timeBodyGyroscopeStdDevX  
timeBodyGyroscopeStdDevY  
timeBodyGyroscopeStdDevZ  
Numeric: contains average of the standard deviations of body angular velocity signals in X, Y and Z directions  

timeBodyGyroscopeJerkMeanX  
timeBodyGyroscopeJerkMeanY  
timeBodyGyroscopeJerkMeanZ  
Numeric: contains average of the mean values of body angular jerk signals in X, Y and Z directions  

timeBodyGyroscopeJerkStdDevX  
timeBodyGyroscopeJerkStdDevY  
timeBodyGyroscopeJerkStdDevZ  
Numeric: contains average of the standard deviations of body angular jerk signals in X, Y and Z directions  

timeBodyAccelerationMagMean  
Numeric: contains average of the mean values of magnitude of body acceleration signals  

timeBodyAccelerationMagStdDev  
Numeric: contains average of the standard deviation of magnitude of body acceleration signals  

timeGravityAccelerationMagMean  
Numeric: contains average of the mean values of magnitude of gravity acceleration signals  

timeGravityAccelerationMagStdDev  
Numeric: contains average of the standard deviation of magnitude of gravity acceleration signals  

timeBodyAccelerationJerkMagMean  
Numeric: contains average of the mean values of magnitude of body acceleration jerk signals  

timeBodyAccelerationJerkMagStdDev  
Numeric: contains average of the standard deviations of magnitude of body acceleration jerk signals  

timeBodyGyroscopeMagMean
Numeric: contains average of the mean values of magnitude of body angular velocity signals  

timeBodyGyroscopeMagStdDev
Numeric: contains average of the standard deviation of magnitude of body angular velocity signals  

timeBodyGyroscopeJerkMagMean  
Numeric: contains average of the mean values of magnitude of body angular velocity jerk signals  

timeBodyGyroscopeJerkMagStdDev  
Numeric: contains average of the standard deviation of magnitude of body angular velocity jerk signals  

Same as above but for frequency domain signals  
freqBodyAccelerationMeanX  
freqBodyAccelerationMeanY  
freqBodyAccelerationMeanZ  
freqBodyAccelerationStdDevX  
freqBodyAccelerationStdDevY  
freqBodyAccelerationStdDevZ  
freqBodyAccelerationJerkMeanX  
freqBodyAccelerationJerkMeanY  
freqBodyAccelerationJerkMeanZ  
freqBodyAccelerationJerkStdDevX  
freqBodyAccelerationJerkStdDevY  
freqBodyAccelerationJerkStdDevZ  
freqBodyGyroscopeMeanX  
freqBodyGyroscopeMeanY  
freqBodyGyroscopeMeanZ  
freqBodyGyroscopeStdDevX  
freqBodyGyroscopeStdDevY  
freqBodyGyroscopeStdDevZ  
freqBodyAccelerationMagMean  
freqBodyAccelerationMagStdDev  
freqBodyAccelerationJerkMagMean  
freqBodyAccelerationJerkMagStdDev  
freqBodyGyroscopeMagMean  
freqBodyGyroscopeMagStdDev  
freqBodyGyroscopeJerkMagMean  
freqBodyGyroscopeJerkMagStdDev  
  
