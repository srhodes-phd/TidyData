# TidyData
### Codebook for 
## Getting and Cleaning Data course in Data Science
  
Original Data source for this Project is from 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
The zipped data file is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The experiments by Anguita, et al were carried out with 30 volunteers ages 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, Anguita, et al. captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments were video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The goal of this project was to combine the training and test datasets in to a single tidy dataset and calculate the average for each type of "feature" (see the Readme, for a discussion of the features) by subject and activity.

Additional information on the original dataset is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

## UCI_HAR_summary.txt
This data set contains four variables:

#### subj_id
- an integer variable
- values range from 1 to 30
- a total of 30 subjects were observed in the study

####activity
- a character variable
- values include
* LAYING
* SITTING
* STANDING
* WALKING
* WALKING_DOWNSTAIRS
* WALKING_UPSTAIRS

####feature
- a factor (categorical character) variable
- values include (n=180 for each value)
				tBodyAcc-mean()-X
				tBodyAcc-mean()-Y
				tBodyAcc-mean()-Z
				tGravityAcc-mean()-X
				tGravityAcc-mean()-Y
				tGravityAcc-mean()-Z
				tBodyAccJerk-mean()-X
				tBodyAccJerk-mean()-Y
				tBodyAccJerk-mean()-Z
				tBodyGyro-mean()-X
				tBodyGyro-mean()-Y
				tBodyGyro-mean()-Z
				tBodyGyroJerk-mean()-X
				tBodyGyroJerk-mean()-Y
				tBodyGyroJerk-mean()-Z
				tBodyAccMag-mean()
				tGravityAccMag-mean()
				tBodyAccJerkMag-mean()
				tBodyGyroMag-mean()
				tBodyGyroJerkMag-mean()
				fBodyAcc-mean()-X
				fBodyAcc-mean()-Y
				fBodyAcc-mean()-Z
				fBodyAccJerk-mean()-X
				fBodyAccJerk-mean()-Y
				fBodyAccJerk-mean()-Z
				fBodyGyro-mean()-X
				fBodyGyro-mean()-Y
				fBodyGyro-mean()-Z
				fBodyAccMag-mean()
				fBodyBodyAccJerkMag-mean()
				fBodyBodyGyroMag-mean()
				fBodyBodyGyroJerkMag-mean()
				tBodyAcc-std()-X
				tBodyAcc-std()-Y
				tBodyAcc-std()-Z
				tGravityAcc-std()-X
				tGravityAcc-std()-Y
				tGravityAcc-std()-Z
				tBodyAccJerk-std()-X
				tBodyAccJerk-std()-Y
				tBodyAccJerk-std()-Z
				tBodyGyro-std()-X
				tBodyGyro-std()-Y
				tBodyGyro-std()-Z
				tBodyGyroJerk-std()-X
				tBodyGyroJerk-std()-Y
				tBodyGyroJerk-std()-Z
				tBodyAccMag-std()
				tGravityAccMag-std()
				tBodyAccJerkMag-std()
				tBodyGyroMag-std()
				tBodyGyroJerkMag-std()
				fBodyAcc-std()-X
				fBodyAcc-std()-Y
				fBodyAcc-std()-Z
				fBodyAccJerk-std()-X
				fBodyAccJerk-std()-Y
				fBodyAccJerk-std()-Z
				fBodyGyro-std()-X
				fBodyGyro-std()-Y
				fBodyGyro-std()-Z
				fBodyAccMag-std()
				fBodyBodyAccJerkMag-std()
				fBodyBodyGyroMag-std()
				fBodyBodyGyroJerkMag-std()
- for a discussion of these factors, see the README file.

####average
- a numeric variable
- values are the average normalized value for each subject-activity-feature combination.
