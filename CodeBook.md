

#CodeBook




>The data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

	<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

 
####Feature Selection - Raw Data


>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

>Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

>Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

>These signals were used to estimate variables of the feature vector for each pattern:  
>>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

>tbodyacc-xyz  
>tgravityacc-xyz  
>tbodyaccjerk-xyz  
>tbodygyro-xyz  
>tbodygyrojerk-xyz  
>tbodyaccmag  
>tgravityaccmag  
>tbodyaccjerkmag  
>tbodygyromag  
>tbodygyrojerkmag  
>fbodyacc-xyz  
>fbodyaccjerk-xyz  
>fbodygyro-xyz  
>fbodyaccmag  
>fbodyaccjerkmag  
>fbodygyromag  
>fbodygyrojerkmag  

The set of variables that were estimated and extracted in a data file for further calculations from these signals are: 

mean(): Mean value  
std(): Standard deviation  




##Tidy Data set

>*Total number of Records in the tidy data set:180*

>*Total number of Features in the tidy data set:68*  


>The complete set of variables along with their data types are below:

>  	__Feature__		   			: __Type__
 
>	  subjectid              	: integer  1...30  
>	  activity               	: character  "LAYING" "SITTING" "STANDING" "WALKING" "WALKING UPSTAIRS" "WALKING DOWNSTAIRS"   
>	  avetbodyaccmeanx       	: numeric - Continuous   
>	  avetbodyaccmeany       	: numeric - Continuous   
>	  avetbodyaccmeanz       	: numeric - Continuous   
>	  avetbodyaccstdx        	: numeric - Continuous   
>	  avetbodyaccstdy        	: numeric - Continuous   
>	  avetbodyaccstdz        	: numeric - Continuous   
>	  avetgravityaccmeanx    	: numeric - Continuous   
>	  avetgravityaccmeany    	: numeric - Continuous   
>	  avetgravityaccmeanz    	: numeric - Continuous   
>	  avetgravityaccstdx     	: numeric - Continuous   
>	  avetgravityaccstdy     	: numeric - Continuous   
>	  avetgravityaccstdz     	: numeric - Continuous   
>	  avetbodyaccjerkmeanx   	: numeric - Continuous   
>	  avetbodyaccjerkmeany   	: numeric - Continuous   
>	  avetbodyaccjerkmeanz   	: numeric - Continuous  
>	  avetbodyaccjerkstdx    	: numeric - Continuous    
>	  avetbodyaccjerkstdy    	: numeric - Continuous  
>	  avetbodyaccjerkstdz    	: numeric - Continuous  
>	  avetbodygyromeanx      	: numeric - Continuous  
>	  avetbodygyromeany      	: numeric - Continuous  
>	  avetbodygyromeanz      	: numeric - Continuous  
>	  avetbodygyrostdx       	: numeric - Continuous  
>	  avetbodygyrostdy       	: numeric - Continuous  
>	  avetbodygyrostdz       	: numeric - Continuous  
>	  avetbodygyrojerkmeanx  	: numeric - Continuous  
>	  avetbodygyrojerkmeany  	: numeric - Continuous  
>	  avetbodygyrojerkmeanz  	: numeric - Continuous  
>	  avetbodygyrojerkstdx   	: numeric - Continuous  
>	  avetbodygyrojerkstdy   	: numeric - Continuous  
>	  avetbodygyrojerkstdz   	: numeric - Continuous  
>	  avetbodyaccmagmean     	: numeric - Continuous  
>	  avetbodyaccmagstd      	: numeric - Continuous  
>	  avetgravityaccmagmean  	: numeric - Continuous  
>	  avetgravityaccmagstd   	: numeric - Continuous  
>	  avetbodyaccjerkmagmean 	: numeric - Continuous  
>	  avetbodyaccjerkmagstd  	: numeric - Continuous  
>	  avetbodygyromagmean    	: numeric - Continuous  
>	  avetbodygyromagstd     	: numeric - Continuous  
>	  avetbodygyrojerkmagmean	: numeric - Continuous  
>	  avetbodygyrojerkmagstd 	: numeric - Continuous  
>	  avefbodyaccmeanx       	: numeric - Continuous  
>	  avefbodyaccmeany       	: numeric - Continuous  
>	  avefbodyaccmeanz       	: numeric - Continuous  
>	  avefbodyaccstdx        	: numeric - Continuous  
>	  avefbodyaccstdy        	: numeric - Continuous  
>	  avefbodyaccstdz        	: numeric - Continuous  
>	  avefbodyaccjerkmeanx   	: numeric - Continuous  
>	  avefbodyaccjerkmeany   	: numeric - Continuous  
>	  avefbodyaccjerkmeanz   	: numeric - Continuous  
>	  avefbodyaccjerkstdx    	: numeric - Continuous  
>	  avefbodyaccjerkstdy    	: numeric - Continuous  
>	  avefbodyaccjerkstdz    	: numeric - Continuous  
>	  avefbodygyromeanx      	: numeric - Continuous  
>	  avefbodygyromeany      	: numeric - Continuous  
>	  avefbodygyromeanz      	: numeric - Continuous  
>	  avefbodygyrostdx       	: numeric - Continuous  
>	  avefbodygyrostdy       	: numeric - Continuous  
>	  avefbodygyrostdz       	: numeric - Continuous  
>	  avefbodyaccmagmean     	: numeric - Continuous  
>	  avefbodyaccmagstd      	: numeric - Continuous  
>	  avefbodyaccjerkmagmean 	: numeric - Continuous  
>	  avefbodyaccjerkmagstd  	: numeric - Continuous  
>	  avefbodygyromagmean    	: numeric - Continuous  
>	  avefbodygyromagstd     	: numeric - Continuous  
>	  avefbodygyrojerkmagmean	: numeric - Continuous  
>	  avefbodygyrojerkmagstd 	: numeric - Continuous  