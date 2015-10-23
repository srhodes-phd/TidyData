# TidyData
### Codebook for 
## Getting and Cleaning Data course in Data Science
  
Original Data source for this Project is from 
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
The zipped data file is available here:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip



## UCI_HAR_long.txt
This data set contains four variables:

#### subj_id
- an integer variable
- values range from 1 to 30
- each subject observed between 36 and 95 times at each activity

####activity
- a character variable
- values include LAYING (n=128304 obs)
				 SITTING (n=117282 obs)
				 STANDING (n=125796 obs)
				 WALKING (n=113652 obs)
				 WALKING_DOWNSTAIRS (n=92796 obs)
				 WALKING_UPSTAIRS (n=101904 obs)
####feature
- a factor (categorical character) variable
- values include (n=10299 for each value)
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

####value
- a numeric variable
- values are normalized and bounded within [-1,1]


## UCI_HAR_long.txt
This data set contains four variables:

#### subj_id
- an integer variable
- values range from 1 to 30

####activity
- a character variable
- values include (n-1980 for each value)
				 LAYING 
				 SITTING 
				 STANDING 
				 WALKING 
				 WALKING_DOWNSTAIRS
				 WALKING_UPSTAIRS
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
