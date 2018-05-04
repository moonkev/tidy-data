# Code book

The original data used for this analysis can be obtained [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The specifications for the original data can be viewed [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## tidy-data

For the tidy data, values of the files for the subject, activity and datapoints for both training and test datasets have been merged into a single dataset.  

* Values from the subject data file remain the same and the column is named ```subject```

* Values from the ```activity``` datafile have been converted to a factor value as defined in the activity_labels.txt file

|ID|Label|
|--|-----|
|1|WALKING|
|2|WALKING_UPSTAIRS|
|3|WALKING_DOWNSTAIRS|
|4|SITTING|
|5|STANDING|
|6|LAYING|

* Values for file containing actual data points haven't changed but the following names have been changed from their value in features.txt

|Old Column|New Column|
|----------|----------|
|tBodyAcc-mean()-X|time.bodyacc.mean.x|
|tBodyAcc-mean()-Y|time.bodyacc.mean.y|
|tBodyAcc-mean()-Z|time.bodyacc.mean.z|
|tBodyAcc-std()-X|time.bodyacc.std.x|
|tBodyAcc-std()-Y|time.bodyacc.std.y|
|tBodyAcc-std()-Z|time.bodyacc.std.z|
|tGravityAcc-mean()-X|time.gravityacc.mean.x|
|tGravityAcc-mean()-Y|time.gravityacc.mean.y|
|tGravityAcc-mean()-Z|time.gravityacc.mean.z|
|tGravityAcc-std()-X|time.gravityacc.std.x|
|tGravityAcc-std()-Y|time.gravityacc.std.y|
|tGravityAcc-std()-Z|time.gravityacc.std.z|
|tBodyAccJerk-mean()-X|time.bodyaccjerk.mean.x|
|tBodyAccJerk-mean()-Y|time.bodyaccjerk.mean.y|
|tBodyAccJerk-mean()-Z|time.bodyaccjerk.mean.z|
|tBodyAccJerk-std()-X|time.bodyaccjerk.std.x|
|tBodyAccJerk-std()-Y|time.bodyaccjerk.std.y|
|tBodyAccJerk-std()-Z|time.bodyaccjerk.std.z|
|tBodyGyro-mean()-X|time.bodygyro.mean.x|
|tBodyGyro-mean()-Y|time.bodygyro.mean.y|
|tBodyGyro-mean()-Z|time.bodygyro.mean.z|
|tBodyGyro-std()-X|time.bodygyro.std.x|
|tBodyGyro-std()-Y|time.bodygyro.std.y|
|tBodyGyro-std()-Z|time.bodygyro.std.z|
|tBodyGyroJerk-mean()-X|time.bodygyrojerk.mean.x|
|tBodyGyroJerk-mean()-Y|time.bodygyrojerk.mean.y|
|tBodyGyroJerk-mean()-Z|time.bodygyrojerk.mean.z|
|tBodyGyroJerk-std()-X|time.bodygyrojerk.std.x|
|tBodyGyroJerk-std()-Y|time.bodygyrojerk.std.y|
|tBodyGyroJerk-std()-Z|time.bodygyrojerk.std.z|
|tBodyAccMag-mean()|time.bodyaccmag.mean|
|tBodyAccMag-std()|time.bodyaccmag.std|
|tGravityAccMag-mean()|time.gravityaccmag.mean|
|tGravityAccMag-std()|time.gravityaccmag.std|
|tBodyAccJerkMag-mean()|time.bodyaccjerkmag.mean|
|tBodyAccJerkMag-std()|time.bodyaccjerkmag.std|
|tBodyGyroMag-mean()|time.bodygyromag.mean|
|tBodyGyroMag-std()|time.bodygyromag.std|
|tBodyGyroJerkMag-mean()|time.bodygyrojerkmag.mean|
|tBodyGyroJerkMag-std()|time.bodygyrojerkmag.std|
|fBodyAcc-mean()-X|fft.bodyacc.mean.x|
|fBodyAcc-mean()-Y|fft.bodyacc.mean.y|
|fBodyAcc-mean()-Z|fft.bodyacc.mean.z|
|fBodyAcc-std()-X|fft.bodyacc.std.x|
|fBodyAcc-std()-Y|fft.bodyacc.std.y|
|fBodyAcc-std()-Z|fft.bodyacc.std.z|
|fBodyAccJerk-mean()-X|fft.bodyaccjerk.mean.x|
|fBodyAccJerk-mean()-Y|fft.bodyaccjerk.mean.y|
|fBodyAccJerk-mean()-Z|fft.bodyaccjerk.mean.z|
|fBodyAccJerk-std()-X|fft.bodyaccjerk.std.x|
|fBodyAccJerk-std()-Y|fft.bodyaccjerk.std.y|
|fBodyAccJerk-std()-Z|fft.bodyaccjerk.std.z|
|fBodyGyro-mean()-X|fft.bodygyro.mean.x|
|fBodyGyro-mean()-Y|fft.bodygyro.mean.y|
|fBodyGyro-mean()-Z|fft.bodygyro.mean.z|
|fBodyGyro-std()-X|fft.bodygyro.std.x|
|fBodyGyro-std()-Y|fft.bodygyro.std.y|
|fBodyGyro-std()-Z|fft.bodygyro.std.z|
|fBodyAccMag-mean()|fft.bodyaccmag.mean|
|fBodyAccMag-std()|fft.bodyaccmag.std|
|fBodyBodyAccJerkMag-mean()|fft.bodybodyaccjerkmag.mean|
|fBodyBodyAccJerkMag-std()|fft.bodybodyaccjerkmag.std|
|fBodyBodyGyroMag-mean()|fft.bodybodygyromag.mean|
|fBodyBodyGyroMag-std()|fft.bodybodygyromag.std|
|fBodyBodyGyroJerkMag-mean()|fft.bodybodygyrojerkmag.mean|
|fBodyBodyGyroJerkMag-std()|fft.bodybodygyrojerkmag.std|


## tidy-data-mean

The data in this table is the same as the above table except that values represent the mean of all observations as opposed to invdividual observations

