


Codebook

This file contains a 4 column dataset of Means of all the mean and std measuremements from the Human Activity Recognition Using Smartphones Dataset Version 1.0
(Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto, 2012) summarized by Subject and Actiity type.   The original data set included 7352 observations for a training set
and 2947 observations for a test set; both training and test set had 561 measurement variables for each of these observations.   For the dataset presented here the training and test data sets are combined.  
There were 30 subjects performing 6 different kinds of activities.   This data set selects only the measurment values (of the 561 total) that were of means and standard deviations:  66 measurements and 10299 
observations of these 66 variables from 30 subjects doing 6 different activities.  From these data we computed a mean value for each of the 66 measurement for each subject for each activity and result in the following 
data set of 11880 (30 subjects by 6 activies by 66 measurements = 11880) means indexed by subject, activity, and measurment type as the three category variables (first three columns).  

Each row identifies a mean value of a particular signal type measurement for a particular subject and a particular activity. 


COLUMN 1 is the number of the subject for which these data were collected.  
	There are 30 subjects who participated in this study and so are identified simply as subjects 1 to 30


COLUMN 2 is the type of activity on which the measurements take place.   There are 6 activities for which the data were collected. 
	The 6 activities are walking, walkingupstairs, walkingdownstairs, sitting, standing, laying

COLUMN 3 identifies the signal type being measured - there are 66 different signal types. 

	From the description of the original dataset (Anguita et al, 2012):

		"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
		These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median 
		filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 
		Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) 
		using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

		Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals v
		(tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the 
		Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

		Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing 
		fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

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
		fBodyGyroJerkMag"
			(Anguita et al, 2012)

	For clarity the t and f prefix were expanded to "time" and "frequency" in the tidy datset



COLUMN 4 contains the mean acceleration values of each measurement type by subject and activity in standard gravity units 'g'





REFERENCES
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions 
for its use or misuse. Any commercial use is prohibited.  Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
