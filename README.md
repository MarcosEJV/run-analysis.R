# run-analysis.R
Pipeline for data organization from the Human Activity Recognition database. Coursera programming project.

The code content of this repository is for the data analysis of the Human Activity Recognition database. This data has been collected from the accelerometers from the Samsung Galaxy S smartphone.

The code present in this repository requires to set the working directory in the same directory of the data folder downloaded from the database at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The input for this code are the text files present in the folder and the output should be a csv file with the independent tidy data set with the average of each variable for each activity and each subject.

In general, the pipeline of the file consists on:
 - reading the files,
 - assign to variables,
 - extract the mean and std columns,
 - fused all the tables together,
 - get the mean of the data,
 - arrange the final table, and
 - export to csv file.

For more information regarding the dataset, you can go to the website: https://archive.ics.uci.edu/dataset/240/human+activity+recognition+using+smartphones

