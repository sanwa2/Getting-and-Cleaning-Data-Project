
if (!("reshape2" %in% rownames(installed.packages())) ) {
  print("Please install required package \"reshape2\" before proceeding")
} else {
  
  library(reshape2)
  
  
  
  ## Read data and column names
    activity_labels <- read.table("./activity_labels.txt",col.names=c("activity_id","activity_name"))
  
    features <- read.table("features.txt")
  feature.names <-  features[,2]
  
    test.data <- read.table("./test/X_test.txt")
  colnames(test.data) <- feature.names
  
    train.data <- read.table("./train/X_train.txt")
  colnames(train.data) <- feature.names
  
    subject_test_id <- read.table("./test/subject_test.txt")
  colnames(subject_test_id) <- "subject_id"
  
    activity_test_id <- read.table("./test/y_test.txt")
  colnames(activity_test_id) <- "activity_id"
  
    subject_train_id <- read.table("./train/subject_train.txt")
  colnames(subject_train_id) <- "subject_id"
  
    activity_train_id <- read.table("./train/y_train.txt")
  colnames(activity_train_id) <- "activity_id"
  
  ##Combine the test id's and data into a test data and train data dataframe
  test_data <- cbind(subject_test_id , activity_test_id , test.data)
  
  train_data <- cbind(subject_train_id , activity_train_id , train.data)
  
  ##Combine the test data and the train data into one dataframe
  all_data <- rbind(train_data,test_data)
  
  ##Keep only columns refering to mean() or std() values
  mean_colidx <- grep("mean",names(all_data),ignore.case=TRUE)
  mean_colnames <- names(all_data)[mean_col_idx]
  std_colidx <- grep("std",names(all_data),ignore.case=TRUE)
  std_colnames <- names(all_data)[std_col_idx]
  meanstddata <-all_data[,c("subject_id","activity_id",mean_colnames,std_colnames)]
  
  ##Merge the activities dataset with the mean/std values dataset 
  descrnames <- merge(activity_labels,meanstddata,by.x="activity_id",by.y="activity_id",all=TRUE)
  
  ##Melt the dataset with the descriptive activity names 
  data_melt <- melt(descrnames,id=c("activity_id","activity_name","subject_id"))
  
  ##Cast the melted dataset according to  the average of each variable 
  mean_data <- dcast(data_melt,activity_id + activity_name + subject_id ~ variable,mean)
  
  ## Create file with the new tidy dataset
  write.table(mean_data,"./tidy_movement_data.txt")
  
} 