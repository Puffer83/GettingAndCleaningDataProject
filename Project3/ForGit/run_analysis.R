library(plyr)

testData <- read.table("X_test.txt")
testLabels <- read.table("y_test.txt")
testSubjects <- read.table("subject_test.txt")
trainData <- read.table("X_train.txt")
trainLabels <- read.table("y_train.txt")
trainSubjects <- read.table("subject_train.txt")
features <- read.table("features.txt")
activities <- read.table("activity_labels.txt")

fulltestDataset <- cbind(testSubjects,testLabels,testData)
fulltrainDataset <- cbind(trainSubjects,trainLabels,trainData)

fullDataset <- rbind(fulltestDataset,fulltrainDataset)

MeanStdSubset <- grep("-mean[^F]|-std",features$V2)

MeanStdFeatures <- features[MeanStdSubset,]

MeanStdSubset <- c(1,2, MeanStdSubset+2)

MeanStdDataset <- fullDataset[,MeanStdSubset]

names(MeanStdDataset) <- c("Subject", "Activity", as.character(MeanStdFeatures$V2))

n <- nrow(MeanStdDataset)

for (i in 1:n){
    temp <- activities[as.integer(MeanStdDataset[i,"Activity"]),2]
    MeanStdDataset[i,"Activity"] <- as.character(temp)
}

names(MeanStdDataset) <- gsub("-", "", names(MeanStdDataset),)
names(MeanStdDataset) <- sub("BodyBody", "Body", names(MeanStdDataset),)
names(MeanStdDataset) <- sub("Gyro", "Gyroscope", names(MeanStdDataset))
names(MeanStdDataset) <- sub("\\(\\)", "", names(MeanStdDataset))
names(MeanStdDataset) <- sub("^t", "time", names(MeanStdDataset))
names(MeanStdDataset) <- sub("^f", "freq", names(MeanStdDataset))
names(MeanStdDataset) <- sub("Acc", "Acceleration", names(MeanStdDataset))
names(MeanStdDataset) <- sub("mean", "Mean", names(MeanStdDataset))
names(MeanStdDataset) <- sub("std", "StdDev", names(MeanStdDataset))

finalDataset <- ddply(MeanStdDataset, .(Subject = MeanStdDataset$Subject, 
                                   Activity = MeanStdDataset$Activity), numcolwise(mean))

write.table(finalDataset,"CourseProjectData.txt", row.names = FALSE)




