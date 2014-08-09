#Save the name of the URL
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

#downloading file
download.file (fileUrl, dest = "Dataset.zip")
unzip("Dataset.zip")

#Import of the table x_test.txt and x_train.txt
Test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
Train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)

#Now there are two table with 561 for each. Now I import the labels for these columns, there are in features.txt
Features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)

#The next command will create a new table cleaned from special characters, starting from Features[,2]
#The special symbols that will be deleted are: - _ , ( )
FeaturesCleaned <- gsub("-|_|\\(|\\)|,","",Features[,2])

#Insert right names in Test and Train data sets
names(Test) <- FeaturesCleaned
names(Train) <- FeaturesCleaned

#Here I select only the columns requested (ones that include means or std)
Test <- subset(Test, select=grep("mean|std", names(Test)))
Train <- subset(Train, select=grep("mean|std", names(Train)))

#Import of the test and training datasets users.
TestSubject <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
TrainSubject <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)

#Now I add a column with the userID for both the tables (Test and Train)
Test$User <- TestSubject$V1
Train$User <- TrainSubject$V1

#Import of the activities labels names
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

#Import the activities for Test and Training
YTest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
YTrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)

#Based on the activitiest just imported, here I create two new vector with the names of the right activities instead numebers
#The as.character is used becouse otherwise the code return a factor
TestActivities <- as.character(ActivityLabels[YTest$V1,2])
TrainActivities <- as.character(ActivityLabels[YTrain$V1,2])

#Here I add the two new columns to the previous ones (Test and Train)
Test$Activities <- TestActivities
Train$Activities <- TrainActivities

#The two bigger tables, Test and Train, are with the same columns, and they're ready to become one table
CompleteData <- rbind(Test, Train)

#We can clean up the memory from the older tables
rm(Features, Test, TestSubject, Train, TrainSubject, YTest, YTrain, FeaturesCleaned, TestActivities, TrainActivities, ActivityLables)

#Creation of a tidy dataset with means
SecondDataset <- aggregate(CompleteData, by=list(CompleteData$User,CompleteData$Activities), FUN= mean)
SecondDataset <- subset(SecondDataset, select = -c(User,Activities))
names(SecondDataset)[1] <- "User"
names(SecondDataset)[2] <- "Activities"

#Finally I save the dataset into a file tidyDataset.txt
write.table(SecondDataset, "tidyDataset.txt", sep=" ")