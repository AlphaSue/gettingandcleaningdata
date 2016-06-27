# This R script does the following:
# 1.Merges the training and the test sets to create one data set.
# 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3.Uses descriptive activity names to name the activities in the data set
# 4.Appropriately labels the data set with descriptive variable names. 
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Download zip file containing data set
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "dataset.zip")

# Load packages
library(data.table)
library(dplyr)


# 1.Merges the training and the test sets to create one data set.

# Extract dataset.zip into working directory
# Load training and test sets into R
test_x <- read.table("UCI HAR Dataset/test/X_test.txt")
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", col.names="y")
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names="subject")
train_x <- read.table("UCI HAR Dataset/train/X_train.txt")
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", col.names="y")
train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names="subject")

# Merge the training and test sets into a dataset
raw_dataset <- rbind(cbind(test_subject, test_y, test_x),
        cbind(train_subject, train_y, train_x))


# 2.Extracts only the measurements on the mean and standard deviation for each measurement.

# Load features into R
features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
# Subset the features with mean and std
features_extract <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]
# Extract subset (add 2 because of subject and y columns)
tidy1_dataset <- raw_dataset[, c(1, 2, features_extract$V1+2)]


# 3.Uses descriptive activity names to name the activities in the data set

# Read the activity labels
activitylabels <- read.table("UCI HAR Dataset/activity_labels.txt")
# replace labels in data with label names
tidy1_dataset$y <- activitylabels[tidy1_dataset$y, 2]


# 4.Appropriately labels the data set with descriptive variable names. 

# Create a vector with all column names
colvector <- c("subject", "activity", features_extract$V2)
# Convert the column names to lower case and remove non-alphabetic characters
colvector <- tolower(gsub("[^[:alpha:]]", "", colvector))
# Replace column names of dataset with column names in vector
names(tidy1_dataset) <- colvector


# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# Create a new dataset and group by subject and activity
tidy2_dataset <- tidy1_dataset %>%
        group_by(subject, activity) %>%
# Calculate mean for all non grouped variables
        summarise_each(funs(mean))


# Write tidy2_dataset to file
write.table(tidy2_dataset, file = "tidy2_dataset.txt")