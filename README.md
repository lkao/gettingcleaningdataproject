README
Getting and Cleaning Data Course Project

How to run the analysis on the Samsung Galaxy Smartphone Activity data:

1. Make sure the following files are in your working directory: "start.R" and "run_analysis.R"
2. You can either run the "start.R" script, or type in 'source("run_analysis.R")' in R Studio. (Both methods will perform the same function).
3. The script will start running.
4. "result.txt" will be the final output. You can find this in your working directory.
5. You can read the output "result.txt" back into R by using the command: 'table<- read.table("./result.txt"); table'

Description of run_analysis.R script:

	The script will download the UCI HAR Dataset from the internet location. It will then unzip the file in your current working directory. It will bring in all the relevant tables for our analysis and create "test" and "train" tables, which include the "test" and "train" subjects, their activities (and the appropriate character label for that activity), and their measurements for that activity. Then a new "total" table will be created, combining both "test" and "train" tables. At this point, we have our first "tidy data set" (named "total").
	
	Then, the script will take this first tidy data set, and extract only the columns with "mean()" or "std()", using the "grep" function. Then it will calculate the means of these fields for each subject/activity pairing (Subject 1 Sitting, Subject 1 Walking, etc). This is accomplished by melting and d-casting our "total" dataset (first tiny data set). Our result is outputted into our working directory as "result.txt".