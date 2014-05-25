
## reading training data
subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt", header=FALSE)
XTrain <- read.table("UCI HAR Dataset/train/X_train.txt", header=FALSE)
yTrain <- read.table("UCI HAR Dataset/train/y_train.txt", header=FALSE)

## creating data frame for training data
trainData <- data.frame(subjectTrain, yTrain, XTrain)

## reading test data
subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt", header=FALSE)
XTest <- read.table("UCI HAR Dataset/test/X_test.txt", header=FALSE)
yTest <- read.table("UCI HAR Dataset/test/y_test.txt", header=FALSE)

## creating data frame for test data
testData <- data.frame(subjectTest, yTest, XTest)

## merging training and test data
allData <- rbind(trainData, testData)

## reading the feature names
features <- read.table("UCI HAR Dataset/features.txt", header=FALSE, sep="")

## reading activity names
activities <- read.table("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep="")

## assigning column names to activities
names(activities) <- c("activityid", "activityname")

## assigning column names to all merged data
names(allData) <- c("subjectid", "activityid", paste(features[,2]))

## extracting mean() and std() features from the entire data set
data <- allData[grep("subjectid|*-mean\\(\\)*|*-std\\(\\)*|activityid", names(allData))]

## merging activity_names with data
tidy_data_one <- merge(activities, data)

## descriptive feature names (all lower case, no underscores and parantheses, use dot(.) instead of hyphen(-))
featureLabels <- tolower(names(tidy_data_one))
featureLabels <- gsub("\\()", "", featureLabels)
featureLabels <- gsub("-", ".", featureLabels)

## adding descriptive feature names to the tidy dataset
names(tidy_data_one) <- c(featureLabels)

## grouping data set by subject and activity
groupdata <- split(data, list(data$subjectid, data$activityid))

#calculating average for each feature (grouped by subjectid and activity)
tidy_data_two <- t(sapply(groupdata, colMeans))
tidy_data_two <- merge(activities, tidy_data_two)

## adding descriptive feature names to the tidy dataset
names(tidy_data_two) <- c(featureLabels)

#writing tidy data to files
write.csv(tidy_data_one, file="tidydata1.txt")
write.csv(tidy_data_two, file="tidydata2.txt")
