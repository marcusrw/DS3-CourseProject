

#Downloads and unzips the zipped data file, if it's not already there
downloadAndUnzipData <- function(fileURL,zipFilePath,unzippedFolderName) {

    if (!file.exists(unzippedFolderName)){
        if (!file.exists(zipFilePath)){
            print("Downloading Data")
            download.file(fileURL,destfile = zipFilePath,method = "curl")
            print(paste("zipfile downloaded to ",paste(this.directory,zipFilePath,sep="/"),sep = ""))
        }
        print("Unzipping zipfile")
        unzip(zipFilePath)
    }
}

## Convenience function to change directories.  relativePath must be relative to
## the current working directory.
changeDirectory <- function(relativePath = "..") {
    ## Use chdir() to go to the previous directory
    setwd(paste(getwd(),relativePath,sep="/"))
}

## read data from the text files that come with this data set, and set the
## column names
readDataFileIntoTable <- function(fileName,columnNames) {

    library("dplyr")
    dataTable = read.table(fileName,sep = "",strip.white = TRUE,header=FALSE)
    dataTable = tbl_df(dataTable)
    names(dataTable) <- columnNames

    return(dataTable)
}

# Set the working directory to the location of this script
this.directory <- dirname(parent.frame(2)$ofile)
setwd(this.directory)
rm(this.directory)

## Download the data from fileURL and save it as fileName
fileURL = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFilePath = "getdata_projectfiles_UCI HAR Dataset.zip"
unzippedFolderName = "UCI HAR Dataset"
downloadAndUnzipData(fileURL,zipFilePath,unzippedFolderName)
rm(fileURL,zipFilePath,unzippedFolderName)

## Move into the data folder
changeDirectory("UCI HAR Dataset")

## 1. merge the data sets

##Get the features list from features.txt.  These are the row names of our raw data
features = read.table("features.txt",stringsAsFactors = FALSE)
features = features[,2]


library(dplyr)

## read in the X_test.txt dataset if we don't have it already
if (!exists("testData")){
    print("Reading test Dataset")

    ## Move into the test folder
    changeDirectory("test")

    ## Read in the data, activity labels, and subject numbers
    testData = readDataFileIntoTable("X_test.txt",features)
    testLabels = readDataFileIntoTable("y_test.txt","ActivityNumber")
    testSubjects = readDataFileIntoTable("subject_test.txt","Subject")

    ## Move back to the previous directory
    changeDirectory("..")
}

## read in the X_train.txt dataset if we don't have it already
if (!exists("trainData")){
    print("Reading training Dataset")

    ## Move into the train folder
    changeDirectory("train")

    ## Read in the data, activity labels, and subject numbers
    trainData = readDataFileIntoTable("X_train.txt",features)
    trainLabels = readDataFileIntoTable("y_train.txt","ActivityNumber")
    trainSubjects = readDataFileIntoTable("subject_train.txt","Subject")

    ## Move back to the previous directory
    changeDirectory("..")
}

## Skip this step if we already have the mergedData dataset
if (!exists("mergedData")) {

    ## Deal with duplicate labels.
    ## There are some columns of the dataset that have the same title, which can
    ## conflict with the tools in dplyr.  However, we're not going to use any of
    ## these so we can just throw them out.

    ## You can verify this by noting the following commands return nothing
    ## check if any of the duplicated features contains the strings mean,std or sd
    ## grep("mean",features[duplicated(features)])
    ## grep("std",features[duplicated(features)])
    ## grep("sd",features[duplicated(features)])

    ## Remove the dupicated column names, and the associated data if they exist
    if (!(all(features == features[!duplicated(features)]))) {
        trainData = trainData[,!duplicated(features)]
        testData = testData[,!duplicated(features)]
        features = features[!duplicated(features)]
    }

    ## Now we can combine the three parts of the test and training datasets, and
    ## combine them to make one large dataset
    testDataComplete = cbind(testSubjects,testLabels,testData)
    trainDataComplete = cbind(trainSubjects,trainLabels,trainData)
    mergedData = rbind(testDataComplete,trainDataComplete)
    mergedData = tbl_df(mergedData)
}

## 2. Extract mean/sd for each measurement

## Now we can use select to find every column that contains "mean" or "std",
## and extract those columns, as well as the "subject" and "ActivityNumber"
## we added before

mergedData = select(mergedData,
                    contains("Subject"),
                    contains("ActivityNumber"),
                    contains("-mean()"),
                    contains("-std()"))

## 3. Name the activities

## We can replace the activity numbers in column 2 with activity names using
## the descriptions provided in activity_labels.txt.
activity_labels = readDataFileIntoTable("activity_labels.txt",
                                        c("ActivityNumber","Activity"))

## We can add the activity_descriptions to our dataset by merging in the activity labels
mergedData = merge(activity_labels,mergedData,by.x="ActivityNumber",by.y="ActivityNumber")
mergedData = tbl_df(mergedData)

## And since we don't need the number anymore, we can delete it
mergedData = select(mergedData,-ActivityNumber)
rm(activity_labels)

## 4. Label the data set

## Since we already named the columns we added, and the other column headings
## are quite complicated and well described in the codebook that came with the
## dataset, let's just strip out the special characters to make it less error-prone

## use gsub to remove everything in the names that it's a letter or a number
names(mergedData) <- gsub("[^a-zA-Z0-9]","",names(mergedData))

## use gsub to replace "mean" with "Mean" and "std" with "Std" to maintain
## camel case
names(mergedData) <- gsub("mean","Mean",names(mergedData))
names(mergedData) <- gsub("std","Std",names(mergedData))

names(mergedData) <- gsub("^t","Time",names(mergedData))
names(mergedData) <- gsub("^f","Freq",names(mergedData))

## Remove some typos
names(mergedData) <- gsub("BodyBody","Body",names(mergedData))



## 5. Average over each activity and each subject
dataSummary <- mergedData %>%
    group_by(Subject,Activity) %>%
    summarise_each(funs(mean))

## Save the summary data to a file called tidySummary.txt
fileName = "tidySummary.txt"
changeDirectory("..")
write.table(dataSummary,file = fileName,row.names = FALSE)
rm(fileName)
rm(features)

## Free up some memory by deleting all the variables we don't need anymore
rm(testSubjects,testLabels,testData)
rm(trainSubjects,trainLabels,trainData)
rm(testDataComplete,trainDataComplete)
