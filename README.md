CourseProject - Getting & Cleaning Data
=============

#Function - run_analysis

## In a shell the function merges, filters, calculates and spits out a tidy data frame on raw data but the detailed mechanics are below.



This function starts by setting the directory to point to the unzipped data for 'samsungdata'.The data file should be
unzipped in the folder 'HCI HAR Dataset' beforehand. This function takes two parameters

1. current working directory
2. File name and extension(.txt/.csv) that should be given to the tidy data file

The train and test files from the raw data are read into two separate varaiables using the method 'read.table' as there is at least one space between 
each entry and the functions works fine on the data. The number of instances and measurements/variables in the training & test files are:

1. train - 7352 instances with 561 different measurements
2. test  - 2947 instances with 561 different measurements

The files are then combined into the variable 'data_set' which has 10299 rows of 561 different measurements. The method 'rbind' is used to
perform a row-wise operation.  