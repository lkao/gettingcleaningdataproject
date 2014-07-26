#download the file, unzip the file#
if(!file.exists("./data")){dir.create("./data")}
fileUrl<- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./UCI HAR Dataset.zip")
unzip("./UCI HAR Dataset.zip")

#read all relevant files into R#
subject_train<- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
features<- read.table("./UCI HAR Dataset/features.txt")


#give column names to all tables#
colnames(subject_train)<-"sub"
colnames(y_train)<-"id"
colnames(subject_test)<-"sub"
colnames(y_test)<-"id"
colnames(activity_labels)<- c("id", "act")
colnames(features)<-c("vid", "feat")
colnames(X_train)<-as.vector(features$feat)
colnames(X_test)<-as.vector(features$feat)

#add descriptive activity names to dataset#
library(plyr)
y_train2 <- join(y_train, activity_labels, by="id")
y_test2<- join(y_test, activity_labels, by="id")

#create train and test tables#
train<-cbind(subject_train, y_train2, X_train)
test<- cbind(subject_test, y_test2, X_test)

#merge train and test tables into one table#
#this is the first tidy data set#
total <- rbind(train, test)

#grab the columns with mean() and std()#
filter <- grep("mean\\(|std", features$feat, perl=TRUE)

#create new dataset with relevant columns#
total2 <- total[,c(1,3, filter+3)]

#prepare melted data set, in order to get calculate means#
meltcols<- as.vector(colnames(total2))
meltcols2<-meltcols[3:68]
library(reshape2)
melt <- melt(total2, id=c("sub", "act"), measure.vars=(meltcols2))

#calculate means#
result<-dcast(melt, sub+act ~ variable, mean)

#write result to directory#
#this is the second tidy data set#
write.table(result, file="./result.txt", quote=FALSE)