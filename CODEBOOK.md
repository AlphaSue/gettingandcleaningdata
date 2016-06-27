# Getting and Cleaning Course Project CodeBook

## Variables
subject<br>
activity<br>
tbodyaccmeanx<br>
tbodyaccmeany<br>
tbodyaccmeanz<br>
tbodyaccstdx<br>
tbodyaccstdy<br>
tbodyaccstdz<br>
tgravityaccmeanx<br>
tgravityaccmeany<br>
tgravityaccmeanz<br>
tgravityaccstdx<br>
tgravityaccstdy<br>
tgravityaccstdz<br>
tbodyaccjerkmeanx<br>
tbodyaccjerkmeany<br>
tbodyaccjerkmeanz<br>
tbodyaccjerkstdx<br>
tbodyaccjerkstdy<br>
tbodyaccjerkstdz<br>
tbodygyromeanx<br>
tbodygyromeany<br>
tbodygyromeanz<br>
tbodygyrostdx<br>
tbodygyrostdy<br>
tbodygyrostdz<br>
tbodygyrojerkmeanx<br>
tbodygyrojerkmeany<br>
tbodygyrojerkmeanz<br>
tbodygyrojerkstdx<br>
tbodygyrojerkstdy<br>
tbodygyrojerkstdz<br>
tbodyaccmagmean<br>
tbodyaccmagstd<br>
tgravityaccmagmean<br>
tgravityaccmagstd<br>
tbodyaccjerkmagmean<br>
tbodyaccjerkmagstd<br>
tbodygyromagmean<br>
tbodygyromagstd<br>
tbodygyrojerkmagmean<br>
tbodygyrojerkmagstd<br>
fbodyaccmeanx<br>
fbodyaccmeany<br>
fbodyaccmeanz<br>
fbodyaccstdx<br>
fbodyaccstdy<br>
fbodyaccstdz<br>
fbodyaccjerkmeanx<br>
fbodyaccjerkmeany<br>
fbodyaccjerkmeanz<br>
fbodyaccjerkstdx<br>
fbodyaccjerkstdy<br>
fbodyaccjerkstdz<br>
fbodygyromeanx<br>
fbodygyromeany<br>
fbodygyromeanz<br>
fbodygyrostdx<br>
fbodygyrostdy<br>
fbodygyrostdz<br>
fbodyaccmagmean<br>
fbodyaccmagstd<br>
fbodybodyaccjerkmagmean<br>
fbodybodyaccjerkmagstd<br>
fbodybodygyromagmean<br>
fbodybodygyrojerkmagmean<br>
fbodybodygyromagstd<br>
fbodybodygyrojerkmagstd<br>

## Data
Source dataset: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Human Activity Recognition Using Smartphones Dataset, Version 1.0

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

## Transformation
All the mean and standard deviation variables are grouped by subjects and activities, after which the means are calculated.
