---
title: "Code Book"
author: "RinkoWill"
date: "Friday, July 24, 2015"
output: html_document
---

# Code Book for Getting and Cleaning Data Course Project

The run_analysis.R script produces a tidy dataset derived from the Human Activity Recognition (HAR) Using Smartphones Data Set from the Center for Machine Learning and Intelligent Systems.

The original variables in the HAR dataset come from the accelerometer and gyroscope 3-axial raw signals Accelerometer-XYZ and Gyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Body_Acceleration-XYZ and Gravity_Acceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Some of the variables were then transformed using a Fast Fourier Transform (denoted Transformed in variable list.)

The first variable in the dataset, "subject" refers to the number assigned to the human subjects carrying out the testing. There were 30 subjects total, each one performing each of six different activities.

These activities are shown in the "activity" variable, and include: Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying.

All of the other variables in the tidy dataset represent the **MEAN VALUE** of that variable for each subject and each activity.


subject  
activity  
RawSignal_Body_Acceleration_Mean()_X_Axis
RawSignal_Body_Acceleration_Mean()_Y_Axis
RawSignal_Body_Acceleration_Mean()_Z_Axis
RawSignal_Body_Acceleration_StdDev()_X_Axis
RawSignal_Body_Acceleration_StdDev()_Y_Axis
RawSignal_Body_Acceleration_StdDev()_Z_Axis
RawSignal_Gravity_Acceleration_Mean()_X_Axis
RawSignal_Gravity_Acceleration_Mean()_Y_Axis
RawSignal_Gravity_Acceleration_Mean()_Z_Axis
RawSignal_Gravity_Acceleration_StdDev()_X_Axis
RawSignal_Gravity_Acceleration_StdDev()_Y_Axis
RawSignal_Gravity_Acceleration_StdDev()_Z_Axis
JerkSignal_Body_Acceleration_Mean()_X_Axis
JerkSignal_Body_Acceleration_Mean()_Y_Axis
JerkSignal_Body_Acceleration_Mean()_Z_Axis
JerkSignal_Body_Acceleration_StdDev()_X_Axis
JerkSignal_Body_Acceleration_StdDev()_Y_Axis
JerkSignal_Body_Acceleration_StdDev()_Z_Axis
RawSignal_Gyroscope_Mean()_X_Axis
RawSignal_Gyroscope_Mean()_Y_Axis
RawSignal_Gyroscope_Mean()_Z_Axis
RawSignal_Gyroscope_StdDev()_X_Axis
RawSignal_Gyroscope_StdDev()_Y_Axis
RawSignal_Gyroscope_StdDev()_Z_Axis
JerkSignal_Gyroscope_Mean()_X_Axis
JerkSignal_Gyroscope_Mean()_Y_Axis
JerkSignal_Gyroscope_Mean()_Z_Axis
JerkSignal_Gyroscope_StdDev()_X_Axis
JerkSignal_Gyroscope_StdDev()_Y_Axis
JerkSignal_Gyroscope_StdDev()_Z_Axis
RawSignal_Body_Acceleration_MagnitudeMean()
RawSignal_Body_Acceleration_MagnitudeStdDev()
RawSignal_Gravity_Acceleration_MagnitudeMean()
RawSignal_Gravity_Acceleration_MagnitudeStdDev()
JerkSignal_Body_Acceleration_MagnitudeMean()
JerkSignal_Body_Acceleration_MagnitudeStdDev()
RawSignal_Body_Gyroscope_MagnitudeMean()
RawSignal_Body_Gyroscope_MagnitudeStdDev()
JerkSignal_Body_Gyroscope_MagnitudeMean()
JerkSignal_Body_Gyroscope_MagnitudeStdDev()
Transformed_Signal_Body_Acceleration_Mean()_X_Axis
Transformed_Signal_Body_Acceleration_Mean()_Y_Axis
Transformed_Signal_Body_Acceleration_Mean()_Z_Axis
Transformed_Signal_Body_Acceleration_StdDev()_X_Axis
Transformed_Signal_Body_Acceleration_StdDev()_Y_Axis
Transformed_Signal_Body_Acceleration_StdDev()_Z_Axis
Transformed_Signal_Body_Acceleration_MeanFreq()_X_Axis
Transformed_Signal_Body_Acceleration_MeanFreq()_Y_Axis
Transformed_Signal_Body_Acceleration_MeanFreq()_Z_Axis
Transformed_Jerk_Signal_Body_Acceleration_Mean()_X_Axis
Transformed_Jerk_Signal_Body_Acceleration_Mean()_Y_Axis
Transformed_Jerk_Signal_Body_Acceleration_Mean()_Z_Axis
Transformed_Jerk_Signal_Body_Acceleration_StdDev()_X_Axis
Transformed_Jerk_Signal_Body_Acceleration_StdDev()_Y_Axis
Transformed_Jerk_Signal_Body_Acceleration_StdDev()_Z_Axis
Transformed_Jerk_Signal_Body_Acceleration_MeanFreq()_X_Axis
Transformed_Jerk_Signal_Body_Acceleration_MeanFreq()_Y_Axis
Transformed_Jerk_Signal_Body_Acceleration_MeanFreq()_Z_Axis
Transformed_Signal_Body_Gyroscope_Mean()_X_Axis
Transformed_Signal_Body_Gyroscope_Mean()_Y_Axis
Transformed_Signal_Body_Gyroscope_Mean()_Z_Axis
Transformed_Signal_Body_Gyroscope_StdDev()_X_Axis
Transformed_Signal_Body_Gyroscope_StdDev()_Y_Axis
Transformed_Signal_Body_Gyroscope_StdDev()_Z_Axis
Transformed_Signal_Body_Gyroscope_MeanFreq()_X_Axis
Transformed_Signal_Body_Gyroscope_MeanFreq()_Y_Axis
Transformed_Signal_Body_Gyroscope_MeanFreq()_Z_Axis
Transformed_Signal_Body_Acceleration_MagnitudeMean()
Transformed_Signal_Body_Acceleration_MagnitudeStdDev()
Transformed_Signal_Body_Acceleration_MagnitudeMeanFreq()
Transformed_Jerk_Signal_Body_Acceleration_MagnitudeMean()
Transformed_Jerk_Signal_Body_Acceleration_MagnitudeStdDev()
Transformed_Jerk_Signal_Body_Acceleration_MagnitudeMeanFreq()
Transformed_Signal_Body_Gyroscope_MagnitudeMean()
Transformed_Signal_Body_Gyroscope_MagnitudeStdDev()
Transformed_Signal_Body_Gyroscope_MagnitudeMeanFreq()
Transformed_Jerk_Signal_Body_Gyroscope_MagnitudeMean()
Transformed_Jerk_Signal_Body_Gyroscope_MagnitudeStdDev()
Transformed_Jerk_Signal_Body_Gyroscope_MagnitudeMeanFreq()