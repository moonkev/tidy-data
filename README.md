## Getting and Cleaning Data Course Project


### Running the analysis

* You must have R installed.  This script was tested with the following R version
```
R version 3.4.3 (2017-11-30) -- "Kite-Eating Tree"
Copyright (C) 2017 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)
```
* You must have the ```dplyr``` package installed

To run the data analsys, you would simply run the run_analsys.R script from the command line using
```bash
$ Rscript run_analysis.R
```
or load the script into RStudio, select all and run the entire script

By default the script will assume you have downloaded the file [found here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
and extracted its contents into the repository directory.  Alternatively, you can uncomment lines 7 and 8 in the run_analysis.R script and it will download and extract the contents for you.

The script will perform the following steps

1. Download and extract original dataset contents *(optional - must uncomment lines 7 and 8)*
2. Generate a vector to hold the required feature columns
3. Determine which columns to display based on the requirements of the assignment (only those containing std deviation and mean values)
4. Clean the column names
5. Define a function to load the and line up the files containing the subject, activity and data points collected
6. Load these files for both test and training data
7. Create a summary table which contains the average of each observation for each invdividual subject/activity pair
8. Write the results of these tables to the files ```tidy-data.txt``` and ```tidy-data-means.txt```