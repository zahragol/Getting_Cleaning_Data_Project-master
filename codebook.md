# Codebook

### A summary of steps to extract output:

1. download the zip file for given url, and unzip the file in the Project folder
2. Loading activity in `ActN`, and all 561 features in `F561`
3. load Training data set and assign traspose of F561 as its header
4. Load 9 files of training of `body_...` and `total_...`, assign approprate column names to them in for loop
5. merge all of them as `TrainingPart` 
6. apply steps 3 to 5 for test data set, merge them to make `TestPart`
7. Combine `TrainingPart` and `TestPart` in `LargeDS`
8. Using regular expressions, extracts the measurements with `mean` and `std` in their fields 
9. Finally summarise to obtain the mean of each column when grouped by `Activity` and  `Subject`
10. store the final tidy data set on hard drive
 
 

### Vectors

## Identifiers

* subject
* Ativity

## Measurements
 
*	tBodyAcc-mean()-X
*	tBodyAcc-mean()-Y
*	tBodyAcc-mean()-Z
*	tBodyAcc-std()-X
*	tBodyAcc-std()-Y
*	tBodyAcc-std()-Z
*	tGravityAcc-mean()-X
*	tGravityAcc-mean()-Y
*	tGravityAcc-mean()-Z
*	tGravityAcc-std()-X
*	tGravityAcc-std()-Y
*	tGravityAcc-std()-Z
*	tBodyAccJerk-mean()-X
*	tBodyAccJerk-mean()-Y
*	tBodyAccJerk-mean()-Z
*	tBodyAccJerk-std()-X
*	tBodyAccJerk-std()-Y
*	tBodyAccJerk-std()-Z
*	tBodyGyro-mean()-X
*	tBodyGyro-mean()-Y
*	tBodyGyro-mean()-Z
*	tBodyGyro-std()-X
*	tBodyGyro-std()-Y
*	tBodyGyro-std()-Z
*	tBodyGyroJerk-mean()-X
*	tBodyGyroJerk-mean()-Y
*	tBodyGyroJerk-mean()-Z
*	tBodyGyroJerk-std()-X
*	tBodyGyroJerk-std()-Y
*	tBodyGyroJerk-std()-Z
*	tBodyAccMag-mean()
*	tBodyAccMag-std()
*	tGravityAccMag-mean()
*	tGravityAccMag-std()
*	tBodyAccJerkMag-mean()
*	tBodyAccJerkMag-std()
*	tBodyGyroMag-mean()
*	tBodyGyroMag-std()
*	tBodyGyroJerkMag-mean()
*	tBodyGyroJerkMag-std()
*	fBodyAcc-mean()-X
*	fBodyAcc-mean()-Y
*	fBodyAcc-mean()-Z
*	fBodyAcc-std()-X
*	fBodyAcc-std()-Y
*	fBodyAcc-std()-Z
*	fBodyAcc-meanFreq()-X
*	fBodyAcc-meanFreq()-Y
*	fBodyAcc-meanFreq()-Z
*	fBodyAccJerk-mean()-X
*	fBodyAccJerk-mean()-Y
*	fBodyAccJerk-mean()-Z
*	fBodyAccJerk-std()-X
*	fBodyAccJerk-std()-Y
*	fBodyAccJerk-std()-Z
*	fBodyAccJerk-meanFreq()-X
*	fBodyAccJerk-meanFreq()-Y
*	fBodyAccJerk-meanFreq()-Z
*	fBodyGyro-mean()-X
*	fBodyGyro-mean()-Y
*	fBodyGyro-mean()-Z
*	fBodyGyro-std()-X
*	fBodyGyro-std()-Y
*	fBodyGyro-std()-Z
*	fBodyGyro-meanFreq()-X
*	fBodyGyro-meanFreq()-Y
*	fBodyGyro-meanFreq()-Z
*	fBodyAccMag-mean()
*	fBodyAccMag-std()
*	fBodyAccMag-meanFreq()
*	fBodyBodyAccJerkMag-mean()
*	fBodyBodyAccJerkMag-std()
*	fBodyBodyAccJerkMag-meanFreq()
*	fBodyBodyGyroMag-mean()
*	fBodyBodyGyroMag-std()
*	fBodyBodyGyroMag-meanFreq()
*	fBodyBodyGyroJerkMag-mean()
*	fBodyBodyGyroJerkMag-std()
*	fBodyBodyGyroJerkMag-meanFreq()
*	angle(tBodyAccMean,gravity)
*	angle(tBodyAccJerkMean),gravityMean)
*	angle(tBodyGyroMean,gravityMean)
*	angle(tBodyGyroJerkMean,gravityMean)
*	angle(X,gravityMean)
*	angle(Y,gravityMean)
*	angle(Z,gravityMean)


## Activity Labels

* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test
