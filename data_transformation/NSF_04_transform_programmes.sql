

/*
create GLORIS dataset 
*/


drop table if exists xx_coredata_nsf_programmes; 



/*programme */

create table xx_coredata_nsf_programmes 
(project_id  text 
, programme_lv1_code  text
, programme_lv1_label text
, programme_lv2_code  text
, programme_lv2_label text
, programme_scheme  text
)
;


--insert 

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2007_grant_info
;


insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2008_grant_info
;


insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2009_grant_info
;


insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2010_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2011_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2012_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2013_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2014_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2015_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2016_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2017_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2018_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2019_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2020_grant_info
;

insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2021_grant_info
;


insert into xx_coredata_nsf_programmes 
select 
distinct 
award_id                               as project_id 
,organization_directorate_abbreviation as programme_lv1_code
, organization_directorate_longname    as programme_lv1_label 
, program_element_code                 as programme_lv2_code
, program_element_text                 as programme_lv2_label 
, award_instrument                     as programme_scheme
from 
nsf_2022_grant_info
;


