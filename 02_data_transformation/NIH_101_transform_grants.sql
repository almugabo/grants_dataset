
 

/*
NIH - grants 
*/



drop table if exists xgrdset_grants_nih; 


create table xgrdset_grants_nih
as 
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2007_projects as t1 left join nih_2007_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2008_projects as t1 left join nih_2008_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2009_projects as t1 left join nih_2009_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;



insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2010_projects as t1 left join nih_2010_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2011_projects as t1 left join nih_2011_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2012_projects as t1 left join nih_2012_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;

insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2013_projects as t1 left join nih_2013_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;




insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2014_projects as t1 left join nih_2014_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2015_projects as t1 left join nih_2015_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2016_projects as t1 left join nih_2016_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2017_projects as t1 left join nih_2017_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2018_projects as t1 left join nih_2018_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2019_projects as t1 left join nih_2019_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2020_projects as t1 left join nih_2020_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2021_projects as t1 left join nih_2021_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;


insert into xgrdset_grants_nih
select 
'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id
, t1.APPLICATION_ID                        as grant_id_original
, NULL                                     as grant_acronym
, t1.PROJECT_TITLE       as grant_title 
, t2.ABSTRACT_TEXT       as  pgrant_abstract
, t1.PROJECT_START       as grant_start
, t1.PROJECT_END         as grant_end
, NULL                   as grant_status
,'US Dollars'            as grant_budget_currency
, TOTAL_COST             as grant_budget
,'NIH'                   as grant_funder
,'US National Institutes of Health' as grant_funder_name
,ADMINISTERING_IC   as programme_lv1_code  -- to be added later 
,IC_NAME            as programme_lv1_label 
,STUDY_SECTION      as programme_lv2_code
,STUDY_SECTION_NAME as programme_lv2_label 
, NULL              as programme_scheme
from nih_2022_projects as t1 left join nih_2022_projects_abst as t2  on t1.APPLICATION_ID = t2.APPLICATION_ID  
;





--- WE ALSO MAINTAIN A TABLE WITH GRANT_ids 

drop table if exists xgrdset_grants_identifiers;

create table xgrdset_grants_identifiers
as 
select 
distinct 
* 
from 
(
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2007_projects as t1 
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2008_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2009_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2010_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2011_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2012_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2013_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2014_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2015_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2016_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2017_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2018_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2019_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2020_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2021_projects as t1
union 
select  'NIH_' || cast(t1.APPLICATION_ID as text)  as grant_id , t1.APPLICATION_ID  as grant_id_original , t1.CORE_PROJECT_NUM  as core_project_num , t1.FULL_PROJECT_NUM as full_project_num from nih_2022_projects as t1
) as tx1
;








