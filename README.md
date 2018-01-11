# Getting_Cleaning_Data_Project
It is the Getting and Cleaning Data Course Project which is required to be published in github. A tidy data set is the output of this project and, relative R code is writen in *run_analysis.R* file to produce the output. This code does the followings: 

* Download the source files and unzip it
* Load the activity and feature info, and merge activity codes with their names
* load and transpose features.txt to specify the headers for training and test datastes
* load other datasets of training and naming columns by their order in time window
* merge features, subjects, and features columns
* do the same for test data set
* merge training and test data sets to create *LargeDS* which is the whole dataset
* extract only columns from features which has only __mean__ or __std__ in the header, put it in *ExtracedDS*
* group the extracted dataset by 1) subject and 2) activity
* produce average value in each columns for each pair subject and activity, put it in **tidyDS**.

Other files in the repo:
1. *codebook.md*: which is the relative code book;
2. *tidyDS.txt* which is the required tidy data set in `txt` format;
3. *run_analysis.R* which is the R code file for this project. 
 
--- 
