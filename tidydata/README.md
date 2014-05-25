==============================================================
R-script: run_analysis.R

Version 1.0

==============================================================
by Madhuri Suda
==============================================================

The R script (run_analysis.R) cleans the data from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" and produces tidy datasets which may be used for further analysis.

More information regarding the Dataset can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


Pre-requisites to run the run_analysis.R script:
================================================
- Download the "Human Activity Recognition Using Smartphones Dataset Version 1.0" from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip in your working directory that has the run_analysis.R script file.

- Unzip the "UCI HAR Dataset.zip" file in your working directory.

- Ensure that both run_analysis.R and "UCI HAR Dataset" directory are in the same working directory. 

- Ensure that 'UCI HAR Dataset" directory has all the required files (refer to README.txt).


Instructions to run the script:
===============================

- Ensure you have completed all the pre-requisites before running the script (run_analysis.R). 

- You can load the run_analysis.R script in RStudio or directly run the script from R console.

- The script creates 2 tidy files to the working directory. (tidydata1.txt and tidydata2.txt)

- The detailed description of tidydata1.txt and tidydata2.txt is in "CodeBook.md".


Script description:
===================
The run_analysis.R script combines training and test data from "UCI HAR Dataset" dataset and creates two tidy datasets.

- First it reads all the training and test data from "UCI HAR Dataset' directory.
	
	* Training Data:
        
	- 'train/X_train.txt': Training set.
	- 'train/y_train.txt': Training labels.
	- 'train/subject_train.txt': ID's of subjects in the training data
	
	* Test Data:
	
	- 'test/X_test.txt': Test set.
	- 'test/y_test.txt': Test labels.
	- 'test/subject_test.txt': ID's of subjects in the training data

- Merges training and test data using rbind.

- Extracts the mean and standard deviation features using "grep" function from the merged dataset. All columns that have mean() and std() are extracted.
	
- The dataset is now assigned with descriptive activity names Using the "merge" function for activities and extracted dataset.

- Descriptive feature names are created by making the feature names to: all lower case, no underscores and parantheses, use dot(.) instead of hyphen(-). This data is written to tidydata1.txt

- Group data using subject and activity using "split" function. And then, calculate the average for each column by using "sapply" function. This gives us the average value for each feature (column) grouped by activity and subject. This data is written to tidydata2.txt
