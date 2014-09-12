library (plyr)

#read test data
test_sig <- read.table ("UCI HAR Dataset/test/X_test.txt", header=FALSE);
test_sub <- read.table ("UCI HAR Dataset/test/subject_test.txt", header=FALSE);
test_act <- read.table ("UCI HAR Dataset/test/y_test.txt", header=FALSE);
test<-cbind (test_sub, test_act, test_sig);
rm ("test_sig", "test_sub", "test_act");

#read train data
train_sig <- read.table ("UCI HAR Dataset/train/X_train.txt", header=FALSE);
train_sub <- read.table ("UCI HAR Dataset/train/subject_train.txt", header=FALSE);
train_act <- read.table ("UCI HAR Dataset/train/y_train.txt", header=FALSE);
train<-cbind (train_sub, train_act, train_sig);
rm ("train_sig", "train_sub", "train_act");

# merge train and test sets
data<-rbind (test, train);
rm ("test", "train");

#add labels
features <- read.table ("UCI HAR Dataset/features.txt", sep=" ", header=FALSE)
names(data)<-c("subject","action",as.character(features[,2]))
rm ("features")

#select relevant columns
data2<-data[,grep ("-mean\\(\\)|-std\\(\\)|subject|action", names(data))]
rm ("data")

#add activity labels
act_labels<-read.table ("UCI HAR Dataset/activity_labels.txt", header=FALSE, sep=" ", col.names=c("action", "activity"));
data3<-merge (data2, act_labels, by="action")

#calculate mean of each variable aggregating by activity and subject
df <- aggregate(as.matrix(data3[,grep("-mean\\(\\)|-std\\(\\)", names(data3))]) ~ activity+subject, data3, mean)
write.table(df,file="table.txt",row.name=FALSE)
df
