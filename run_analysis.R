#This script will create a tidy dataset and summary based on requirement for the final assignment
#of the coursera tidy data course.
library(dplyr)

# Download and extract the file as dataset.zip into your working directory
# *****UNCOMMENT ONLY IF YOU HAVE NOT ALREADY DOWNLOADED/UNZIPPED*****
#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile="dataset.zip")
#unzip("dataset.zip", overwrite=T)

#Load the features into a vector to use as column names
featureCols <- readLines(file.path("UCI HAR Dataset", "features.txt"))

#Get only std deviation and mean columns
stdDevAndMeanCols <- grep("-(mean|std)\\(", featureCols)

#Clean up column names
featureCols <- tolower(
  gsub("^f", "fft.",
  gsub("^t", "time.",
  gsub("-", ".",
  gsub("^[0-9]+ |\\(|\\)", "", featureCols)))))

#Get activities mappings
activitiesLabels <- read.table(file.path("UCI HAR Dataset", "activity_labels.txt"))

#Function used to build table for a provided data group (i.e. test/train)
loadSet <- function(dataGroup) {
  #Build subject table
  subjectFile <- file.path("UCI HAR Dataset", dataGroup, sprintf("subject_%s.txt", dataGroup))
  subjectTable <- read.table(subjectFile, col.names="subject")
  
  #Build activity table and replace IDs with proper labels
  activityFile <- file.path("UCI HAR Dataset", dataGroup, sprintf("y_%s.txt", dataGroup))
  activityTable <- read.table(activityFile, col.names="activity")
  activityTable$activity <- activitiesLabels[,2][match(activityTable$activity, activitiesLabels[,1])]
  
  #Build data table, taking only columns with mean and standard deviation
  dataFile <- file.path("UCI HAR Dataset", dataGroup, sprintf("X_%s.txt", dataGroup))
  dataTable <- read.table(dataFile, col.names=featureCols)[,stdDevAndMeanCols]
  
  #Return table built from merged subsets
  cbind(subjectTable, activityTable, dataTable)
}

#Merge the values from the test data group and training data group
finalTable <- rbind(loadSet("test"), loadSet("train"))

#Create a table that holds the means for each variable groups by each subject and activity
summaryTable <- group_by(finalTable, subject, activity) %>% summarise_all(funs(mean)) %>% as.data.frame

#write the data tables to file
write.table(finalTable, file="tidy-data.txt", row.names=F)
write.table(summaryTable, file="tidy-data-means.txt", row.names=F)
