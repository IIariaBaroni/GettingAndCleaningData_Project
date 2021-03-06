#CodeBook for tidyDataset.txt (Created for Getting and Cleaning Date Course - Course Project)

##HOW TO BUILD tidyDataset.txt

- I downloaded and unzipped the file in the R working directory-
- I imported the data frames x_test.txt, x_train.txt into R and the lables (features.txt)
- I cleaned the lables from special symbols like - _ ( ) , and I assigned the lables to the other two tables
- I selected the requested columns from the two tables, so only variables about means and std
- I imported also the vectors subject_test.txt and subject_train.txt, containing the IDs of the user
- I assigned the two vectors as new columns in the other two main dataframes, as column User
- I imported the activity lables from the file activity_labels.txt
- I imported the sequence of activities referred both for test and training dataset (contained in y_test.txt and y.train.txt)
- I assigned to these last two vectors, the values specified in activity_labels.txt, so the vectors are strings instead of numbers
- I added this two last columns to the two main tables, with the variable label "Activities"
- I created one table, starting from the two main tables (the rows of the first one and after the rows of the other one, they have the same variables and so the same lables)
- I cleaned the memory from the tables that becames useless
- I aggregated data to have a tidy dataset, ordered by user and activities
- I saved the dataset in tidy.txt




##DATA VARIABLES


###Main variables on userID and Activities

#####Variable with the IDs of the users who weared the devices
User			

#####This columns describes the names of the activity in execution meanwhile the data of the specific row was taken
Activities 		


###Variables related on time

#####This set of variables are referred to the acceleration of the body (based on time), for each axis, both analyzed with mean and std
tBodyAccmeanX		
tBodyAccmeanY
tBodyAccmeanZ
tBodyAccstdX
tBodyAccstdY
tBodyAccstdZ

#####This set of variables are referred only to the acceleration from the gravity (based on time), for each axis, both analyzed with mean and std
tGravityAccmeanX	
tGravityAccmeanY
tGravityAccmeanZ
tGravityAccstdX
tGravityAccstdY
tGravityAccstdZ

#####The body linear acceleration, based on time, was derived in time to obtain Jerk signals (one per each axis and both for means and std)
tBodyAccJerkmeanX	
tBodyAccJerkmeanY
tBodyAccJerkmeanZ
tBodyAccJerkstdX
tBodyAccJerkstdY
tBodyAccJerkstdZ

#####This set of variables are referred to the information from the gyroscope (based on time), for each axis, both analyzed with mean and std
tBodyGyromeanX		
tBodyGyromeanY
tBodyGyromeanZ
tBodyGyrostdX
tBodyGyrostdY
tBodyGyrostdZ

#####The angular velocity, based on time, was derived in time to obtain Jerk signals (one per each axis and both for means and std)
tBodyGyroJerkmeanX	
tBodyGyroJerkmeanY
tBodyGyroJerkmeanZ
tBodyGyroJerkstdX
tBodyGyroJerkstdY
tBodyGyroJerkstdZ

#####Also the magnitude (based on time) of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). These data are represented in variables, both for means and std.
tBodyAccMagmean		
tBodyAccMagstd
tGravityAccMagmean
tGravityAccMagstd
tBodyAccJerkMagmean
tBodyAccJerkMagstd
tBodyGyroMagmean
tBodyGyroMagstd
tBodyGyroJerkMagmean
tBodyGyroJerkMagstd


###Variables related on frequency

#####This set of variables are referred to the acceleration of the body (based on frequency), for each axis, both analyzed with mean, std, meanFreq.
fBodyAccmeanX		
fBodyAccmeanY
fBodyAccmeanZ
fBodyAccstdX
fBodyAccstdY
fBodyAccstdZ
fBodyAccmeanFreqX
fBodyAccmeanFreqY
fBodyAccmeanFreqZ

#####This second group of data the same but was derived in frequence to obtain Jerk signals (one per each axis and both for means, std, meanFreq)
fBodyAccJerkmeanX	
fBodyAccJerkmeanY
fBodyAccJerkmeanZ
fBodyAccJerkstdX
fBodyAccJerkstdY
fBodyAccJerkstdZ
fBodyAccJerkmeanFreqX
fBodyAccJerkmeanFreqY
fBodyAccJerkmeanFreqZ

#####This set of variables are referred to the info from the gyroscope (based on frequency), for each axis, both analyzed with mean, std, meanFreq
fBodyGyromeanX		
fBodyGyromeanY
fBodyGyromeanZ
fBodyGyrostdX
fBodyGyrostdY
fBodyGyrostdZ
fBodyGyromeanFreqX
fBodyGyromeanFreqY
fBodyGyromeanFreqZ

#####These variables are the application of Fast Fourier Transform from the acceleration, always for mean, std and meanFreq, based on frequences
fBodyAccMagmean		
fBodyAccMagstd
fBodyAccMagmeanFreq

#####Same variables of above, but derived in frequence to obtain Jerk signals (one per each axis and both for means, std, meanFreq)
fBodyBodyAccJerkMagmean		
fBodyBodyAccJerkMagstd
fBodyBodyAccJerkMagmeanFreq

#####These variables are the application of Fast Fourier Transform (FFT) from the Gyroscopy, always for mean, std and meanFreq, based on frequences
fBodyBodyGyroMagmean	
fBodyAccMagstd
fBodyBodyGyroMagstd
fBodyBodyGyroMagmeanFreq

#####Same variables of above, but derived in frequence to obtain Jerk signals (one per each axis and both for means, std, meanFreq)
fBodyBodyGyroJerkMagmean	
fBodyBodyGyroJerkMagstd
fBodyBodyGyroJerkMagmeanFreq
