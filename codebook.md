## Description of Variables

## Summary

This dataset contains summary data for the dataset located [here]("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" "Title").

Each of the features of this dataset is labelled with a number of indicators, which are summarized in the following list.  A description of each variable follows.

--------------------------------------------------------------------------------

* Time/Freq: indicates whether the signal is in the Time or Frequency domain
* Body/Gravity: indicates whether the force measured is due to gravity or body motion
* Acc/Gyro: indicates whether the measurement is taken from the phone's accelerometer or gyroscope
* Jerk: indicates whether the observation measures "Jerk" (The first derivative of acceleration).  These are calculated by differentiating the corresponding non-Jerk signal with the otherwise same name
* Mag: indicates the vector magnitude of a signal, computed by taking the norm of the corresponding observation across X Y and Z.  These observations will not include an axis label
* Mean/Std: indicates the mean or standard deviation of recorded raw values
* X/Y/Z: indicates the axis of measurement, in phone-centered co-ordinates.  No axis label indicates a scalar.

--------------------------------------------------------------------------------

## Detail

--------------------------------------------------------------------------------
* Activity: The activity being performed while data was recorded.  There are six levels
    - Laying
    - Sitting
    - Standing
    - Walking
    - Walking down stairs
    - Walking up stairs
* Subject: The numeric ID of the test subject being observed
* TimeBodyAccMeanX: The mean of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccMeanY: The mean of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccMeanZ: The mean of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in time coordinates. 
* TimeGravityAccMeanX: The mean of the gravity component of acceleration measured along the X-axis of the phone's accelerometer, in time coordinates. 
* TimeGravityAccMeanY: The mean of the gravity component of acceleration measured along the Y-axis of the phone's accelerometer, in time coordinates. 
* TimeGravityAccMeanZ: The mean of the gravity component of acceleration measured along the Z-axis of the phone's accelerometer, in time coordinates. 
* TimeBodyAccJerkMeanX: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccJerkMeanY: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccJerkMeanZ: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in time coordinates
* TimeBodyGyroMeanX: The mean of the body motion component of acceleration measured along the X-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroMeanY: The mean of the body motion component of acceleration measured along the Y-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroMeanZ: The mean of the body motion component of acceleration measured along the Z-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkMeanX: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the X-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkMeanY: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Y-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkMeanZ: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Z-axis of the phone's gyroscope, in time coordinates
* TimeBodyAccMagMean: The mean of the magnitude (Euclidean norm) of the body motion component of acceleration measured on the phone's accelerometer, in time coordinates
* TimeGravityAccMagMean: The mean of the magnitude (Euclidean norm) of the gravity component of acceleration measured on the phone's accelerometer, in time coordinates
* TimeBodyAccJerkMagMean: The mean of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's accelerometer, in time coordinates
* TimeBodyGyroMagMean: The mean of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkMagMean: The mean of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's gyroscope, in time coordinates
* FreqBodyAccMeanX: The mean of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccMeanY: The mean of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccMeanZ: The mean of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkMeanX: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkMeanY: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkMeanZ: The mean of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyGyroMeanX: The mean of the body motion component of acceleration measured along the X-axis of the phone's gyroscope, in frequency coordinates
* FreqBodyGyroMeanY: The mean of the body motion component of acceleration measured along the Y-axis of the phone's gyroscope, in frequency coordinates
* FreqBodyGyroMeanZ: The mean of the body motion component of acceleration measured along the Z-axis of the phone's gyroscope, in frequency coordinates
* FreqBodyAccMagMean: The mean of the magnitude (Euclidean norm) of the body motion component of acceleration measured on the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkMagMean: The mean of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's accelerometer, in frequency coordinates
* FreqBodyGyroMagMean: The mean of the magnitude (Euclidean norm) of the body motion component of acceleration measured on the phone's gyroscope, in frequency coordinates
* FreqBodyGyroJerkMagMean: The mean of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's gyroscope, in frequency coordinates
* TimeBodyAccStdX: The standard deviation of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccStdY: The standard deviation of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccStdZ: The standard deviation of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in time coordinates
* TimeGravityAccStdX: The standard deviation of the gravity component of acceleration measured along the X-axis of the phone's accelerometer, in time coordinates. 
* TimeGravityAccStdY: The standard deviation of the gravity component of acceleration measured along the Y-axis of the phone's accelerometer, in time coordinates. 
* TimeGravityAccStdZ: The standard deviation of the gravity component of acceleration measured along the Z-axis of the phone's accelerometer, in time coordinates. 
* TimeBodyAccJerkStdX: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccJerkStdY: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in time coordinates
* TimeBodyAccJerkStdZ: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in time coordinates
* TimeBodyGyroStdX: The standard deviation of the body motion component of acceleration measured along the X-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroStdY: The standard deviation of the body motion component of acceleration measured along the Y-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroStdZ: The standard deviation of the body motion component of acceleration measured along the Z-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkStdX: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the X-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkStdY: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Y-axis of the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkStdZ: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Z-axis of the phone's gyroscope, in time coordinates
* TimeBodyAccMagStd: The standard deviation of the magnitude (Euclidean norm) of the body motion component of acceleration measured on the phone's accelerometer, in time coordinates
* TimeGravityAccMagStd: The standard deviation of the magnitude (Euclidean norm) of the gravity component of acceleration measured on the phone's accelerometer, in time coordinates
* TimeBodyAccJerkMagStd: The standard deviation of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's accelerometer, in time coordinates
* TimeBodyGyroMagStd: The standard deviation of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's gyroscope, in time coordinates
* TimeBodyGyroJerkMagStd: The standard deviation of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's gyroscope, in time coordinates
* FreqBodyAccStdX: The standard deviation of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccStdY: The standard deviation of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccStdZ: The standard deviation of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkStdX: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the X-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkStdY: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Y-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkStdZ: The standard deviation of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured along the Z-axis of the phone's accelerometer, in frequency coordinates
* FreqBodyGyroStdX: The standard deviation of the body motion component of acceleration measured along the X-axis of the phone's gyroscope, in frequency coordinates
* FreqBodyGyroStdY: The standard deviation of the body motion component of acceleration measured along the Y-axis of the phone's gyroscope, in frequency coordinates
* FreqBodyGyroStdZ: The standard deviation of the body motion component of acceleration measured along the Z-axis of the phone's gyroscope, in frequency coordinates
* FreqBodyAccMagStd: The standard deviation of the magnitude (Euclidean norm) of the body motion component of acceleration measured on the phone's accelerometer, in frequency coordinates
* FreqBodyAccJerkMagStd: The standard deviation of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's accelerometer, in frequency coordinates
* FreqBodyGyroMagStd: The standard deviation of the magnitude (Euclidean norm) of the body motion component of acceleration measured on the phone's gyroscope, in frequency coordinates
* FreqBodyGyroJerkMagStd: The standard deviation of the magnitude (Euclidean norm) of the "Jerk" (first derivative of acceleration) of the body motion component of acceleration measured on the phone's gyroscope, in frequency coordinates.

--------------------------------------------------------------------------------
