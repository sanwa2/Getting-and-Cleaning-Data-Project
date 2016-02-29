Code book summarizes the data can be found in Tidy_Movement_Data.txt

Feature Selection

The features selected for this data frame came from the transformation of the data in the "Human Activity Recognition Using Smartphones
Dataset Version 1.0", which in turn have been taken from experiments carried out with a group of 30 volunteers within an age bracket of
19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a 
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial 
angular velocity at a constant rate of 50Hz data were captured, of accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ.

These signals were used to estimate variables of the feature vector for each pattern:
•	tBodyAccMeanX
•	tBodyAccMeanY
•	tBodyAccMeanZ
•	tBodyAccStdX
•	tBodyAccStdY
•	tBodyAccStdZ
•	tGravityAccMeanX
•	tGravityAccMeanY
•	tGravityAccMeanZ
•	tGravityAccStdX
•	tGravityAccStdY
•	tGravityAccStdZ
•	tBodyAccJerkMeanX
•	tBodyAccJerkMeanY
•	tBodyAccJerkMeanZ
•	tBodyAccJerkStdX
•	tBodyAccJerkStdY
•	tBodyAccJerkStdZ
•	tBodyGyroMeanX
•	tBodyGyroMeanY
•	tBodyGyroMeanZ
•	tBodyGyroStdX
•	tBodyGyroStdY
•	tBodyGyroStdZ
•	tBodyGyroJerkMeanX
•	tBodyGyroJerkMeanY
•	tBodyGyroJerkMeanZ
•	tBodyGyroJerkStdX
•	tBodyGyroJerkStdY
•	tBodyGyroJerkStdZ
•	tBodyAccMagMean
•	tBodyAccMagStd
•	tGravityAccMagMean
•	tGravityAccMagStd
•	tBodyAccJerkMagMean
•	tBodyAccJerkMagStd
•	tBodyGyroMagMean
•	tBodyGyroMagStd
•	tBodyGyroJerkMagMean
•	tBodyGyroJerkMagStd
•	fBodyAccMeanX
•	fBodyAccMeanY
•	fBodyAccMeanZ
•	fBodyAccStdX
•	fBodyAccStdY
•	fBodyAccStdZ
•	fBodyAccMeanFreqX
•	fBodyAccMeanFreqY
•	fBodyAccMeanFreqZ
•	fBodyAccJerkMeanX
•	fBodyAccJerkMeanY
•	fBodyAccJerkMeanZ
•	fBodyAccJerkStdX
•	fBodyAccJerkStdY
•	fBodyAccJerkStdZ
•	fBodyAccJerkMeanFreqX
•	fBodyAccJerkMeanFreqY
•	fBodyAccJerkMeanFreqZ
•	fBodyGyroMeanX
•	fBodyGyroMeanY
•	fBodyGyroMeanZ
•	fBodyGyroStdX
•	fBodyGyroStdY
•	fBodyGyroStdZ
•	fBodyGyroMeanFreqX
•	fBodyGyroMeanFreqY
•	fBodyGyroMeanFreqZ
•	fBodyAccMagMean
•	fBodyAccMagStd
•	fBodyAccMagMeanFreq
•	fBodyBodyAccJerkMagMean
•	fBodyBodyAccJerkMagStd
•	fBodyBodyAccJerkMagMeanFreq
•	fBodyBodyGyroMagMean
•	fBodyBodyGyroMagStd
•	fBodyBodyGyroMagMeanFreq
•	fBodyBodyGyroJerkMagMean
•	fBodyBodyGyroJerkMagStd
•	fBodyBodyGyroJerkMagMeanFreq


Feature Vector variables:
mean() : mean values of multiple measurements of the original variables. Type: Real number

std(): Standard deviation of multiple measurements of the original variables. Type: Real number

activity_id: Identifier, identifying the activity of each subject Type: Integer Values: 1 : 6

activity_name: Descriptive name of each subject's activity Type: Factor Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING,
                                                                                STANDING, LAYING

subject_id : Identifier, identifying each subject Type: Integer Values: 1 : 30
