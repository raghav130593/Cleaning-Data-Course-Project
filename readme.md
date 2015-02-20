The Course project requires to create a tidy data set from the data collected from accelerometers of Samsung galaxy s smartphones. 
The process requires to load, extract and the data sets to create the tidy set asked.

The run_analysis.R script if run on the data given, will produce a tidy data with the average of each variable
for each activity and each subject.

The steps taken in the run_analysis.R script to achieve this goal are as follows:

- Load the libraries **reshape2** and **dplyr** as their functions would be used
- Load all the data sets relevant to the train and test data sets.
  -Xtrain, Xtest, Ytrain, Ytest, subjecttrain, subjecttest, feautures, activitylabels
-Bind the subjects and activities of test and train data sets to their respective main data sets
-Using features which contains the variable names, name both the train and the test data set
-Merge both the train and test sets using rbind
-Now, use the activity numbers in the merged set and use the match function to create a factor variable having the activity labels
for all the measurements.
-Bind the new activity variable with the merged data set and remove the old activity numbers. Also, name the subject and activity columns
-Now, subset the mean and standard deviation measurements from the merged data set and create a new data set, including
the activity and subject columns
-Use the melt function to melt the extracted set setting **subject** and **activity** as the ids
-Order the data set using rearrange by subject and activity
-Using the dcast function, create a **wide** tidy data set and also averaging the values of each variable for each subject and each activity
