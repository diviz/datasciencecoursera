
#reading training data
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
XTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)

#creating data frame for training data
trainData <- data.frame(subjectTrain, yTrain, XTrain)

#reading test data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)
XTest <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE)

#creating data frame for test data
testData <- data.frame(subjectTest, yTest, XTest)

#merging training and test data
allData <- rbind(trainData, testData)

#reading the feature names
features <- read.table("UCI HAR Dataset/features.txt", header=FALSE, sep="")

#reading activity names
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="")

#assigning column names to activities
names(activities) <- c("activity_code", "activity_name")

#assigning column names to all merged data
names(allData) <- c("subject", "activity_code", paste(features[,2]))

#extracting mean() and std() features from the entire data set
data <- allData[grep("subject|*-mean\\(\\)*|*-std\\(\\)*|activity_code", names(allData))]

#merging activity_names with data
tidy_data_one <- merge(activities, data)

#grouping data set by subject and activity
g <- split(allData, list(allData$subject, allData$activity_code))

#calculating average for each feature (grouped by subject and activity)
tidy_data_two <- t(sapply(g, colMeans))
row.names(tidy_data_two) <- NULL

#writing tidy data to files
write.csv(tidy_data_one, file="tidydata1.txt")
write.csv(tidy_data_two, file="tidydata2.txt")
