
/*
create final dataset 

*/

drop table if exists xx_coredata_nsf_projects; 


/*
projects 
*/



create table xx_coredata_nsf_projects
(project_id  text ,
 project_url text,
 project_title text, 
 project_title_short text, 
 project_time_start text, 
 project_time_end text, 
 project_budget   text, 
 project_budget_currency   text,  
 project_description    text, 
 project_status         text,
 project_fundorg        text, 
 project_fundorg_name   text
 )
 ;
 
 
 
 
 --- NSF 


insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2007_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2008_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2009_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2010_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2011_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2012_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2013_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2014_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2015_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2016_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2017_grant_info
;


insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2018_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2019_grant_info
;

insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2020_grant_info
;


insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2021_grant_info
;


insert into xx_coredata_nsf_projects
select   
distinct 
'NSF_' || award_id      as project_id 
,'https://www.nsf.gov/awardsearch/showAward?AWD_ID=' || award_id as project_url
,award_title            as project_title 
,NULL                  as project_title_short 
,award_effective_date    as  project_time_start 
,award_expiration_date   as project_time_end 
, award_total_intn_amount as project_budget --- we use  Total Intended Award Amount:
,'US Dollars'          as project_budget_currency
,abstract_narration     as  project_description 
,NULL                  as project_status
,'NSF'                 as project_fundorg_id 
,'US National Science Foundation' as project_fundorg_name 
FROM 
nsf_2022_grant_info
;


