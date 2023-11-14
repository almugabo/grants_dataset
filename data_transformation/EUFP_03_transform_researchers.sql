



/*
consolidating Researchers 

-- for now, only ERC PI 
 
 */




drop table if exists xx_coredata_eufp_researchers; 

create table xx_coredata_eufp_researchers
as 
select 
'FP_' || cast(proj_id as text)   as project_id
, NULL                      as person_id 
, cast(pers_type as text)   as person_role 
, cast(pi_name_first as text)       as person_name_first
, cast(pi_name_last as text)       as person_name_last
from 
cordis_fp7_persons
where pers_type = 'principalInvestigator'
;

insert into xx_coredata_eufp_researchers
select 
'FP_' || cast(project_id as text)  as project_id
, NULL                             as person_id 
, NULL                             as person_role 
, cast(first_name as text)        as person_name_first
, cast(last_name  as text)        as person_name_last
from 
cordis_h2020_persons
;



