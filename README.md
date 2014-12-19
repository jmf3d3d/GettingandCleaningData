


The script run_analysis.R creates a summary dataset for all the mean and std measuremements from the Human Activity Recognition Using Smartphones Dataset Version 1.0
(Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, and Luca Oneto, 2012) A final tidy dataset with summarizes the values in means per subject and activity type is derived form this

The script reads in the relevant data files, the category variablel files(subject and activity), and a file containing the labels for the type of data collected.  
This data are for both a training set and a test set.  

The training and test data are joined and cleaned up.  Training set data are in the first set of rows and Test set data are in the latter rows.  

Labels for the signaltypes supplied in file "features.txt" are organized and cleaned up to remove punctuation marks and capital letters and to be more explanatory

The activity code supplied in numeric form is converted to informative labels and is used as a category variable

The subject numbers (contained in files subject_train.txt and subject_test.txt are joined and then combined with the recoded activity list to form a two column file.
The column names are then added to this file suject and activity

Next, another table is constructed using the two data files (training and test data)  and the column names extracted from the features file are assigned. 
The dublicated named columns are removed from this list(they are not columns we need in the final table anyway) so that dplyr functions don't crap out. 
The columns for the mean and standard deviation columns are then selected from the larger set.  
Column names are cleaned up at this point (we needed some of the puncuation characters to help distinguish means and standard deviations). 

The activitycode/sujbect table is then combined with this data table to produce the full dataset of mean and std measurements. 

Finally we aggregate the above table to produce a tidy table of all the means per Measurement type by Subject and Activity resulting in a 4 column long format tidy table with columns of
Subject number  - Activity type - Signal Type - Mean value



REFERENCES
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly 
Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions 
for its use or misuse. Any commercial use is prohibited.  Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
_________________________________________________________________________________________
