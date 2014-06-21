run_analysis<-function(dir,filename)
{
  
  #Loading required Package for function ddply
  require(plyr)
  
  
  #Create a directory for course project data
  if(!file.exists(dir))
  {
    dir.create(dir)
  }
  
  
  setInternet2(TRUE) # for downloading https url
  #Download the required .zip file using the url provided on course's website
  url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(url,dest=paste(".","/",dir,"/",basename(url),sep=""),mode="wb")
  
  #Unzip the files in the project directory
  
  unzip(paste(dir,"/",list.files(dir),sep=""),exdir=dir)
  
  #Reading the required files
  
  #Read the training file with 7352 & test file with 2947 instances 
  #There are 561 features in both files. The columns are imported as numeric
    xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt",colClasses="numeric")
    xtest<-read.table("./UCI HAR Dataset/test/x_test.txt",colClasses="numeric")
  
  #Combining the training and test sets - total number of instances will be 10299 
  #and 561 features
    data_set<-rbind(xtrain,xtest)
  
  #Read the subject numbers for training & test sets
    sub_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
    sub_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
  
  #Combining the subject files and assigning a column name
    sub<-rbind(sub_train,sub_test)
    colnames(sub)<-"subjectid"
  
  #Read the activity numbers for training & test sets
    act_train<-read.table("./UCI HAR Dataset/train/y_train.txt",colClasses="numeric")
    act_test<-read.table("./UCI HAR Dataset/test/y_test.txt",colClasses="numeric")
  
  #Combining the activity files and assigning a column name
    act<-rbind(act_train,act_test)
    colnames(act)<-"activity"
  
  #Reading the Column labels
    feature_labels<-read.table("./UCI HAR Dataset/features.txt",colClasses="character")
  #Turn the features into a character vector for manipulation
    feat_labels<-feature_labels[,2]
  
  
  #Replacing column labels in data_set with descriptive names
    colnames(data_set)<-feat_labels
  
  #Extracting column names which contain mean and std only into "labels" vector
  #'grepl' is used to get indices of columns that contains the word 'mean' & 'std'
  #and omitting columns with 'Freq' into variable 'labels'. The indices are stored in a 
  #'cols' variable which is used to subset the feat_labels. labels is a character vector
    labels<-feat_labels[cols<-grepl('mean|std',feat_labels) & !(cols<-grepl('Freq',feat_labels))]
  
  #Creating a data frame with desired columns containing only 'mean'and 'std' by 
  #subsetting using 'labels'
  data_set<-data_set[,labels]
  
  #Joining data_set with subject & activity
  data_set<-cbind(sub,act,data_set)
  
  #Substituting the activity numbers with descriptive names
    act_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")  #Reading the file
    act_labels<-act_labels[,2]  #Creating a vector variable for manipulation
    
  #Using for loop and gsub to convert activity numbers into descriptive names
  #The for loop runs 6 times for 6 unique activities
  #The gsub function replaces the 'number' activity into 'descriptive' activity
  
      for(i in 1:6){data_set$activity=gsub(i,act_labels[i],data_set$activity)}
  
  
  #Arranging column names on data_set
    name<-tolower(names(data_set))                #Converting names to lower case
      name<-gsub("[-'(')]","",name)               #Removing special characters
        name<-sub("^","ave",name[3:length(name)]) #Putting 'ave' infront of column names apart from 'subjectid' and 'activity' 
          name<-gsub("bodybody","body",name)      #Remove repeated strings
            name<-c("subjectid","activity",name)  #Joining 'subjectid' and 'activity' to column names
              names(data_set)<-name               #Changing column names in the data set
  
  
  #Generating tidy data file as per requirements of averaging variables for each
  #subject and activity. 'numcolwise'is used to average only the numeric columns in the data set
  final_data<-ddply(data_set,.(subjectid,activity),numcolwise(mean))
   
  
  
  #Write the file if the file name provided as parameter to this script does not exist
    if(!file.exists(filename))
    {
      write.table(final_data,file=filename,row.names=FALSE,sep=" ")
    }
  
  
  
}