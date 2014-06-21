

#CodeBook




>The data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

	<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

 
####Feature Selection - Raw Data


>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
>>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tBodyAcc-XYZ  
>tGravityAcc-XYZ  
>tBodyAccJerk-XYZ  
>tBodyGyro-XYZ  
>tBodyGyroJerk-XYZ  
>tBodyAccMag  
>tGravityAccMag  
>tBodyAccJerkMag  
>tBodyGyroMag  
>tBodyGyroJerkMag  
>fBodyAcc-XYZ  
>fBodyAccJerk-XYZ  
>fBodyGyro-XYZ  
>fBodyAccMag  
>fBodyAccJerkMag  
>fBodyGyroMag  
>fBodyGyroJerkMag  

The set of variables that were estimated and extracted in a data file for further calculations from these signals are: 

mean(): Mean value  
std(): Standard deviation  



Total number of Records in the tidy data set:180
	
  
Total number of Features in the tidy data set:68  

The complete set of variables along with their data types are below:

  Feature		 : Type
  =======		   ====	        
  
  1.subjectid              : integer  1...30  
  2.activity               : character  "LAYING" "SITTING" "STANDING" "WALKING" "WALKING UPSTAIRS" "WALKING DOWNSTAIRS"   
  3.avetbodyaccmeanx       : numeric - Continuous      
  4.avetbodyaccmeany       : numeric   
	  avetbodyaccmeanz       : numeric   
	  avetbodyaccstdx        : numeric   
	  avetbodyaccstdy        : numeric   
	  avetbodyaccstdz        : numeric   
	  avetgravityaccmeanx    : numeric   
	  avetgravityaccmeany    : numeric   
	  avetgravityaccmeanz    : numeric   
	  avetgravityaccstdx     : numeric   
	  avetgravityaccstdy     : numeric   
	  avetgravityaccstdz     : numeric   
	  avetbodyaccjerkmeanx   : numeric   
	  avetbodyaccjerkmeany   : numeric   
	  avetbodyaccjerkmeanz   : numeric  
	  avetbodyaccjerkstdx    : numeric    
	  avetbodyaccjerkstdy    : numeric  
	  avetbodyaccjerkstdz    : numeric  
	  avetbodygyromeanx      : numeric  
	  avetbodygyromeany      : numeric  
	  avetbodygyromeanz      : numeric  
	  avetbodygyrostdx       : numeric  
	  avetbodygyrostdy       : numeric  
	  avetbodygyrostdz       : numeric  
	  avetbodygyrojerkmeanx  : numeric  
	  avetbodygyrojerkmeany  : numeric  
	  avetbodygyrojerkmeanz  : numeric  
	  avetbodygyrojerkstdx   : numeric  
	  avetbodygyrojerkstdy   : numeric  
	  avetbodygyrojerkstdz   : numeric  
	  avetbodyaccmagmean     : numeric  
	  avetbodyaccmagstd      : numeric  
	  avetgravityaccmagmean  : numeric  
	  avetgravityaccmagstd   : numeric  
	  avetbodyaccjerkmagmean : numeric  
	  avetbodyaccjerkmagstd  : numeric  
	  avetbodygyromagmean    : numeric  
	  avetbodygyromagstd     : numeric  
	  avetbodygyrojerkmagmean: numeric  
	  avetbodygyrojerkmagstd : numeric  
	  avefbodyaccmeanx       : numeric  
	  avefbodyaccmeany       : numeric  
	  avefbodyaccmeanz       : numeric  
	  avefbodyaccstdx        : numeric  
	  avefbodyaccstdy        : numeric  
	  avefbodyaccstdz        : numeric  
	  avefbodyaccjerkmeanx   : numeric  
	  avefbodyaccjerkmeany   : numeric  
	  avefbodyaccjerkmeanz   : numeric  
	  avefbodyaccjerkstdx    : numeric  
	  avefbodyaccjerkstdy    : numeric  
	  avefbodyaccjerkstdz    : numeric  
	  avefbodygyromeanx      : numeric  
	  avefbodygyromeany      : numeric  
	  avefbodygyromeanz      : numeric  
	  avefbodygyrostdx       : numeric  
	  avefbodygyrostdy       : numeric  
	  avefbodygyrostdz       : numeric  
	  avefbodyaccmagmean     : numeric  
	  avefbodyaccmagstd      : numeric  
	  avefbodyaccjerkmagmean : numeric  
	  avefbodyaccjerkmagstd  : numeric  
	  avefbodygyromagmean    : numeric  
	  avefbodygyromagstd     : numeric  
	  avefbodygyrojerkmagmean: numeric  
	  avefbodygyrojerkmagstd : numeric  