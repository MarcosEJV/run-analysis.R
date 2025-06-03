library(dplyr)     #Package used for reading and cleaning the data.

#Merges the training and the test sets to create one data set.
#read all the data for the test and train tables
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/Y_test.txt")
subjecttest <- read.table("./test/subject_test.txt")
xtrain <- read.table("./train/X_train.txt")
ytrain <- read.table("./train/Y_train.txt")
subjecttrain <- read.table("./train/subject_train.txt")
        
#Merge everything
xdata <- rbind(xtrain, xtest)     #Binds rows for the x values
ydata <- rbind(ytrain, ytest)     #Binds rows for the y values
subjectdata <- rbind(subjecttrain, subjecttest)     #Binds rows for the subjects data
        
#Extracts only the measurements on the mean and standard deviation for each measurement. 
features <- read.table("./features.txt")
mean.std <- features[grep("mean\\(\\)|std\\(\\)",features[,2]),]     #Extracts the mean and std columns names
xdata <- xdata[,mean.std[,1]]     #Filters the data based on the columns selected for the mean and std

#Uses descriptive activity names to name the activities in the data set
activitylabels <- read.table("./activity_labels.txt")
colnames(ydata) <- "Activity"     #Renames the column of the activitylabels table
ydata$Activity <- factor(ydata$Activity, labels = as.character(activitylabels[,2]))     #Replaces the numbers with the actual names of each activity
        
# Appropriately label the data set with descriptive variable names
colnames(xdata) <- mean.std[,2]
        
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
colnames(subjectdata) <- "Subject"     #Renames the column of the subjectdata table
organizeddata <- cbind(subjectdata, ydata, xdata)     #Builds the organized data table
tidydata <- organizeddata %>% group_by(Subject, Activity) %>% summarize_all(mean) %>% arrange(Activity)    #Gets the organized tidy data table
write.csv(tidydata, "tidytable.csv", row.names = FALSE)     #Writes the csv file
