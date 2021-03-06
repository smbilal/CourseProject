

#CodeBook




>The data is collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

	<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

 

##Data set

>The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
>'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
> The prefix 't' is used to denote time domain signals and 'f' to represent frequency domain signals.

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

>The set of variables that were estimated are: 

>		-	mean(): Mean value  - present only in raw data
>		-	std(): Standard deviation  - present only in raw data
>		-	Average of mean(): Mean value  
>		-	Average of std(): Standard deviation


>The average of mean and standard deviation is calculated to make observations relate to one subject performing an activity. There were several observations relating to the same subject and activity
>in the raw data. The average of mean and standard deviation is calculated as 'average' is one of the best ways of representing data.e.g,

>>subjectid=1 and activity=Standing - has 26 different observations recorded in the raw data.

>The tidy data set contains 66 measurements for 30 different subjects performing 6 different activities.

>*Total number of records in the data set:180*

>*Total number of features in the data set:68*  
 
>The complete set of variables along with their data types are below:


>  		Feature	   					Type
----------------------------------------------------------------------------------------------------------------------------------- 
>	  subjectid             	: integer    
>	  activity               	: character  

>				Measurement Variables
   
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