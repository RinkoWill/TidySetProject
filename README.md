---
title: "README"
author: "RinkoWill"
date: "Friday, July 24, 2015"
output: html_document
---

# README file for Getting and Cleaning Data Course Project
The run_analysis.R file contains a single script for downloading and processing the UCI dataset. It is annotated throughout with notes describing what each section of code does.

The dplyr package will need to be installed prior to running the script, but the script will load the package using the library() function.

If the script is run more than once, the user may wish to skip the section that downloads and unzips the dataset, since this will already have been saved in a directory.

All files in project:
*  run_analysis.R -- This is the file containing the R script.
*  CodeBook.md -- This file contains descriptions of the variables that appear in the final tidy dataset created by the R script.
* tidyset.txt -- This is a text file of the output from the R script. Note that the R script does not automatically create the text file output.
* README -- this document