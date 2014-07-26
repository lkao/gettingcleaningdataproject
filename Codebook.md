CODEBOOK


run_analysis.R will produce the following tables in R:



X_test = corresponds to "X_test.txt" file in UCI HAR Dataset

X_train = corresponds to "X_train.txt" file in UCI HAR Dataset

activity_labels = corresponds to "activity_labels.txt" file in UCI HAR Dataset

features = corresponds to "features.txt" file in UCI HAR Dataset

melt = melted dataset of "total2.txt", used to produce final output dataset "result.txt"

result = final output dataset with means of mean/standard deviations of each subject/each activity. This is the second "tidy" dataset.

subject_test = corresponds to "subject_test.txt" in UCI HAR Dataset

subject_train = corresponds to "subject_train.txt" in UCI HAR Datset

test = compilation of "test" subjects, with appended activities

total = compilation of "test" and "train" tables. This is our first "tidy" dataset.

total2 = "total" table with only appropriate columns (mean() and std()) included

train = compilation of "train" subjects, with appended activities

y_test = corresponds to "y_test.txt" in UCI HAR Dataset

y_test2= "y_test" with activity labels appended

y_train = corresponds to "y_train.txt" in UCI HAR Dataset

y_train2= "y_train" with activity labels appended




RESULT.TXT VARIABLES INFO

(For more in-depth information, see the "features_info.txt" file in the UCI HAR Dataset)

SUB
	Integers 1-30
		This variable refers to the ID of the test subject. There were 30 subjects total.
	
ACT
	LAYING
	SITTING
	STANDING
	WALKING
	WALKING_DOWNSTAIRS
	WALKING_UPSTAIRS
		This variable refers to the activity the test subject performed while being analyzed. There are 6 total actions, and all 30 subjects performed all 6.
		
tBodyAcc-mean()-X
	[-1,1]
		mean of the time domain signal of Body Acceleration, X-Axis

tBodyAcc-mean()-Y
	[-1,1]
		mean of the time domain signal of Body Acceleration, Y-Axis
		
tBodyAcc-mean()-Z
	[-1,1]
		mean of the time domain signal of Body Acceleration, Z-Axis

tBodyAcc-std()-X
	[-1,1]
		standard deviation of the time domain signal of Body Acceleration, X-Axis		

tBodyAcc-std()-Y
	[-1,1]
		standard deviation of the time domain signal of Body Acceleration, Y-Axis
		
tBodyAcc-std()-Z
	[-1,1]
		standard deviation of the time domain signal of Body Acceleration, Z-Axis
		
tGravityAcc-mean()-X
	[-1,1]
		mean of the time domain signal of Gravitational Acceleration, X-Axis
		
tGravityAcc-mean()-Y
	[-1,1]
		mean of the time domain signal of Gravitational Acceleration, Y-Axis
		
tGravityAcc-mean()-Z
	[-1,1]
		mean of the time domain signal of Gravitational Acceleration, Z-Axis
		
tGravityAcc-std()-X
	[-1,1]
		standard deviation of the time domain signal of Gravitational Acceleration, X-Axis
		
tGravityAcc-std()-Y
	[-1,1]
		standard deviation of the time domain signal of Gravitational Acceleration, Y-Axis
		
tGravityAcc-std()-Z
	[-1,1]
		standard deviation of the time domain signal of Gravitational Acceleration, Z-Axis
		
tBodyAccJerk-mean()-X
	[-1,1]
		mean of the time domain signal of body linear acceleration Jerk signals, X-axis
		
tBodyAccJerk-mean()-Y
	[-1,1]
		mean of the time domain signal of body linear acceleration Jerk signals, Y-axis
		
tBodyAccJerk-mean()-Z
	[-1,1]
		mean of the time domain signal of body linear acceleration Jerk signals, Z-axis
		
tBodyAccJerk-std()-X
	[-1,1]
		standard deviation of the time domain signal of body linear acceleration Jerk signals, X-axis
		
tBodyAccJerk-std()-Y
	[-1,1]
		standard deviation of the time domain signal of body linear acceleration Jerk signals, Y-axis
		
tBodyAccJerk-std()-Z
	[-1,1]
		standard deviation of the time domain signal of body linear acceleration Jerk signals, Z-axis

tBodyGyro-mean()-X
	[-1,1]
		mean of the time domain signal of angular velocity, X-axis
		
tBodyGyro-mean()-Y
	[-1,1]
		mean of the time domain signal of angular velocity, Y-axis
		
tBodyGyro-mean()-Z
	[-1,1]
		mean of the time domain signal of angular velocity, Z-axis
		
