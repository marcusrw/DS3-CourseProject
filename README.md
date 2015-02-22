
# Human Activity Recognition Using Smartphones Dataset - Tidying
## Version 1.0

## Summary

This dataset contains summary data for the dataset located [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### Original Experiment

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Tidying The Dataset

Upon receipt of this dataset, we read the data, variable names, activity labels,
and subject IDs for both the test and training datasets, and merged them into a single table.  We selected all observations of type mean or standard deviation for each test subject and each activity type.  We renamed the variables to make them more compatible with R's grammar, and removed some typographical errors.

Finally we created a summary dataset by computing the means of each feature, grouped by test subject and by activity type.  This dataset is stored in the file tidySummary.txt, and can be read into R using the following commands.

`data <- read.table("tidySummary.txt", header = TRUE)`

`View(data)`


### The dataset includes the following files

- 'README.md'
- 'codebook.md' Shows information about the variables used in the dataset.
- 'tidySummary.txt' Gives the mean of each type of measurement, grouped by person and by activity
- 'run_analysis.R' Contains the code used to run the analysis.  See this for a thorough description of how the data was processed, and run it to produce the merged dataset and summary described above.

### Notes
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about the raw dataset contact: activityrecognition@smartlab.ws

### License
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit? degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
