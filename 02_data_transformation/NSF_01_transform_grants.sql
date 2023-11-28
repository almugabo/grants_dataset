
/*
create final dataset 

*/

drop table if exists xx_coredata_nsf_projects; 


/*
projects 
*/

drop table if exists xgrdset_grants_nsf; 

CREATE TABLE xgrdset_grants_nsf(
  grant_id TEXT,
  grant_id_original TEXT,
  grant_acronym TEXT,
  grant_title TEXT,
  grant_abstract TEXT,
  grant_start TEXT,
  grant_end TEXT,
  grant_status TEXT,
  grant_budget_currency TEXT,
  grant_budget REAL,
  grant_funder TEXT,
  grant_funder_name TEXT,
  programme_lv1_code TEXT,
  programme_lv1_label TEXT,
  programme_lv2_code TEXT,
  programme_lv2_label TEXT,
  programme_scheme TEXT
);



insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2007_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2008_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2009_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2010_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2011_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2012_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2013_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2014_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2015_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2016_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2017_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2018_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2019_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2020_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2021_grant_info
;

insert into xgrdset_grants_nsf 
select   
distinct 
'NSF_' || award_id      as grant_id
, award_id              as grant_id_original
, NULL                  as grant_acronym 
,award_title            as grant_title 
,abstract_narration     as grant_abstract 
,award_effective_date   as grant_start 
,award_expiration_date  as grant_end
, NULL                  as grant_status
,'US Dollars'           as grant_budget_currency
, award_total_intn_amount as grant_budget  --- we use  Total Intended Award Amount:
,'NSF'                 as  grant_funder
,'US National Science Foundation' as grant_funder_name
, organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2022_grant_info
;