tBodyGyro-std()-X
	[-1,1]
		standard deviation of the time domain signal of angular velocity, X-axis
		
tBodyGyro-std()-Y
	[-1,1]
		standard deviation of the time domain signal of angular velocity, Y-axis
		
tBodyGyro-std()-Z
	[-1,1]
		standard deviation of the time domain signal of angular velocity, Z-axis
		
tBodyGyroJerk-mean()-X
	[-1,1]
		mean of the time domain signal of angular velocity Jerk signals, X-axis
		
tBodyGyroJerk-mean()-Y
	[-1,1]
		mean of the time domain signal of angular velocity Jerk signals, Y-axis
		
tBodyGyroJerk-mean()-Z
	[-1,1]
		mean of the time domain signal of angular velocity Jerk signals, Z-axis
		
tBodyGyroJerk-std()-X
	[-1,1]
		standard deviation of the time domain signal of angular velocity Jerk signals, X-axis
		
tBodyGyroJerk-std()-Y
	[-1,1]
		standard deviation of the time domain signal of angular velocity Jerk signals, Y-axis
		
tBodyGyroJerk-std()-Z
	[-1,1]
		standard deviation of the time domain signal of angular velocity Jerk signals, Z-axis
		
tBodyAccMag-mean()
	[-1,1]
		mean of the time domain signal of the calculated magnitude of Body Acceleration
		
tBodyAccMag-std()
	[-1,1]
		standard deviation of the time domain signal of the calculated magnitude of Body Acceleration

tGravityAccMag-mean()
	[-1,1]
		mean of the time domain signal of the calculated magnitude of Gravitational Acceleration

tGravityAccMag-std()
	[-1,1]
		standard deviation of the time domain signal of the calculated magnitude of Gravitational Acceleration
		
tBodyAccJerkMag-mean()
	[-1,1]
		mean of the time domain signal of the calculated magnitude of the Body Acceleration Jerk signal

tBodyAccJerkMag-std()
	[-1,1]
		standard deviation of the time domain signal of the calculated magnitude of the Body Acceleration Jerk signal
		
			
tBodyGyroMag-mean()
	[-1,1]
		mean of the time domain signal of the calculated magnitude of angular velocity
		
tBodyGyroMag-std()
	[-1,1]
		standard deviation of the time domain signal of the calculated magnitude of angular velocity

tBodyGyroJerkMag-mean()
	[-1,1]
		mean of the time domain signal of the calculated magnitude of angular velocity Jerk signal
		
tBodyGyroJerkMag-std()
	[-1,1]
		standard deviation of the time domain signal of the calculated magnitude of angular velocity Jerk signal
		
fBodyAcc-mean()-X
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAcc-X
		
fBodyAcc-mean()-Y
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAcc-Y
		
fBodyAcc-mean()-Z
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAcc-Z

fBodyAcc-std()-X
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAcc-X
		
fBodyAcc-std()-Y
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAcc-Y
		
fBodyAcc-std()-Z
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAcc-Z
		
fBodyAccJerk-mean()-X-Axis
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAccJerk-X
		
fBodyAccJerk-mean()-Y-Axis
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAccJerk-Y
		
fBodyAccJerk-mean()-Z-Axis
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAccJerk-Z

fBodyAccJerk-std()-X
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAccJerk-X
		
fBodyAccJerk-std()-Y
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAccJerk-Y
		
fBodyAccJerk-std()-Z
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAccJerk-Z

		
fBodyGyro-mean()-X
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyGyro-X
		
fBodyGyro-mean()-Y
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyGyro-Y
		
fBodyGyro-mean()-Z
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyGyro-Z
		
fBodyGyro-std()-X
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyGyro-X
		
fBodyGyro-std()-Y
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyGyro-Y
		
fBodyGyro-std()-Z
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyGyro-Z
		
fBodyAccMag-mean()
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAccMag
		
fBodyAccMag-std()
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAccMag
		
fBodyBodyAccJerkMag-mean()
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyAccJerkMag
		
fBodyBodyAccJerkMag-std()
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyAccJerkMag
		
fBodyBodyGyroMag-mean()
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyGyroMag
		
fBodyBodyGyroMag-std()
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyGyroMag
		
fBodyBodyGyroJerkMag-mean()
	[-1,1]
		mean of the Fast Fourier Transform applied to tBodyGyroJerkMag

fBodyBodyGyroJerkMag-std()
	[-1,1]
		standard deviation of the Fast Fourier Transform applied to tBodyGyroJerkMag