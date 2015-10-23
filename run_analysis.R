# Code for Getting and Cleaning Data, Data Scientist Course 3 ASSIGNMENT
# Written with RStudio 0.99.441 using R version 3.2.2 (2015-08-14) "World-Famous Astronaut"

# Assignment: using a zip file of data from 
#   Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. 
#   Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 
#   International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
# Create a Tidy Dataset

###############################################################################################
#0. Preparation
# Load in necessaray libraries
library(dplyr)
library(tidyr)

# Empty the working Environment prior to working with data files
rm(list=ls())

# The project assumes that the zip file "getdata_projectfiles_UCI HAR Dataset.zip"
# is located in the working directory
# Check the workind dir and stop the program if the necessary file is not present
if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")) {
            stop("STOPPING: required file not found in working directory")
      }

# Unzip the files contained in "getdata_projectfiles_UCI HAR Dataset.zip"
for (i in dir(pattern=".zip$"))
      unzip(i)


# Read in the "features.txt" data file, this contains the column headings for the datasets
col_head <- (read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE))

# Read in the "activity_labels.txt" file, this contains the labels for the row numbers
act_label <- tbl_df(read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE))
colnames(act_label) <- NULL ; colnames(act_label) <- c("act_code", "activity") #assign column names

# Read in the "y_train.txt" data file, this contains the number related to the activity labels
train_act <- tbl_df(read.table("./UCI HAR Dataset/train/y_train.txt"))

# Read in the "x_train" data file
train <- tbl_df(read.table("./UCI HAR Dataset/train/X_train.txt"))

# Read in the "subject_train" data file
train_subj <- tbl_df(read.table("./UCI HAR Dataset/train/subject_train.txt"))

# Read in the "y_test.txt" data file, this contains the number related to the activity labels
test_act <- tbl_df(read.table("./UCI HAR Dataset/test/y_test.txt"))

# Read in the "x_test" data file
test <- tbl_df(read.table("./UCI HAR Dataset/test/X_test.txt"))

# Read in the "subject_test" data file
test_subj <- tbl_df(read.table("./UCI HAR Dataset/test/subject_test.txt"))



###############################################################################################
#1. Merge the training and the test sets to create one data set.

# Merge the training and test data files
df <-  bind_rows(train,test)

# Attach column headings to the dataset
colnames(df) <- NULL
colnames(df) <- col_head$V2

# Merge the training and test subject_id files
subj <- bind_rows(train_subj, test_subj)

# Attach column heading to the subject_id file
colnames(subj) <- "subj_id"

# Merge the training and test activity files
act <- bind_rows(train_act, test_act)

# Attached column heading to the activity_code file
colnames(act) <- "act_code"

# Combine the Subject_id file, the activity_code file, and the data file
df<- bind_cols(subj, act, df)

# Remove all files except the primary data file and the activity labels for step #3
rm(list=setdiff(ls(), c("df","act_label")))


###############################################################################################
#2. Extract only the measurements on the mean and standard deviation for each measurement. 

# Remove columns with duplicate col names, none of which are means or stds of interst (confirmed by review of featuers file)
dfdedup <- df[ , !duplicated(colnames(df))]

# Select the subj_id, activity_code, and features that contain mean or std in the column header
# Drop features where mean and std are not the description of the statistic (e.g. "angle(X,gravityMean)")
# Drop features with "meanFreq", which is definted as Weighted average of the frequency components to obtain a mean frequency
subdf <- select(dfdedup, subj_id, act_code, contains("mean"), contains("std"), -contains("angle") , -contains("meanFreq"))


###############################################################################################
#3. Use descriptive activity names to name the activities in the data set

# Merge the activity label file with the data file on the activity code
subdf <- merge(act_label, subdf, by = "act_code", all=TRUE, sort=FALSE)

# Drop the activity code as it duplicates the information in activity
subdf <- select(subdf, -act_code)


###############################################################################################
#4. Appropriately label the data set with descriptive variable names. 

# Create a long dataset with a column for each type of reading (msr) keeping subj_id and activity
sub <- subdf %>% 
      gather(feature, value, -c(subj_id, activity))

#Create the output data set
write.table(sub, file = "C://Users/Shannon/Documents/DS3/UCI_HAR_long.txt", row.names = FALSE)


###############################################################################################
#5. From the data set in step 4, creates a second, independent tidy data set with 
#   the average of each variable for each activity and each subject. 

subg <- sub %>%
      group_by(activity, subj_id, feature) %>%
      dplyr::summarise("average" = mean(value))

write.table(subg, file = "C://Users/Shannon/Documents/DS3/UCI_HAR_summary.txt", row.names = FALSE, sep=",")


###############################################################################################
# Information for the Codebook

# File UCI_HAR_long.txt, aka sub

# variable types
str(sub)

# range of values for subject ID
quantile(as.numeric(sub$subj_id), probs = c(0, 1))

#number of observations per subject per activity
ct <- dfdedup %>%
      group_by(subj_id, act_code) %>%
      dplyr::summarise("count" = n())
print(max(ct$count))
print(min(ct$count))

#values for activity
tbl <- as.data.frame(table(sub$activity))

#values for features
tblf <- as.data.frame(table(sub$feature))
write.table(tblf, file="C://Users/Shannon/tblf.txt")



# File UCI_HAR_summary.txt, aka subg

# variable types
str(subg)

# range of values for subject ID
quantile(as.numeric(subg$subj_id), probs = c(0, 1))

#values for activity
tbl2 <- as.data.frame(table(subg$activity))

#values for features
tblf2 <- as.data.frame(table(subg$feature))
write.table(tblf, file="C://Users/Shannon/tblf2.txt")












