/*
consolidating Researchers - FP7, H2020, HE only

For now, only FP7 researchers available
*/

drop table if exists xgrdset_researchers_eufp; 

-- FP7
create table xgrdset_researchers_eufp
as 
select 
cast('EUFP_' || trim(proj_id) as text)  as grant_id
, NULL                      as person_id 
, cast(pers_type as text)   as person_role 
, cast(pi_name_first as text)       as person_name_first
, cast(pi_name_last as text)       as person_name_last
from 
cordis_fp7_persons
where pers_type = 'principalInvestigator'
;

-- H2020 - TBD when data becomes available
-- insert into xgrdset_researchers_eufp
-- select 
-- cast('EUFP_' || trim(project_id) as text)  as grant_id
-- , NULL                             as person_id 
-- , NULL                             as person_role 
-- , cast(first_name as text)        as person_name_first
-- , cast(last_name  as text)        as person_name_last
-- from 
-- cordis_h2020_persons
-- ;
