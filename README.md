gettingAndCleaningData
======================

Assignment from getting and clearing data course

Assuming that the "UCI HAR Dataset is in the working directory<br>
(otherwise it can be downloaded from the link
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
the script run_analysis.R does the following:

In "<b>data</b>", read (in this order) for the test set and the training set, respectively:
<ol><li>measurements table,
<li>subject list,
<li>the codes of the activity the subject were performing when the measure was taken.</ol>

Notes:
<ul><li>Some subjects belong to test set, others belong to training set.
<li>Tables not used anymore are removed.
<li>Headers are added to the final "data" including all measurements for all subject,
in particular to explain the measurements (from 3rd column).</ul>

In "<b>data2</b>", measurements on the mean and standard deviation for each measurement are extracted.

In "<b>data3</b>", activity codes are expanded in words.

In "<b>df</b>", the average of each variable that is shown in "data3" 
is stored after grouping for each activity and each subject 
("aggregate" from library "plyr" is used).
