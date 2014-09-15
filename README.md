gettingAndCleaningData
======================

Assignment from getting and clearing data course

Assuming that the "UCI HAR Dataset is in the working directory
(otherwise it can be downloaded from the link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
the script run_analysis.R does the following:

Read (in this order) for the test set and the training set, respectively:
1- measurements table,
2- subject list,
3- the codes of the activity the subject were performing when the measure was taken.
and merge everything into one table named "data".

Some subject belong to test set, others belong to training set.

Tables not used anymore are removed.

Headers are added to the final "data" including all measurements for all subject,
in particular to explain the measurements (from 3rd column)

In "data2", measurements on the mean and standard deviation for each measurement are extracted.

In "data3", activity codes are expanded in words.

In "df", the average of each variable shown in "data3" for each activity and each subject
is stored ("aggregate" from library "plyr" is used).
