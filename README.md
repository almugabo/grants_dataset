# grants_dataset
This repository contains code/scripts used to create open dataset of data on research funding of selected agencies/programs . 

This repository replaces the older repository https://github.com/almugabo/grant_db which is outdated in many respects 

The repository has 4 directory : 

(1) documentation

documentation of the dataflow 

(2) data_extraction 

All codes& scripts used to acquire the datasets and load them, mainly unchanged, into a database . 
We use SQLITE for better reproducibility 

(3) data_transformation 

The resulting dataset will have an harmonized format (e.g. similar fields given same same field names). 
This directory will hold all the scripts to that end 

(4) data_release 

scripts used to create the final dataset 





