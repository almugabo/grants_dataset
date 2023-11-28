
/*
ANR - researchers 
*/

drop table if exists xgrdset_researchers_anr;

create table xgrdset_researchers_anr
as 
select 
code_decision_anr         as grant_id
, NULL                      as person_id
, NULL                      as person_role
, partenaire_responsable_scientifique_prenom  as person_name_first
, partenaire_responsable_scientifique_nom  as person_name_last 
from 
anr_project_partners_2005_2009
;

insert into   xgrdset_researchers_anr
select 
code_decision_anr         as grant_id
, NULL                      as person_id
, NULL                      as person_role
, partenaire_responsable_scientifique_prenom  as person_name_first
, partenaire_responsable_scientifique_nom  as person_name_last 
from 
anr_project_partners_2010
;





