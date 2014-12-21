Getting_and_Cleaning_Data_Assignment
====================================
The run_analysis.R scriopt reads, labels and merges data from several text files and creates a tidy dataset

The data was obtained from the Coursera Getting and Cleaning Data course assignment page in a zip file with the following files enclosed:
  1. features.txt                   features list
  2. activity_labels.txt            list of activity names
  3. train/X_train.txt              training dataset
  4. train/y_train.txt              training data lables
  5. train/subject_train.txt        subject ids for the training dataset
  6. test/x_test.txt                test dataset
  7. test/y_test.txt                test data labels
  8. test/subject_test.txt          subject ids for the test dataset

Brief script explainaintion
  1. the script first checks to see if the necessary package "reshape2" is installed
  2. Secondly, reads all required data files and labels the different datasets
  3. Using the activity_id and subject_id the datasets are merged into a single dataframe
  4. then using functions the means and standard deviations are extracted
  5. merge the activity names with means/std dataset to get a single dataset with activity names
  6. Lastly, the dataset is converted and ordered into a new tidy dataset with the name "tidy_data.txt"
