Codebook

Study Design:

This tidy dataset was composed by transforming data obtained from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" research study.  A description of the study with a link to the source is below.

Human Activity Recognition Using Smartphones Dataset Version 1.0 Overview

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

link to source documentation: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#


Feature Selection described within the features_info.txt file
=============================================================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag


The complete list of variables within the tidy_data set for each feature vector is available below

Codebook:

activity_id: Identifier, identifying the activities; Type: int 1:6

activity_name: Descriptive name for each activity type.  Type: Factor values
		WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subject_id: Identifier, identifying the subjects; Type: int 1:30
		
mean: mean values of measurements of the variables from the original datasets. Type: Real number

std: Standard deviation of measurements of the variables from the original datasets. Type: Real numbers

"tBodyAcc-mean()-X" 	
"tBodyAcc-mean()-Y" 	
"tBodyAcc-mean()-Z" 	
"tGravityAcc-mean()-X"	 
"tGravityAcc-mean()-Y" 
"tGravityAcc-mean()-Z" 
"tBodyAccJerk-mean()-X" 
"tBodyAccJerk-mean()-Y" 
"tBodyAccJerk-mean()-Z" 
"tBodyGyro-mean()-X" 
"tBodyGyro-mean()-Y" 
"tBodyGyro-mean()-Z" 
"tBodyGyroJerk-mean()-X" 
"tBodyGyroJerk-mean()-Y" 
"tBodyGyroJerk-mean()-Z" 
"tBodyAccMag-mean()" 
"tGravityAccMag-mean()" 
"tBodyAccJerkMag-mean()" 
"tBodyGyroMag-mean()" 
"tBodyGyroJerkMag-mean()" 
"fBodyAcc-mean()-X" 
"fBodyAcc-mean()-Y" 
"fBodyAcc-mean()-Z" 
"fBodyAcc-meanFreq()-X" 
"fBodyAcc-meanFreq()-Y" 
"fBodyAcc-meanFreq()-Z" 
"fBodyAccJerk-mean()-X" 
"fBodyAccJerk-mean()-Y" 
"fBodyAccJerk-mean()-Z" 
"fBodyAccJerk-meanFreq()-X" 
"fBodyAccJerk-meanFreq()-Y" 
"fBodyAccJerk-meanFreq()-Z" 
"fBodyGyro-mean()-X" 
"fBodyGyro-mean()-Y" 
"fBodyGyro-mean()-Z" 
"fBodyGyro-meanFreq()-X" 
"fBodyGyro-meanFreq()-Y" 
"fBodyGyro-meanFreq()-Z" 
"fBodyAccMag-mean()" 
"fBodyAccMag-meanFreq()" 
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()" 
"fBodyBodyGyroMag-meanFreq()" 
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-meanFreq()" 
"angle(tBodyAccMean,gravity)" 
"angle(tBodyAccJerkMean),gravityMean)" 
"angle(tBodyGyroMean,gravityMean)" 
"angle(tBodyGyroJerkMean,gravityMean)"
"angle(X,gravityMean)" 
"angle(Y,gravityMean)" 
"angle(Z,gravityMean)" 
"tBodyAcc-std()-X" 
"tBodyAcc-std()-Y" 
"tBodyAcc-std()-Z" 
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tBodyAccJerk-std()-X" 
"tBodyAccJerk-std()-Y" 
"tBodyAccJerk-std()-Z" 
"tBodyGyro-std()-X" 
"tBodyGyro-std()-Y" 
"tBodyGyro-std()-Z" 
"tBodyGyroJerk-std()-X" 
"tBodyGyroJerk-std()-Y" 
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-std()" 
"tGravityAccMag-std()" 
"tBodyAccJerkMag-std()" 
"tBodyGyroMag-std()" 
"tBodyGyroJerkMag-std()" 
"fBodyAcc-std()-X" 
"fBodyAcc-std()-Y" 
"fBodyAcc-std()-Z" 
"fBodyAccJerk-std()-X" 
"fBodyAccJerk-std()-Y" 
"fBodyAccJerk-std()-Z" 
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z" 
"fBodyAccMag-std()" 
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-std()" 
"fBodyBodyGyroJerkMag-std()"




