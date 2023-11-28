



/*
consolidating Researchers 

-- for now, only ERC PI 
 
 */



drop table if exists xgrdset_researchers_eufp; 

create table xgrdset_researchers_eufp
as 
select 
cast('EUFP_' || trim(proj_id) as text)  as grant_id
, NULL                      as person_id 
, cast(pers_type as text)   as person_role 
, cast(pi_name_first as text)       as person_name_first
, cast(pi_name_last as text)       as person_name_last
from 
"cordis-fp7-persons"
where pers_type = 'principalInvestigator'
;

insert into xgrdset_researchers_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, NULL                             as person_id 
, NULL                             as person_role 
, cast(first_name as text)        as person_name_first
, cast(last_name  as text)        as person_name_last
from 
cordis_h2020_erc_pi
;


