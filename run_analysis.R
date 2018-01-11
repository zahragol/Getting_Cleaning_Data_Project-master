
# getting and cleaning data Course project: 12/6/17

# 1. Merges the training and the test sets to create one data set.
# 3. Uses descriptive activity names to name the activities in the data set

url1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
setwd("C:/Users/Hamid/Documents/Dropbox/R/Getting and Cleaning Data/Project/")
download.file(url1,destfile = "./FUCIdataset.zip")
unzip("eduff.zip")

setwd("C:/Users/Hamid/Documents/Dropbox/R/Getting and Cleaning Data/Project/UCI HAR Dataset/")


F561 <- read.csv("features.txt",sep = " ",header = FALSE)
ActN <- read.csv("activity_labels.txt",sep=" ",header = FALSE)

TrAct <- read.csv("train/y_train.txt",header = FALSE)
TrAct <- merge(TrAct,ActN,by.x = "V1", by.y= "V1")
colnames(TrAct) <- c("actCode","Activity")

TrPerson <- read.csv("train/subject_train.txt", header = FALSE)
colnames(TrPerson) <- "subject"

TrX <- read.csv("train/X_train.txt",sep= "",header = FALSE)
header1 <- as.vector(t(F561[,2]))
colnames(TrX) <- header1



Tr_BAX <- read.csv("train/Inertial Signals/body_acc_x_train.txt",sep= "",header = FALSE)
coln1 <- c("body acc-X t1")
for (i in c(2:128)){
    coln1 <- c(coln1 , paste("body acc-X t",toString(i),sep = ""))
}
colnames(Tr_BAX) <- coln1



Tr_BAY <- read.csv("train/Inertial Signals/body_acc_y_train.txt",sep= "",header = FALSE)
coln2 <- c("body acc-Y t1")
for (i in c(2:128)){
  coln2 <- c(coln2 , paste("body acc-Y t",toString(i),sep = ""))
}
colnames(Tr_BAY) <- coln2


Tr_BAZ <- read.csv("train/Inertial Signals/body_acc_z_train.txt",sep= "",header = FALSE)
coln3 <- c("body acc-Z t1")
for (i in c(2:128)){
  coln3 <- c(coln3 , paste("body acc-Z t",toString(i),sep = ""))
}
colnames(Tr_BAZ) <- coln3


Tr_BGX <- read.csv("train/Inertial Signals/body_gyro_x_train.txt",sep= "",header = FALSE)
coln4 <- c("body acc-X t1")
for (i in c(2:128)){
  coln4 <- c(coln4 , paste("body gyro-X t",toString(i),sep = ""))
}
colnames(Tr_BGX) <- coln4



Tr_BGY <- read.csv("train/Inertial Signals/body_gyro_y_train.txt",sep= "",header = FALSE)
coln5 <- c("body gyro-Y t1")
for (i in c(2:128)){
  coln5 <- c(coln5 , paste("body gyro-Y t",toString(i),sep = ""))
}
colnames(Tr_BGY) <- coln5


Tr_BGZ <- read.csv("train/Inertial Signals/body_gyro_z_train.txt",sep= "",header = FALSE)
coln6 <- c("body gyro-Z t1")
for (i in c(2:128)){
  coln6 <- c(coln6 , paste("body gyro-Z t",toString(i),sep = ""))
}
colnames(Tr_BGZ) <- coln6

##
Tr_TAX <- read.csv("train/Inertial Signals/total_acc_x_train.txt",sep= "",header = FALSE)
coln7 <- c("total acc-X t1")
for (i in c(2:128)){
  coln7<- c(coln7 , paste("total acc-X t",toString(i),sep = ""))
}
colnames(Tr_TAX) <- coln7



Tr_TAY <- read.csv("train/Inertial Signals/total_acc_y_train.txt",sep= "",header = FALSE)
coln8 <- c("total acc-Y t1")
for (i in c(2:128)){
  coln8 <- c(coln8 , paste("total acc-Y t",toString(i),sep = ""))
}
colnames(Tr_TAY) <- coln8


Tr_TAZ <- read.csv("train/Inertial Signals/total_acc_z_train.txt",sep= "",header = FALSE)
coln9 <- c("total acc-X t1")
for (i in c(2:128)){
  coln9 <- c(coln9 , paste("total acc-Z t",toString(i),sep = ""))
}
colnames(Tr_TAZ) <- coln9

TrainingPart <- cbind(TrPerson,TrAct,TrX,Tr_BAX,Tr_BAY,Tr_BAZ,Tr_BGX,Tr_BGY,Tr_BGZ,Tr_TAX,Tr_TAY,Tr_TAZ)


##############TEST SET


TstAct <- read.csv("test/y_test.txt",header = FALSE)
TstAct <- merge(TstAct,ActN,by.x = "V1", by.y= "V1")
colnames(TstAct) <- c("actCode","Activity")

