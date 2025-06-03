Code Book for Human Activity Recognition Using Smartphones Data
This code book describes the variables, the data, and the work performed to clean up the data.

Dataset Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Data available on: https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones

Variables:

- subject: ID of subject (1-30)

- activity: Activity performed by each subject (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
feature

- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals (TimeAccelerometer-XYZ and TimeGyroscope-XYZ).

   Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (TimeBodyAccelerometerJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (TimeBodyAccelerometerMagnitude, TimeGravityAccelerometerMagnitude, TimeBodyAccelerometerJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude).

   Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing FrequencyBodyAccelerometer-XYZ, FrequencyBodyAccelerometerJerk-XYZ, FrequencyBodyGyroscope-XYZ, FrequencyBodyAccelerometerJerkMagnitude, FrequencyBodyGyroscopeMagnitude, FrequencyBodyGyroscopeJerkMagnitude.

   The '-XYZ' denotes 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:

- Mean: Mean value
- std: Standard deviation

Data calculations:

Merged the training and test sets into one dataset
Filtered the mean and standard deviation reading for each measurement
Used descriptive names for the activities in the dataset
Labeled the dataset with descriptive names
Created a second, independent tidy dataset with the average of each variable for each activity and each subject
