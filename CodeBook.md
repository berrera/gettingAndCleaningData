The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

<ul><li>tBodyAcc-XYZ
<li>tGravityAcc-XYZ
<li>tBodyAccJerk-XYZ
<li>tBodyGyro-XYZ
<li>tBodyGyroJerk-XYZ
<li>tBodyAccMag
<li>tGravityAccMag
<li>tBodyAccJerkMag
<li>tBodyGyroMag
<li>tBodyGyroJerkMag
<li>fBodyAcc-XYZ
<li>fBodyAccJerk-XYZ
<li>fBodyGyro-XYZ
<li>fBodyAccMag
<li>fBodyAccJerkMag
<li>fBodyGyroMag
<li>fBodyGyroJerkMag</ul>

30 different subjects were examined while performing the following activities:
<ol><li>WALKING
<li>WALKING_UPSTAIRS
<li>WALKING_DOWNSTAIRS
<li>SITTING
<li>STANDING
<li>LAYING</ol>

The set of variables that were estimated from these signals are <b>for each subject AND for each activiy the mean of</b>:
<ul><li>mean(): <b>Mean value</b>
<li>std(): <b>Standard deviation</b></ul>