TstPerson <- read.csv("test/subject_test.txt", header = FALSE)
colnames(TstPerson) <- "PersonCode"

TstX <- read.csv("test/X_test.txt",sep= "",header = FALSE)
header1 <- as.vector(t(F561[,2]))
colnames(TstX) <- header1



Tst_BAX <- read.csv("test/Inertial Signals/body_acc_x_test.txt",sep= "",header = FALSE)
coln1 <- c("body acc-X t1")
for (i in c(2:128)){
  coln1 <- c(coln1 , paste("body acc-X t",toString(i),sep = ""))
}
colnames(Tst_BAX) <- coln1



Tst_BAY <- read.csv("test/Inertial Signals/body_acc_y_test.txt",sep= "",header = FALSE)
coln2 <- c("body acc-Y t1")
for (i in c(2:128)){
  coln2 <- c(coln2 , paste("body acc-Y t",toString(i),sep = ""))
}
colnames(Tst_BAY) <- coln2


Tst_BAZ <- read.csv("test/Inertial Signals/body_acc_z_test.txt",sep= "",header = FALSE)
coln3 <- c("body acc-Z t1")
for (i in c(2:128)){
  coln3 <- c(coln3 , paste("body acc-Z t",toString(i),sep = ""))
}
colnames(Tst_BAZ) <- coln3


Tst_BGX <- read.csv("test/Inertial Signals/body_gyro_x_test.txt",sep= "",header = FALSE)
coln4 <- c("body acc-X t1")
for (i in c(2:128)){
  coln4 <- c(coln4 , paste("body gyro-X t",toString(i),sep = ""))
}
colnames(Tst_BGX) <- coln4



Tst_BGY <- read.csv("test/Inertial Signals/body_gyro_y_test.txt",sep= "",header = FALSE)
coln5 <- c("body gyro-Y t1")
for (i in c(2:128)){
  coln5 <- c(coln5 , paste("body gyro-Y t",toString(i),sep = ""))
}
colnames(Tst_BGY) <- coln5


Tst_BGZ <- read.csv("test/Inertial Signals/body_gyro_z_test.txt",sep= "",header = FALSE)
coln6 <- c("body gyro-Z t1")
for (i in c(2:128)){
  coln6 <- c(coln6 , paste("body gyro-Z t",toString(i),sep = ""))
}
colnames(Tst_BGZ) <- coln6

##
Tst_TAX <- read.csv("test/Inertial Signals/total_acc_x_test.txt",sep= "",header = FALSE)
coln7 <- c("total acc-X t1")
for (i in c(2:128)){
  coln7<- c(coln7 , paste("total acc-X t",toString(i),sep = ""))
}
colnames(Tst_TAX) <- coln7



Tst_TAY <- read.csv("test/Inertial Signals/total_acc_y_test.txt",sep= "",header = FALSE)
coln8 <- c("total acc-Y t1")
for (i in c(2:128)){
  coln8 <- c(coln8 , paste("total acc-Y t",toString(i),sep = ""))
}
colnames(Tst_TAY) <- coln8


Tst_TAZ <- read.csv("test/Inertial Signals/total_acc_z_test.txt",sep= "",header = FALSE)
coln9 <- c("total acc-X t1")
for (i in c(2:128)){
  coln9 <- c(coln9 , paste("total acc-Z t",toString(i),sep = ""))
}
colnames(Tst_TAZ) <- coln9




TestPart <- cbind(TstPerson,TstAct,TstX,Tst_BAX,Tst_BAY,Tst_BAZ,Tst_BGX,Tst_BGY,Tst_BGZ,Tst_TAX,Tst_TAY,Tst_TAZ)



###################### MERGING

LargeDS <- rbind(TrainingPart,TestPart)

write.csv(LargeDS,file = "cleanDataSet.csv")
LargeDS[c(1:5),c(1,3,4)]

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.

ft<-read.csv("features.txt",sep = "", header = F)
colnames(ft) <- c("rowNm","featName")

coldig <-grepl(pattern = "([Mm][eE][aA][nN]|[sS][tT][dD])+" , ft[,2] )
colsExtract<-as.vector(ft[coldig,1]+3)

colsExtract <- c(1,3,colsExtract) 
ExtracedDS <- LargeDS[,colsExtract] 

# 4. Appropriately labels the data set with descriptive variable names.


# 5. From the data set in step 4, creates a second, independent tidy data set 
#       with the average of each variable for each activity and each subject.

library(dplyr)
SubAct <- group_by(ExtracedDS,subject,Activity)
Aver_sa <- summarise(SubAct, ave(c(3:ncol(SubAct))))


tidyDS <- ExtracedDS %>% group_by(subject,Activity) %>% summarise_each(funs(mean))
write.table(tidyDS,"./tidyDS.txt",row.names = F)
 
