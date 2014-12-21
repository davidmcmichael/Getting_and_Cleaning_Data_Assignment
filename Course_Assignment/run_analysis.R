##check for required packages
if (!("reshape2" %in% rownames(installed.packages())) ) {
  print("Please install required package\"reshape2\" before procedding")
}else {
      library(reshape2)

      ##load and read all required .txt files and label the datasets
      
      activity_labels <- read.table("./activity_labels.txt",col.names=c("activity_id","activity_name"))
      
      features <- read.table("features.txt")
      feature_names <- features [,2]
      
      testdata <- read.table("./test/X_test.txt")
      colnames(testdata) <- feature_names
      
      traindata <- read.table("./train/X_train.txt")
      colnames(traindata) <- feature_names
      
      test_subject_id <- read.table("./test/subject_test.txt")
      colnames(test_subject_id) <- "subject_id"
      
      test_activity_id <- read.table("./test/y_test.txt")
      colnames(test_activity_id) <- "activity_id"
      
      train_subject_id <- read.table("./train/subject_train.txt")
      colnames(train_subject_id) <- "subject_id"
      
      train_activity_id <- read.table("./train/y_train.txt")
      colnames(train_activity_id) <- "activity_id"
      
      test_data <- cbind(test_subject_id, test_activity_id, testdata)
      
      train_data <- cbind(train_subject_id, train_activity_id, traindata)
      
      ## Merge all the test and train data into a single dataframe
      merge_data <- rbind(train_data, test_data)
      
      ##Extract only the measurements on the mean and standard deviation for each measurement
      mean_col_idx <- grep("mean",names(merge_data),ignore.case=TRUE)
      mean_col_names <- names(merge_data)[mean_col_idx]
      std_col_idx <- grep("std",names(merge_data),ignore.case=TRUE)
      std_col_names <- names(merge_data)[std_col_idx]
      meanstddata <-merge_data[,c("subject_id","activity_id",mean_col_names,std_col_names)]
      
      ##Label descriptive activity names to name the activities in the data set
      descrip_names <- merge(activity_labels,meanstddata,by.x="activity_id",by.y="activity_id",all=TRUE)
      
      #Melt the data set using descriptive names
      melt_data <- melt(descrip_names,id=c("activity_id","activity_name","subject_id"))
      
      ## Convert the melted data set to creates a second, independent tidy data set 
      ##with the average of each variable for each activity and each subject
      tidy_data <- dcast(melt_data,activity_id + activity_name + subject_id ~ variable,mean)
      
      ##Taking the mean_data, create a tidy data file name "tidy_data" 
      write.table(tidy_data,"./tidy_data.txt")
      
}   