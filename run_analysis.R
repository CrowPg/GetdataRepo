libray(plyr)

features <- read.table("features.txt", stringsAsFactors = F)
labels <- c("Activity", "Subject", features[,2])
activities <- read.table("activity_labels.txt", stringsAsFactors = F)[2]
activities <- as.vector(activities$V2)
X <- rbind(read.table("test/X_test.txt"), read.table("train/X_train.txt"))
y <- rbind(read.table("test/y_test.txt"), read.table("train/y_train.txt"))
subjects <- rbind(read.table("test/subject_test.txt"), read.table("train/subject_train.txt"))
Set <- arrange(cbind(y, subjects, X), V1)
names(Set) <- labels
MeanAndStdSet <- cbind("Subject" = Set$Subject,
                       "Activity" = as.factor(Set$Activity),
                       Set[grepl("std",labels)|grepl("mean", labels)])
levels(MeanAndStdSet$Activity) <- activities

meltedMaSSet <- melt(MeanAndStdSet, id = names(MeanAndStdSet)[1:2], measure.vars = names(MeanAndStdSet)[3:length(MeanAndStdSet)])
ActivityMeans <- dcast(meltedMaSSet, Activity~variable, mean)
names(ActivityMeans)[1] = "ActivityOrSubject"
SubjectMeans <- dcast(meltedMaSSet, Subject~variable, mean)
names(SubjectMeans)[1] = "ActivityOrSubject"
SubjectMeans$ActivityOrSubject<-as.factor(SubjectMeans$ActivityOrSubject)
Final <- rbind(ActivityMeans, SubjectMeans)

