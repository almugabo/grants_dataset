
/*
GTR
*/



drop table if exists xgrdset_grants_anr; 



drop table if exists xgrdset_grants_anr; 

create table xgrdset_grants_anr
as 
select 
distinct 
code_decision_anr     as grant_id
, code_decision_anr  as grant_id_original
, acronyme          as grant_acronym 
, titre_anglais       as grant_title 
, resume_anglais   as grant_abstract
, aap_edition as grant_start
, NULL as grant_end
, NULL                         as grant_status
, 'EURO'                       as grant_budget_currency 
, aide_allouee                           as  grant_budget
, 'ANR'                         as grant_funder
, 'Agence Nationale de la Recherche'   as grant_funder_name
, programme_acronyme                  as programme_lv1_code
, NULL                           as programme_lv1_label
, NULL                           as programme_lv2_code
, NULL                           as programme_lv2_label
, NULL              as  programme_scheme
from 
anr_projects_2005_2009
;

-- add newer grants 


insert into xgrdset_grants_anr
select 
distinct 
code_decision_anr     as grant_id
, code_decision_anr  as grant_id_original
, acronyme          as grant_acronym 
, titre_anglais       as grant_title 
, resume_anglais   as grant_abstract
, aap_edition as grant_start
, NULL as grant_end
, NULL                         as grant_status
, 'EURO'                       as grant_budget_currency 
, aide_allouee                           as  grant_budget
, 'ANR'                         as grant_funder
, 'Agence Nationale de la Recherche'   as grant_funder_name
, programme_acronyme                  as programme_lv1_code
, NULL                           as programme_lv1_label
, NULL                           as programme_lv2_code
, NULL                           as programme_lv2_label
, NULL              as  programme_scheme
from 
anr_projects_2010
;









