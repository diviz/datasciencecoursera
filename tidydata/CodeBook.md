
CodeBook for Tidy Datasets produced by run_analysis.R script
===========================================================

Feature Selection 
=================

The features that are selected for this tidy dataset are originated from the data in the "Human Activity Recognition Using Smartphones Dataset Version 1.0". More information regarding this dataset can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
 
Feature Variables:
==================

mean : mean values of multiple measurements of the original variables. Type: Real number

std: Standard deviation of multiple measurements of the original variables. Type: Real number

activityid: Identifier, identifying the activity of each subject Type: Integer Values: 1 : 6

activityname: Descriptive name of each subject's activity Type: Factor Values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

subjectid : Identifier, identifying each subject Type: Integer Values: 1 : 30


Feature Mappings:
=================

- Original Feature Name -> Feature Name in Tidy Dataset
- tBodyAcc-XYZ 		-> tbodyaccxyz
- tGravityAcc-XYZ	-> tgravityaccxyz
- tBodyAccJerk-XYZ	-> tbodyaccjerkxyz
- tBodyGyro-XYZ		-> tbodygyroaccjerkxyz	
- tBodyGyroJerk-XYZ	-> tbodygyrojerkxyz
- tBodyAccMag		-> tbodyaccmag
- tGravityAccMag	-> tgravityaccmag
- tBodyAccJerkMag	-> tbodyaccjerkmag
- tBodyGyroMag		-> tbodygyromag
- tBodyGyroJerkMag	-> tbodygyrojerkmag
- fBodyAcc-XYZ		-> fbodyaccxyz
- fBodyAccJerk-XYZ	-> fbodyaccjerkxyz
- fBodyGyro-XYZ		-> fbodygyroxyz
- fBodyAccMag		-> fbodyaccmag
- fBodyAccJerkMag	-> fbodyaccjerkmag
- fBodyGyroMag		-> fvodygyromag
- fBodyGyroJerkMag	-> fbodygyrojerkmag


Tidy Dataset Features:
=====================

tidydata1.txt - has the following features.

-	activityid
-	activityname
-	subjectid
-	tbodyaccmeanx
-	tbodyaccmeany
-	tbodyaccmeanz
-	tbodyaccstdx
-	tbodyaccstdy
-	tbodyaccstdz
-	tgravityaccmeanx
-	tgravityaccmeany
-	tgravityaccmeanz
-	tgravityaccstdx
-	tgravityaccstdy
-	tgravityaccstdz
-	tbodyaccjerkmeanx
-	tbodyaccjerkmeany
-	tbodyaccjerkmeanz
-	tbodyaccjerkstdx
-	tbodyaccjerkstdy
-	tbodyaccjerkstdz
-	tbodygyromeanx
-	tbodygyromeany
-	tbodygyromeanz
-	tbodygyrostdx
-	tbodygyrostdy
-	tbodygyrostdz
-	tbodygyrojerkmeanx
-	tbodygyrojerkmeany
-	tbodygyrojerkmeanz
-	tbodygyrojerkstdx
-	tbodygyrojerkstdy
-	tbodygyrojerkstdz
-	tbodyaccmagmean
-	tbodyaccmagstd
-	tgravityaccmagmean
-	tgravityaccmagstd
-	tbodyaccjerkmagmean
-	tbodyaccjerkmagstd
-	tbodygyromagmean
-	tbodygyromagstd
-	tbodygyrojerkmagmean
-	tbodygyrojerkmagstd
-	fbodyaccmeanx
-	fbodyaccmeany
-	fbodyaccmeanz
-	fbodyaccstdx
-	fbodyaccstdy
-	fbodyaccstdz
-	fbodyaccjerkmeanx
-	fbodyaccjerkmeany
-	fbodyaccjerkmeanz
-	fbodyaccjerkstdx
-	fbodyaccjerkstdy
-	fbodyaccjerkstdz
-	fbodygyromeanx
-	fbodygyromeany
-	fbodygyromeanz
-	fbodygyrostdx
-	fbodygyrostdy
-	fbodygyrostdz
-	fbodyaccmagmean
-	fbodyaccmagstd
-	fbodybodyaccjerkmagmean
-	fbodybodyaccjerkmagstd
-	fbodybodygyromagmean
-	fbodybodygyromagstd
-	fbodybodygyrojerkmagmean
-	fbodybodygyrojerkmagstd


tidydata2.txt - has the following features (they are averages of the features in the tidydata1.txt grouped by activityid and subjectid):

-	activityid
-	activityname
-	subjectid
-	averagetbodyaccmeanx
-	averagetbodyaccmeany
-	averagetbodyaccmeanz
-	averagetbodyaccstdx
-	averagetbodyaccstdy
-	averagetbodyaccstdz
-	averagetgravityaccmeanx
-	averagetgravityaccmeany
-	averagetgravityaccmeanz
-	averagetgravityaccstdx
-	averagetgravityaccstdy
-	averagetgravityaccstdz
-	averagetbodyaccjerkmeanx
-	averagetbodyaccjerkmeany
-	averagetbodyaccjerkmeanz
-	averagetbodyaccjerkstdx
-	averagetbodyaccjerkstdy
-	averagetbodyaccjerkstdz
-	averagetbodygyromeanx
-	averagetbodygyromeany
-	averagetbodygyromeanz
-	averagetbodygyrostdx
-	averagetbodygyrostdy
-	averagetbodygyrostdz
-	averagetbodygyrojerkmeanx
-	averagetbodygyrojerkmeany
-	averagetbodygyrojerkmeanz
-	averagetbodygyrojerkstdx
-	averagetbodygyrojerkstdy
-	averagetbodygyrojerkstdz
-	averagetbodyaccmagmean
-	averagetbodyaccmagstd
-	averagetgravityaccmagmean
-	averagetgravityaccmagstd
-	averagetbodyaccjerkmagmean
-	averagetbodyaccjerkmagstd
-	averagetbodygyromagmean
-	averagetbodygyromagstd
-	averagetbodygyrojerkmagmean
-	averagetbodygyrojerkmagstd
-	averagefbodyaccmeanx
-	averagefbodyaccmeany
-	averagefbodyaccmeanz
-	averagefbodyaccstdx
-	averagefbodyaccstdy
-	averagefbodyaccstdz
-	averagefbodyaccjerkmeanx
-	averagefbodyaccjerkmeany
-	averagefbodyaccjerkmeanz
-	averagefbodyaccjerkstdx
-	averagefbodyaccjerkstdy
-	averagefbodyaccjerkstdz
-	averagefbodygyromeanx
-	averagefbodygyromeany
-	averagefbodygyromeanz
-	averagefbodygyrostdx
-	averagefbodygyrostdy
-	averagefbodygyrostdz
-	averagefbodyaccmagmean
-	averagefbodyaccmagstd
-	averagefbodybodyaccjerkmagmean
-	averagefbodybodyaccjerkmagstd
-	averagefbodybodygyromagmean
-	averagefbodybodygyromagstd
-	averagefbodybodygyrojerkmagmean
-	averagefbodybodygyrojerkmagstd
