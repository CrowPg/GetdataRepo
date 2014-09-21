The code contained in run_analysis.R performs various traitments on data sets provided for the "Getting and cleaning data" coursera class (seventh session)programming assignment. Use R to use run_analysis.R. (Command : source("run.analysis.R") given that the code file is in your working directory.)

One should set one's working directory as being the "UCI HAR Dataset" folder provided for the assignment.

The data sets regard an experiment using a smartphone. Extract from this experiment readme:

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment."


What run_analysis.R does is:
	- merging test and training sets
	- extracting only the means and standard deviations from the different features
	- arranging it all up by renaming properly the activities and the rown names
	- creating a new set where you can find the mean value for each selected feactures by activity AND subject
	- writing that new set into a file named "step5.txt"
