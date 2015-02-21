#Load the libraries for using functions needed in the script
library(reshape2)
library(dplyr)

#load all the necessary data into R object(data frames).
#All these would be used to create the tidy data set along with the train and test data

Train<-read.table("X_train.txt")
Test<-read.table("X_test.txt")
features<-read.table("features.txt")
Train_activity<-read.table("y_train.txt")
Test_activity<-read.table("y_test.txt")
Train_subject<-read.table("subject_train.txt")
Test_subject<-read.table("subject_test.txt")
activity_label<-read.table("activity_labels.txt")

#Add the subject and activity columns to the Train and Test data
Train<-cbind(Train,Train_activity)
Train<-cbind(Train,Train_subject)
Test<-cbind(Test,Test_activity)
Test<-cbind(Test,Test_subject)

#Give descriptive names to the variables using features.txt
features_vector<-features[,2]
names(Train)<-names(Test)<-features_vector

#Merge the train and test data set
Merge_set<-rbind(Train,Test)

#Create a factor variable for activities by matching the activity numbers with the corresponding labels
activity_number<-Merge_set[,562]
activity_label_number<-activity_label[match(activity_number,activity_label[,1]),2]

#Add the activity_label_number to the merged data set and remove the activity number variable
Merge_set<-cbind(Merge_set,activity_label_number)
Merge_set<-Merge_set[,-562]

#name the subject and activity label variables
names(Merge_set)[562]<-"subject"
names(Merge_set)[563]<-"activity"

#subsetting the mean and standard deviation variables for each measurement
mean1<-Merge_set[,grep("mean()",names(Merge_set))]
mean1<-mean1[,-(grep("meanFreq",names(mean1)))]
std1<-Merge_set[,grep("std",names(Merge_set))]

#bind both the subsets
Extracted_set<-cbind(std1,mean1)

#add the activity and subject columns
Extracted_set<-cbind(Extracted_set,Merge_set[,562])
Extracted_set<-cbind(Extracted_set,Merge_set[,563])
names(Extracted_set)[67]<-"subject"
names(Extracted_set)[68]<-"activity"

#melt the data set keeping subject and activity as ids
melted_set<-melt(Extracted_set,id=c("subject","activity"))

#order the data set according to the subject and activity
melted_set<-arrange(melted_set,subject,activity)

#use dcast function to create a tidy data set by taking average values of mean
#and standard deviation measurements.
tidy<-dcast(melted_set,subject+activity~variable,mean)

#Write the data frame into txt file
write.table(tidy,file="tidy_data.txt",row.names=FALSE)
write.table(tidy,file="tidy_data.txt",row.names=FALSE)