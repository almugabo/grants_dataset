
# EU Framework Programme Grants Dataset

This repository contains code/scripts used to create an open dataset of research funding data from the **EU Framework Programmes**.


## data source 

Dataset are provide by CORDIS

below the URL for each datasets for each programme

### CORDIS - EU funded projects under FP1 (1984–1987) ###

http://data.europa.eu/88u/dataset/fp1-cordis?locale=en

### CORDIS - EU funded projects under FP2 (1987–1991) ###

http://data.europa.eu/88u/dataset/cordis-fp2?locale=en
### CORDIS - EU funded projects under FP3 (1990–1994) ###

http://data.europa.eu/88u/dataset/cordis-fp3?locale=en
### CORDIS - EU research projects under FP4 (1994-1998) ###
http://data.europa.eu/88u/dataset/cordisfp4projects?locale=en
### CORDIS - EU research projects under FP5 (1998-2002) ###
http://data.europa.eu/88u/dataset/cordisfp5projects?locale=en
### CORDIS - EU research projects under FP6 (2002-2006) ###
http://data.europa.eu/88u/dataset/cordisfp6projects?locale=en
### CORDIS - EU research projects under FP7 (2007-2013) ###
https://data.europa.eu/data/datasets/cordisfp7projects?locale=en
### CORDIS - EU research projects under Horizon 2020 (2014-2020) ###
https://data.europa.eu/data/datasets/cordish2020projects?locale=en
### CORDIS - EU research projects under HORIZON EUROPE (2021-2027) ###
https://data.europa.eu/data/datasets/cordis-eu-research-projects-under-horizon-europe-2021-2027?locale=en


## Supported EU Framework Programmes (in this repo)


- **FP7** (2007-2013)
- **Horizon 2020** (2014-2020)
- **Horizon Europe** (2021-2027)

## Repository Structure

## (1) documentation ##

Documentation of the dataflow

## (2) data_extraction ## 

Code used to acquire datasets from CORDIS (cordis.europa.eu) and load them into a database.
Uses SQLite for better reproducibility.

## (3) data_transformation ## 

The resulting dataset has a harmonized format (e.g., similar fields given same field names).
This directory contains SQL scripts to transform the raw data.

## (4) data_release ## 

Scripts used to create the final dataset (TSV/CSV export).

## Data Sources

- [CORDIS](https://cordis.europa.eu) - EU Framework Programme project data

## Output Tables

- `eufp_grants` - Grant/project information
- `eufp_grants_organisations` - Participating organizations
- `eufp_grants_researchers` - Researchers and investigators



## To do 

### 1. integrate data from previous framework programs 

- **FP1** (1984-1987)
- **FP2** (1987-1991)
- **FP3** (1990-1994)
- **FP4** (1994-1998)
- **FP5** (1998-2002)
- **FP6** (2002-2006)

### integrate data on results 

