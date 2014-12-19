library(dplyr)
library(reshape2)

#setwd("D:/DATA SCIENCE/GETTINGDATA/UCI HAR Dataset")

## read the training subject list file - 7352 entries with values from 1 to 30 
trainsub <- read.table("./train/subject_train.txt")
## read the training subject list file - 7352 entries with values from 1 to 30 
testsub <- read.table("./test/subject_test.txt")


##read the training and test data sets

trainset <- read.table("./train/X_train.txt") # 561 observations of 7352 variables
testset <- read.table("./test/X_test.txt") # 561 observations of 7352 variables

##read the labels for the above datasets, to be used as column headings after tweaking
features <- read.table("./features.txt", stringsAsFactors = FALSE)

## make a list of the variable names from feature table
featlist <- as.list(as.character(features[,2]))


## read the training labels  to convert label IDs to these meaningful labels (make smallcase and remove underscore)
##   1 WALKING
##   2 WALKING_UPSTAIRS
##   3 WALKING_DOWNSTAIRS
##   4 SITTING
##   5 STANDING
##   6 LAYING
#

# read the activity types for each set
trainact <- read.table("./train/Y_train.txt") 
testact <- read.table("./test/Y_test.txt") 


### replace all numeric codes  with labels  # not the most elegant way to do this I'm sure, but it works 
activity <- rbind(trainact, testact)
activity[activity==1] <- "walking"
activity[activity==2] <- "walkupstairs"
activity[activity==3] <- "walkdownstairs"
activity[activity==4] <- "sitting"
activity[activity==5] <- "standing"
activity[activity==6] <- "laying"


# create a 2 column table with the subject number and activitydata to be added to the data value table later


tbla <- cbind(activity, rbind(trainsub, testsub))

#create column names for these first two columns

colnames(tbla) <- c("activity", "subjectnumber")



####### combine the training and test sets 


tbld <- rbind(trainset, testset)

### add column names to data table

colnames(tbld) <- featlist

# remove the duplicate named columns (they aren't needed anyway)
tbld <- tbld[,!duplicated(names(tbl))]

# select only the measures for means and standard deviations
tbld <- select(tbld, contains("mean()"), contains("std()"))

# fix up the variable names a little here
colnames(tbld) <- gsub("[[:punct:]]", "", colnames(tbld))   # remove puncutation marks
colnames(tbld) <- t(tolower(colnames(tbld)))                # convert to lower case
colnames(tbld) <- gsub("fbody", "frequencybody", colnames(tbld))    #use word instead of single letter for frequency
colnames(tbld) <- gsub("tbody", "timebody", colnames(tbld))         #use word instead of single letter for time

#now combine the two tables to commplete the task
tblf <- cbind(tbla, tbld)




#now create a tidy data set with the averages

#use melt to reshape to long 4 column :activity - subjectnumber - measurecategory - measurevalue
md <- melt(tblf, c("activity", "subjectnumber"), value.name = "mean")


# aggregate the data by calculating a mean value for each type of measuremenet by Subject and activitytype
tbl <- aggregate(md$mean, list(subject = md$subjectnumber, activity = md$activity,  variable = md$variable),mean)
# give the signal variables a more informative title

colnames(tbl)<- gsub("variable", "signaltype", colnames(tbl))
colnames(tbl)<- gsub("x", "mean", colnames(tbl))


#now write it out to a txt file for submission

#write.table(tbl,"tidyproject.txt", row.name = FALSE)




