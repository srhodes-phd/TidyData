# TidyData
### Course project for 
## Getting and Cleaning Data course in Data Science
  
Data used for this Project is from 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

####The zipped data file MUST be located in the working directory; the program file WILL NOT download the data but will unzip the file if it is found in the working directory.
The zipped data file is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The program requires these files to construct the tidy data set.
* 'features.txt': List of all features to be used for the column headings in the combined train/test dataset
* 'activity_labels.txt': Links the activity code with their activity name.
* 'y_train.txt': Training labels for activity.
* 'X_train.txt': Training set.
* 'subject_train.txt': Subejct IDs for the Training set
* 'y_test.txt': Test labels for activity.
* 'X_test.txt': Test set.
* 'subject_test.txt': Subejct IDs for the Test set

First, the program merges the test and training files, attaches the column headings, and attaches the subject IDs.
Then, the program retains only those columns containing means or standard deviation of the relevant features and merges the activity code-name file.
Finally, the program transforms the wide file in to a long file and calculates the mean value for each subject-activity-feature combination.

From the full data set, this program selects the means and standard deviations for 33 features that have been collected between 36 and 95 times on each subject for each activity.
The 33 features include 
* time domain accellerometer signals separated in to body and gravity acceleration signals in X-Y-Z (tBodyAcc and tGravityAcc; 6 features), 
* time domain gyroscope signals in X-Y-Z (tBodyGyro; 3 features), 
* time domain jerk signals in X-Y-Z (tBodyAccJerk and tBodyGyroJerk; 6 features),
* magnitude values for each of the above time domain signals (5 features)
* Fourier transformed accellerometer signals for the body in X-Y-Z (fBodyAcc; 3 features),
* Fourier transformed gyroscope signals in X-Y-Z (fBodyGyro; 3 features), 
* Fourier transformed jerk signals in X-Y-Z (fBodyAccJerk; 3 features),
* Fourier transformed magnitude values for four of the five original magnitude values(4 features; gravity is not transformed).

The activities performed by the subjects include: walking, walking upstairs, walking downstairs, sitting, standing, and laying down.

The data set "UCI_HAR_summary.txt" provides the average value for each subject-activity-feature combination.

Please see the codebook for additional details.

For more information about the original dataset (Anguita, et al.) contact: activityrecognition@smartlab.ws