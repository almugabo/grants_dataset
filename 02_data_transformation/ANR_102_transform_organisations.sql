
/*
ANR - organisations 
*/



drop table if exists xgrdset_organisations_anr;


create table xgrdset_organisations_anr
as 

select 
code_decision_anr         as grant_id
--, partenaire_code_rnsr    as org_id
, NULL                      as org_id 
, partenaire_nom_organisme               as org_name 
, partenaire_adresse_pays            as org_country 
, case 
	when partenaire_est_coordinateur = 1 then 'coordinator'
	else 'participant'
end  as org_role 
           
from 
anr_project_partners_2005_2009
;

insert into xgrdset_organisations_anr
select 
code_decision_anr         as grant_id
, partenaire_code_rnsr    as org_id
--, NULL                      as org_id 
, partenaire_nom_organisme               as org_name 
, partenaire_adresse_pays            as org_country 
, case 
	when partenaire_est_coordinateur = 1 then 'coordinator'
	else 'participant'
end  as org_role 
           
from 
anr_project_partners_2010
;









