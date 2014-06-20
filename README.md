CourseProject - Getting & Cleaning Data
=============

#Function - run_analysis

## In a shell the function merges, filters, calculates and spits out a tidy data frame on raw data but the detailed mechanics are below.



This function starts by setting the directory to point to the unzipped data for 'samsungdata'.The data file should be
unzipped in the folder 'HCI HAR Dataset' beforehand. This function takes two parameters

1. current working directory
2. File name and extension(.txt/.csv) that should be given to the tidy data file


STEP -1:

*__'x_train.txt' and 'x_test.txt' files

The train and test files of measurements,from the raw data are read into two separate varaiables using the method 'read.table'. This method is used as 
there is at least one space between each entry and it is a text file. The number of instances and measurements/variables in the training & test files are:

1. train - 7352 instances with 561 different measurements
2. test  - 2947 instances with 561 different measurements

The columns are read in as 'numeric' and nothing has been mentioned for columns as the column names will be dealt with at a later stage. The function
will automatically assign columns names preceeding with a 'V' and the column number.

The files are then combined into the variable 'data_set' which has 10299 rows of 561 different measurements. The method 'rbind' is used to
perform a row-wise operation.

*__'subject_train.txt'and 'subject_test.txt'

The train and test files for subject are intially read into two separate variables using 'read.table'. Both the files are combined using 'rbind' to come
up with the same number of rows as the 'data_set'. The variable 'sub' is assigned a descriptive column name 'subjectid'

*__'y_train.txt' and 'y_test.txt'

The activity numbers for train and test files are read in and combined using 'rbind'. The resulting file 'act' has 10299 rows. A descriptive column name
'activity' is given to the variable.

*__Feature labels

The feature labels are read in as 'characters' via 'read.table'.This resulted in a creation of a data frame 'feat_labels' from which the second column was
stripped to make 'feat_labels' a character vector.

Now that all the files are read in, the data_set which contains the 561 measurements are allocated descriptive column names using 'feat_labels'. 