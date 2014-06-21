CourseProject - Getting & Cleaning Data- version 1.0 - Last updated 21/06/2014
=============


Codebook
========

The codebook provides information on the origin of the raw data and calculations. The codebook also presents the details of the tidy data set produced by 
the 'run_analysis' script along with total number of instances, varaiables/features, variable names and their data type. 



Run_analysis.R Script
=====================

1. The function 'run_analysis.R' takes two parameters. These are 
	- Directory name for project data - If it does not exist, it will be created
	- File name for the tidy data file
		- code lines 9-12

2. The .zip file is downloaded using the 'https' url and unzipping is carried out in the project directory.- code lines 15-22

3. The relevant training & test files are read into separate variables and then joined together to create one file for measurement data, subject id & activity numbers.
		- code lines 24-49

4. Descriptive variable names from the the file 'features_info.txt' are read and assigned to the merged measurement data.- code lines 51-58

5. A subset of the measurement data is taken based on the condition of column names containing 'mean' and 'std'.- code lines 60-68

6. The subject id and activity numbers are merged with the above subset of measurement data.- code line 71

7. Activity numbers are replaced with descriptive activity names.- code lines 73-81

8. Column names are manipulated to make them user friendly.- code lines 84-90

9. Finally, an independent tidy data set with the average of each measurement variable for each activity and each subject is produced.- code line 95

10. The output is saved in a text file which contains 180 records and 68 columns. This file is not saved in the project directory but in current working directory.
		- code lines 100-103



The data set captures each varaible in one column. A row corresponds to only one observation per subject per activity. The measurement variables are all in their 
respective columns.

