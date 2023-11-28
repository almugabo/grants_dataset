

/*
consolidating the projects 

result: a single table called 

xx_coredata_eufp_projects


 */



-- FP 1 


drop table if exists xgrdset_eufp; 

create table xgrdset_eufp
as 
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('ECU'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP1' as text)                              as programme_lv1_code
, cast('EU Framework Programme 1' as text)            as programme_lv1_label
, cast(programme as text)                             as programme_lv2_code
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM cordis_fp1projects
;



-- FP 2

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('ECU'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP2' as text)                              as programme_lv1_code
, cast('EU Framework Programme 2' as text)            as programme_lv1_label
, cast(programme as text)                             as programme_lv2_code
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM cordis_fp2projects
;
-- FP 3 

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('ECU'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP3' as text)                              as programme_lv1_code
, cast('EU Framework Programme 3' as text)            as programme_lv1_label
, cast(programme as text)                             as programme_lv2_code
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM cordis_fp3projects
;

-- FP 4 

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('ECU'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP4' as text)                              as programme_lv1_code
, cast('EU Framework Programme 4' as text)            as programme_lv1_label
, cast(programme as text)                             as programme_lv2_code
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM cordis_fp4projects
; 

-- FP 5

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('EURO'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP5' as text)                              as programme_lv1_code
, cast('EU Framework Programme 5' as text)            as programme_lv1_label
, cast(programme as text)                             as programme_lv2_code
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM cordis_fp5projects
; 




-- FP 6

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('EURO'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP6' as text)                              as programme_lv1_code
, cast('EU Framework Programme 6' as text)            as programme_lv1_label
, cast(programme as text)                             as programme_lv2_code
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM cordis_fp6projects
; 




-- FP 7

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('EURO'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('EU_FP7' as text)                              as programme_lv1_code
, cast('EU Framework Programme 7' as text)            as programme_lv1_label
, cast('' as text)                                    as programme_lv2_code   -- programme in another table 
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM 
cordis_fp7projects_xlsx_project
; 

-- Horizon 2020 

insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('EURO'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('H2020' as text)                              as programme_lv1_code
, cast('EU Horizon 2020' as text)                    as programme_lv1_label
, cast('' as text)                                    as programme_lv2_code  -- programme in another table 
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                        as programme_scheme
FROM 
cordis_h2020projects_xlsx_project
; 

-- Horizon Europe 


insert into xgrdset_eufp
select 
cast('EUFP_' || trim(id) as text)  as grant_id
, cast(trim(id) as text)           as grant_id_original
, cast(acronym as text)            as grant_acronym
, cast(title as text)              as grant_title
, cast(objective as text)          as grant_abstract
, cast(start_date as text)         as grant_start
, cast(end_date  as text)          as grant_end
, cast('CLOSED' as text)           as grant_status
, cast('EURO'  as text)             as grant_budget_currency
, ec_max_contribution              as grant_budget
, cast('EUFP' as text)             as grant_funder
, cast('European Union Framework Programme' as text)  as grant_funder_name
, cast('HE' as text)                              as programme_lv1_code
, cast('EU Horizon Europe' as text)                    as programme_lv1_label
, cast('' as text)                                    as programme_lv2_code  -- programme in another table 
, cast('' as text)                                    as programme_lv2_label
, cast(funding_scheme as text)                       as programme_scheme
FROM 
cordis_HORIZONprojects_xlsx_project
; 



---- ADD PROGRAMM INFORMATION 

-- FP7 

with tx1 
as 
(
select 
cast('EUFP_' || trim(project_id) as text) as xid 
, cast(legal_basis as text) as xlegal 
from 
cordis_fp7projects_xlsx_legal_basis
)
update 
xgrdset_eufp
set programme_lv2_code  = tx1.xlegal 
from tx1 
where grant_id  = tx1.xid
and programme_lv1_code = 'EU_FP7'
;


-- H2020 

with tx1 
as 
(
select 
cast('EUFP_' || trim(project_id) as text) as xid 
, cast(legal_basis as text) as xlegal 
from 
cordis_h2020projects_xlsx_legal_basis
)
update 
xgrdset_eufp
set programme_lv2_code  = tx1.xlegal 
from tx1 
where grant_id  = tx1.xid
and programme_lv1_code = 'H2020'
;

-- HE 

with tx1 
as 
(
select 
cast('EUFP_' || trim(project_id) as text) as xid 
, cast(legal_basis as text) as xlegal 
from 
cordis_HORIZONprojects_xlsx_legal_basis
)
update 
xgrdset_eufp
set programme_lv2_code  = tx1.xlegal 
from tx1 
where grant_id  = tx1.xid
and programme_lv1_code = 'HE'
;



-- ADD LABELS 

-- FP7 

update xgrdset_eufp set programme_lv2_label= 'FP7-CrossProgramme' where programme_lv2_code = 'FP7-GA';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Health' where programme_lv2_code = 'FP7-HEALTH';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Food, Agriculture and Biotechnology' where programme_lv2_code = 'FP7-KBBE';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Information and communication technologies' where programme_lv2_code = 'FP7-ICT';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Nanosciences, Nanotechnologies, Materials and new Production Technologies' where programme_lv2_code = 'FP7-NMP';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Energy' where programme_lv2_code = 'FP7-ENERGY';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Environment (including Climate Change)' where programme_lv2_code = 'FP7-ENVIRONMENT';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Transport (including Aeronautics)' where programme_lv2_code = 'FP7-TRANSPORT';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Socio-economic Sciences and Humanities' where programme_lv2_code = 'FP7-SSH';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Space' where programme_lv2_code = 'FP7-SPACE';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Security' where programme_lv2_code = 'FP7-SECURITY';
update xgrdset_eufp set programme_lv2_label= 'Cooperation - Joint Technology Initiatives' where programme_lv2_code = 'FP7-JTI';
update xgrdset_eufp set programme_lv2_label= 'Ideas - ERC' where programme_lv2_code = 'FP7-IDEAS-ERC';
update xgrdset_eufp set programme_lv2_label= 'People - Marie Curie Actions' where programme_lv2_code = 'FP7-PEOPLE';
update xgrdset_eufp set programme_lv2_label= 'Capacities - Research infrastructures' where programme_lv2_code = 'FP7-INFRASTRUCTURES';
update xgrdset_eufp set programme_lv2_label= 'Capacities - Research for the benefit of SMEs' where programme_lv2_code = 'FP7-SME';
update xgrdset_eufp set programme_lv2_label= 'Capacities - Regions of knowledge and support for regional research-driven clusters' where programme_lv2_code = 'FP7-REGIONS';
update xgrdset_eufp set programme_lv2_label= 'Capacities - Research potential of Convergence Regions' where programme_lv2_code = 'FP7-REGPOT';
update xgrdset_eufp set programme_lv2_label= 'Capacities - Science in society' where programme_lv2_code = 'FP7-SIS';
update xgrdset_eufp set programme_lv2_label= 'Capacities - Support to the coherent development of research policies' where programme_lv2_code = 'FP7-COH';
update xgrdset_eufp set programme_lv2_label= 'Capacities - International co-operation' where programme_lv2_code = 'FP7-INCO';
update xgrdset_eufp set programme_lv2_label= 'EURATOM' where programme_lv2_code = 'FP7-EURATOM-FISSION';
update xgrdset_eufp set programme_lv2_label= 'EURATOM' where programme_lv2_code = 'FP7-EURATOM-FUSION';



-- H2020 

update xgrdset_eufp set programme_lv2_code = 'H2020-CrossProgramme' where programme_lv2_code = 'H2020-EU.0';
update xgrdset_eufp set programme_lv2_code = 'H2020-ERC' where programme_lv2_code = 'H2020-EU.1.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FET' where programme_lv2_code = 'H2020-EU.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FET' where programme_lv2_code = 'H2020-EU.1.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FET' where programme_lv2_code = 'H2020-EU.1.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FET' where programme_lv2_code = 'H2020-EU.1.2.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-MSCA' where programme_lv2_code = 'H2020-EU.1.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-MSCA' where programme_lv2_code = 'H2020-EU.1.3.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-MSCA' where programme_lv2_code = 'H2020-EU.1.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-MSCA' where programme_lv2_code = 'H2020-EU.1.3.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-MSCA' where programme_lv2_code = 'H2020-EU.1.3.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-INFRA' where programme_lv2_code = 'H2020-EU.1.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-INFRA' where programme_lv2_code = 'H2020-EU.1.4.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CrossProgramme' where programme_lv2_code = 'H2020-EU.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CrossProgramme' where programme_lv2_code = 'H2020-EU.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ICT' where programme_lv2_code = 'H2020-EU.2.1.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ICT' where programme_lv2_code = 'H2020-EU.2.1.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ICT' where programme_lv2_code = 'H2020-EU.2.1.1.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ICT' where programme_lv2_code = 'H2020-EU.2.1.1.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-NANO' where programme_lv2_code = 'H2020-EU.2.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-NANO' where programme_lv2_code = 'H2020-EU.2.1.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-NANO' where programme_lv2_code = 'H2020-EU.2.1.2.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMat' where programme_lv2_code = 'H2020-EU.2.1.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMat' where programme_lv2_code = 'H2020-EU.2.1.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMat' where programme_lv2_code = 'H2020-EU.2.1.3.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMat' where programme_lv2_code = 'H2020-EU.2.1.3.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMat' where programme_lv2_code = 'H2020-EU.2.1.3.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-BIOTECH' where programme_lv2_code = 'H2020-EU.2.1.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMan' where programme_lv2_code = 'H2020-EU.2.1.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMan' where programme_lv2_code = 'H2020-EU.2.1.5.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-AdvMan' where programme_lv2_code = 'H2020-EU.2.1.5.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SPACE' where programme_lv2_code = 'H2020-EU.2.1.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SPACE' where programme_lv2_code = 'H2020-EU.2.1.6.1.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SPACE' where programme_lv2_code = 'H2020-EU.2.1.6.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SPACE' where programme_lv2_code = 'H2020-EU.2.1.6.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-RiskFIN' where programme_lv2_code = 'H2020-EU.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-RiskFIN' where programme_lv2_code = 'H2020-EU.2.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SME' where programme_lv2_code = 'H2020-EU.2.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SME' where programme_lv2_code = 'H2020-EU.2.3.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SME' where programme_lv2_code = 'H2020-EU.2.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SME' where programme_lv2_code = 'H2020-EU.2.3.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SME' where programme_lv2_code = 'H2020-EU.2.3.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SME' where programme_lv2_code = 'H2020-EU.2.3.2.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CrossProgramme' where programme_lv2_code = 'H2020-EU.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.4.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.4.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.5.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.5.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.6.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-HEALTH' where programme_lv2_code = 'H2020-EU.3.1.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.1.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.3.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.4.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.5.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.5.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-FOOD' where programme_lv2_code = 'H2020-EU.3.2.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.1.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.2.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.2.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.3.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.3.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.8.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.8.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-ENERGY' where programme_lv2_code = 'H2020-EU.3.3.8.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.10.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.8.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.5.9.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.6.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.8.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.8.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.8.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-TRANSPORT' where programme_lv2_code = 'H2020-EU.3.4.8.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.2.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-CLIMA' where programme_lv2_code = 'H2020-EU.3.5.4.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.1.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.1.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.2.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.3.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SOCIETY' where programme_lv2_code = 'H2020-EU.3.6.3.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.2.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.7.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SECURITY' where programme_lv2_code = 'H2020-EU.3.7.8.';
update xgrdset_eufp set programme_lv2_code = 'H2020-WIDENING' where programme_lv2_code = 'H2020-EU.4.';
update xgrdset_eufp set programme_lv2_code = 'H2020-WIDENING' where programme_lv2_code = 'H2020-EU.4.a.';
update xgrdset_eufp set programme_lv2_code = 'H2020-WIDENING' where programme_lv2_code = 'H2020-EU.4.b.';
update xgrdset_eufp set programme_lv2_code = 'H2020-WIDENING' where programme_lv2_code = 'H2020-EU.4.c.';
update xgrdset_eufp set programme_lv2_code = 'H2020-WIDENING' where programme_lv2_code = 'H2020-EU.4.e.';
update xgrdset_eufp set programme_lv2_code = 'H2020-WIDENING' where programme_lv2_code = 'H2020-EU.4.f.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.a.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.b.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.c.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.d.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.e.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.f.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.g.';
update xgrdset_eufp set programme_lv2_code = 'H2020-SWFSOCIETY' where programme_lv2_code = 'H2020-EU.5.h.';
update xgrdset_eufp set programme_lv2_code = 'H2020-EURATOM' where programme_lv2_code = 'H2020-Euratom';
update xgrdset_eufp set programme_lv2_code = 'H2020-EURATOM' where programme_lv2_code = 'H2020-Euratom-1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-EURATOM' where programme_lv2_code = 'H2020-Euratom-1.1.';
update xgrdset_eufp set programme_lv2_code = 'H2020-EURATOM' where programme_lv2_code = 'H2020-Euratom-1.3.';
update xgrdset_eufp set programme_lv2_code = 'H2020-EURATOM' where programme_lv2_code = 'H2020-Euratom-1.9.';



-- ADD EIC 


with tx1 
as 
(
select 
distinct 
cast('EUFP_' || trim(id) as text) as xid 
from 
cordis_h2020projects_xlsx_project
where topics in 
('EIC-SMEInst-2018-2020', 'H2020-EIC-SMEInst-2020-4', 'FETOPEN-01-2018-2019-2020', 'FETOPEN-02-2018', 'FETOPEN-03-2018-2019-2020', 'FETPROACT-EIC-05-2019', 'FETPROACT-EIC-06-2019', 
'FETPROACT-EIC-07-2020', 'FETPROACT-EIC-08-2020', 'EIC-FTI-2018-2020')
)
update xgrdset_eufp
set programme_lv2_code ='H2020-EIC-Pilot'
where 
grant_id in (select xid from tx1)
;


-- ADD LABELS 

update xgrdset_eufp set programme_lv2_label = 'H2020-CrossProgramme' where programme_lv2_code = 'H2020-CrossProgramme';
update xgrdset_eufp set programme_lv2_label = 'Excellent Science - European Research Council (ERC)' where programme_lv2_code = 'H2020-ERC';
update xgrdset_eufp set programme_lv2_label = 'Excellent Science - Future and Emerging Technologies (FET)' where programme_lv2_code = 'H2020-FET';
update xgrdset_eufp set programme_lv2_label = 'Excellent Science - Marie Skłodowska-Curie Actions' where programme_lv2_code = 'H2020-MSCA';
update xgrdset_eufp set programme_lv2_label = 'Excellent Science - Research Infrastructures' where programme_lv2_code = 'H2020-INFRA';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Leadership in enabling and industrial technologies - Information and Communication Technologies (ICT)' where programme_lv2_code = 'H2020-ICT';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Leadership in enabling and industrial technologies – Nanotechnologies' where programme_lv2_code = 'H2020-NANO';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Leadership in enabling and industrial technologies - Advanced materials' where programme_lv2_code = 'H2020-AdvMat';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Leadership in enabling and industrial technologies – Biotechnology' where programme_lv2_code = 'H2020-BIOTECH';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Leadership in enabling and industrial technologies - Advanced manufacturing and processing' where programme_lv2_code = 'H2020-AdvMan';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Leadership in enabling and industrial technologies – Space' where programme_lv2_code = 'H2020-SPACE';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Access to risk finance' where programme_lv2_code = 'H2020-RiskFIN';
update xgrdset_eufp set programme_lv2_label = 'Industrial Leadership - Innovation In SMEs' where programme_lv2_code = 'H2020-SME';
update xgrdset_eufp set programme_lv2_label = 'Pilot European Innovation Council' where programme_lv2_code = 'H2020-EIC-Pilot';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Health, demographic change and well-being' where programme_lv2_code = 'H2020-HEALTH';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Food security, sustainable agriculture and forestry, marine, maritime and inland water research, and the bioeconomy' where programme_lv2_code = 'H2020-FOOD';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Secure, clean and efficient energy' where programme_lv2_code = 'H2020-ENERGY';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Smart, Green And Integrated Transport' where programme_lv2_code = 'H2020-TRANSPORT';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Climate action, Environment, Resource Efficiency and Raw Materials' where programme_lv2_code = 'H2020-CLIMA';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Europe In A Changing World - Inclusive, Innovative And Reflective Societies' where programme_lv2_code = 'H2020-SOCIETY';
update xgrdset_eufp set programme_lv2_label = 'Societal Challenges - Secure societies - Protecting freedom and security of Europe and its citizens' where programme_lv2_code = 'H2020-SECURITY';
update xgrdset_eufp set programme_lv2_label = 'Spreading Excellence and Widening Participation' where programme_lv2_code = 'H2020-WIDENING';
update xgrdset_eufp set programme_lv2_label = 'Science with and for Society' where programme_lv2_code = 'H2020-SWFSOCIETY';
update xgrdset_eufp set programme_lv2_label = 'H2020-EURATOM' where programme_lv2_code = 'H2020-EURATOM';




-- ADD LABELS FOR OTHER FPs.  FP1 to FP6 




update xgrdset_eufp set programme_lv2_label = 'Agriculture' where programme_lv2_code = 'FP1-AGRIRES 3C';
update xgrdset_eufp set programme_lv2_label = 'Biotechnology' where programme_lv2_code = 'FP1-BAP';
update xgrdset_eufp set programme_lv2_label = 'basic technological research and the applications of new technologies' where programme_lv2_code = 'FP1-BRITE';
update xgrdset_eufp set programme_lv2_label = 'Climatology and natural hazards' where programme_lv2_code = 'FP1-CLIMAT 3C';
update xgrdset_eufp set programme_lv2_label = 'Euratom - Nuclear fission- decommissioning of nuclear installations' where programme_lv2_code = 'FP1-DECOM 2C';
update xgrdset_eufp set programme_lv2_label = 'Non-Nuclear Energy' where programme_lv2_code = 'FP1-ENNONUC 3C';
update xgrdset_eufp set programme_lv2_label = 'Protection of the environment ' where programme_lv2_code = 'FP1-ENVPROT 4C';
update xgrdset_eufp set programme_lv2_label = 'Information technologies' where programme_lv2_code = 'FP1-ESPRIT 1';
update xgrdset_eufp set programme_lv2_label = 'Raw and Advanced materials' where programme_lv2_code = 'FP1-EURAM';
update xgrdset_eufp set programme_lv2_label = 'EURATOM - radiation protection' where programme_lv2_code = 'FP1-RADPROT 6C';
update xgrdset_eufp set programme_lv2_label = 'EURATOM- radioactive waste' where programme_lv2_code = 'FP1-RADWASTOM 3C';
update xgrdset_eufp set programme_lv2_label = 'Raw and Advanced materials' where programme_lv2_code = 'FP1-RAWMAT 3C';
update xgrdset_eufp set programme_lv2_label = 'Stimulating European scientific and technical cooperation and interchange' where programme_lv2_code = 'FP1-STIMULATION 1C';
update xgrdset_eufp set programme_lv2_label = 'Major Technological Hazards' where programme_lv2_code = 'FP1-TECHHAZ C';
update xgrdset_eufp set programme_lv2_label = 'Aeronautics research' where programme_lv2_code = 'FP2-AERO 0C';
update xgrdset_eufp set programme_lv2_label = 'ICT - Health Care' where programme_lv2_code = 'FP2-AIM 1';
update xgrdset_eufp set programme_lv2_label = 'Metrology and Chemical analysis - Community Bureau of Reference(BCR)' where programme_lv2_code = 'FP2-BCR 4';
update xgrdset_eufp set programme_lv2_label = 'Biotechnology' where programme_lv2_code = 'FP2-BRIDGE';
update xgrdset_eufp set programme_lv2_label = 'Industrial and Materials Technologies' where programme_lv2_code = 'FP2-BRITE/EURAM 1';
update xgrdset_eufp set programme_lv2_label = 'Competitiveness of Agriculture and Management of Agricultural Resources' where programme_lv2_code = 'FP2-CAMAR';
update xgrdset_eufp set programme_lv2_label = 'EURATOM- Decommissioning of Nuclear Installations' where programme_lv2_code = 'FP2-DECOM 3C';
update xgrdset_eufp set programme_lv2_label = 'Learning Technologies' where programme_lv2_code = 'FP2-DELTA 1';
update xgrdset_eufp set programme_lv2_label = 'Statistical Expert Systems' where programme_lv2_code = 'FP2-DOSES';
update xgrdset_eufp set programme_lv2_label = 'Road Transport Informatics and Telecommunications ' where programme_lv2_code = 'FP2-DRIVE 1';
update xgrdset_eufp set programme_lv2_label = 'Biotechnology-based agro-industrial Research and Technological Development' where programme_lv2_code = 'FP2-ECLAIR';
update xgrdset_eufp set programme_lv2_label = 'Environment' where programme_lv2_code = 'FP2-EPOCH';
update xgrdset_eufp set programme_lv2_label = 'Information technologies' where programme_lv2_code = 'FP2-ESPRIT 2';
update xgrdset_eufp set programme_lv2_label = 'Transport' where programme_lv2_code = 'FP2-EURET';
update xgrdset_eufp set programme_lv2_label = 'Fisheries' where programme_lv2_code = 'FP2-FAR';
update xgrdset_eufp set programme_lv2_label = 'Strategic Analysis, Forecasting and Evaluation' where programme_lv2_code = 'FP2-FAST 3';
update xgrdset_eufp set programme_lv2_label = 'Food Science and Technology' where programme_lv2_code = 'FP2-FLAIR';
update xgrdset_eufp set programme_lv2_label = 'Raw materials and recycling - Renewable raw materials: Forestry and wood products ' where programme_lv2_code = 'FP2-FOREST';
update xgrdset_eufp set programme_lv2_label = 'EURATOM - controlled thermonuclear fusion' where programme_lv2_code = 'FP2-FUSION 10C';
update xgrdset_eufp set programme_lv2_label = 'Human Genome Analysis' where programme_lv2_code = 'FP2-HUMGEN C';
update xgrdset_eufp set programme_lv2_label = 'Non-Nuclear Energies and Rational Use of Energy' where programme_lv2_code = 'FP2-JOULE 1';
update xgrdset_eufp set programme_lv2_label = 'Marine Science and Technology' where programme_lv2_code = 'FP2-MAST 1';
update xgrdset_eufp set programme_lv2_label = 'Raw materials and recycling' where programme_lv2_code = 'FP2-MATREC C';
update xgrdset_eufp set programme_lv2_label = 'Medical and Health Research' where programme_lv2_code = 'FP2-MHR 4C';

update xgrdset_eufp set programme_lv2_label = 'Telecommunication Technologies - Definition Phase' where programme_lv2_code = 'FP2-RACE 1';
update xgrdset_eufp set programme_lv2_label = 'EURATOM - Radiation Protection' where programme_lv2_code = 'FP2-RADPROT 7C';
update xgrdset_eufp set programme_lv2_label = 'EURATOM - Radioactive Waste' where programme_lv2_code = 'FP2-RADWASTOM 4C';
update xgrdset_eufp set programme_lv2_label = 'Raw materials and Recycling - Recycling of Waste' where programme_lv2_code = 'FP2-REWARD';
update xgrdset_eufp set programme_lv2_label = 'International Cooperation and Interchange' where programme_lv2_code = 'FP2-SCIENCE';
update xgrdset_eufp set programme_lv2_label = 'Access to Large-Scale Scientific Facilities of European interest' where programme_lv2_code = 'FP2-SCIFAC C';
update xgrdset_eufp set programme_lv2_label = 'Economic Science' where programme_lv2_code = 'FP2-SPES';
update xgrdset_eufp set programme_lv2_label = 'Science and Technology for Development' where programme_lv2_code = 'FP2-STD 2';
update xgrdset_eufp set programme_lv2_label = 'Environment' where programme_lv2_code = 'FP2-STEP';
update xgrdset_eufp set programme_lv2_label = 'EURATOM - Remote Handling in Nuclear Hazardous and Disordered Environments' where programme_lv2_code = 'FP2-TELEMAN';
update xgrdset_eufp set programme_lv2_label = 'Aeronautics research' where programme_lv2_code = 'FP3-AERO 1C';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Health care ' where programme_lv2_code = 'FP3-AIM 2';
update xgrdset_eufp set programme_lv2_label = 'Agriculture and Agro-industry' where programme_lv2_code = 'FP3-AIR';
update xgrdset_eufp set programme_lv2_label = 'Biomedecine and Health ' where programme_lv2_code = 'FP3-BIOMED 1';
update xgrdset_eufp set programme_lv2_label = 'Biotechnology' where programme_lv2_code = 'FP3-BIOTECH 1';
update xgrdset_eufp set programme_lv2_label = 'Industrial and Materials Technologies' where programme_lv2_code = 'FP3-BRITE/EURAM 2';
update xgrdset_eufp set programme_lv2_label = 'Industrial and Materials Technologies' where programme_lv2_code = 'FP3-CRAFT';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Flexible and distance learning' where programme_lv2_code = 'FP3-DELTA 2';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Transport' where programme_lv2_code = 'FP3-DRIVE 2';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Transeuropean Networks' where programme_lv2_code = 'FP3-ENS';
update xgrdset_eufp set programme_lv2_label = 'Assessment of environmental quality and monitoring' where programme_lv2_code = 'FP3-ENV 1C';
update xgrdset_eufp set programme_lv2_label = 'Information technologies' where programme_lv2_code = 'FP3-ESPRIT 3';
update xgrdset_eufp set programme_lv2_label = 'Information technologies - Accompanying measures' where programme_lv2_code = 'FP3-ESSI 1';
update xgrdset_eufp set programme_lv2_label = 'Human Capital and Mobility' where programme_lv2_code = 'FP3-HCM';
update xgrdset_eufp set programme_lv2_label = 'Non-Nuclear Energy' where programme_lv2_code = 'FP3-JOULE 2';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Libraries' where programme_lv2_code = 'FP3-LIBRARIES';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Linguistic Research and Engineering' where programme_lv2_code = 'FP3-LRE';
update xgrdset_eufp set programme_lv2_label = 'Marine Science and Technology' where programme_lv2_code = 'FP3-MAST 2';
update xgrdset_eufp set programme_lv2_label = 'Measurement and Testing' where programme_lv2_code = 'FP3-MAT';
update xgrdset_eufp set programme_lv2_label = 'EURATOM- Nuclear Fission' where programme_lv2_code = 'FP3-NFS 1';
update xgrdset_eufp set programme_lv2_label = 'Telematic Systems - Rural Areas' where programme_lv2_code = 'FP3-ORA';
update xgrdset_eufp set programme_lv2_label = 'Communication Technologies' where programme_lv2_code = 'FP3-RACE 2';
update xgrdset_eufp set programme_lv2_label = 'Renewable Energies' where programme_lv2_code = 'FP3-RENA';
update xgrdset_eufp set programme_lv2_label = 'Life Sciences and Technologies for developing countries' where programme_lv2_code = 'FP3-STD 3';
update xgrdset_eufp set programme_lv2_label = 'Telematics Applications - Exploration for FP4 ' where programme_lv2_code = 'FP3-TELMATPREP C';
update xgrdset_eufp set programme_lv2_label = 'Advanced Communications Technologies and Services' where programme_lv2_code = 'FP4-ACTS';
update xgrdset_eufp set programme_lv2_label = 'Biomedicine and Health' where programme_lv2_code = 'FP4-BIOMED-2';
update xgrdset_eufp set programme_lv2_label = 'Biotechnology' where programme_lv2_code = 'FP4-BIOTECH 2';
update xgrdset_eufp set programme_lv2_label = 'Industrial and Materials Technologies' where programme_lv2_code = 'FP4-BRITE/EURAM 3';
update xgrdset_eufp set programme_lv2_label = 'Environment and Climate' where programme_lv2_code = 'FP4-ENV 2C';
update xgrdset_eufp set programme_lv2_label = 'Information Technologies' where programme_lv2_code = 'FP4-ESPRIT 4';
update xgrdset_eufp set programme_lv2_label = 'Software Best Practice Initiative' where programme_lv2_code = 'FP4-ESSI 2';
update xgrdset_eufp set programme_lv2_label = 'Agriculture and Fisheries' where programme_lv2_code = 'FP4-FAIR';
update xgrdset_eufp set programme_lv2_label = 'International Cooperation' where programme_lv2_code = 'FP4-INCO';
update xgrdset_eufp set programme_lv2_label = 'Dissemination and Exploitation of the Results' where programme_lv2_code = 'FP4-INNOVATION';
update xgrdset_eufp set programme_lv2_label = 'Marine science and Technology' where programme_lv2_code = 'FP4-MAST 3';
update xgrdset_eufp set programme_lv2_label = 'Non-Nuclear Energy - R&D ' where programme_lv2_code = 'FP4-NNE-JOULE C';
update xgrdset_eufp set programme_lv2_label = 'Non-Nuclear Energy - Demonstration' where programme_lv2_code = 'FP4-NNE-THERMIE C';
update xgrdset_eufp set programme_lv2_label = 'Standards, Measurements and Testing' where programme_lv2_code = 'FP4-SMT';
update xgrdset_eufp set programme_lv2_label = 'Telematics for Knowledge' where programme_lv2_code = 'FP4-TELEMATICS 2C';
update xgrdset_eufp set programme_lv2_label = 'Training and Mobility of Researchers' where programme_lv2_code = 'FP4-TMR';
update xgrdset_eufp set programme_lv2_label = 'Transport' where programme_lv2_code = 'FP4-TRANSPORT';
update xgrdset_eufp set programme_lv2_label = 'Targeted Socio-Economic Research' where programme_lv2_code = 'FP4-TSER';
update xgrdset_eufp set programme_lv2_label = 'EURATOM - Nuclear Energy' where programme_lv2_code = 'FP5-EAECTP C';
update xgrdset_eufp set programme_lv2_label = 'Energy, Environment and Sustainable Development' where programme_lv2_code = 'FP5-EESD';
update xgrdset_eufp set programme_lv2_label = 'Competitive and Sustainable Growth' where programme_lv2_code = 'FP5-GROWTH';
update xgrdset_eufp set programme_lv2_label = 'Human Research Potential ' where programme_lv2_code = 'FP5-HUMAN POTENTIAL';
update xgrdset_eufp set programme_lv2_label = 'International Cooperation' where programme_lv2_code = 'FP5-INCO 2';
update xgrdset_eufp set programme_lv2_label = 'Innovation and SME' where programme_lv2_code = 'FP5-INNOVATION-SME';
update xgrdset_eufp set programme_lv2_label = 'Information Society Technologies' where programme_lv2_code = 'FP5-IST';
update xgrdset_eufp set programme_lv2_label = 'Joint Research Centre ' where programme_lv2_code = 'FP5-JRC';
update xgrdset_eufp set programme_lv2_label = 'Quality of life and management of living resources' where programme_lv2_code = 'FP5-LIFE QUALITY';
update xgrdset_eufp set programme_lv2_label = 'Aeronautics and Space' where programme_lv2_code = 'FP6-AEROSPACE';
update xgrdset_eufp set programme_lv2_label = 'Citizens and Governance' where programme_lv2_code = 'FP6-CITIZENS';
update xgrdset_eufp set programme_lv2_label = 'Support for the coordination of activities' where programme_lv2_code = 'FP6-COORDINATION';
update xgrdset_eufp set programme_lv2_label = 'EURATOM' where programme_lv2_code = 'FP6-EURATOM';
update xgrdset_eufp set programme_lv2_label = 'Food Quality and Safety' where programme_lv2_code = 'FP6-FOOD';
update xgrdset_eufp set programme_lv2_label = 'International cooperation' where programme_lv2_code = 'FP6-INCO';
update xgrdset_eufp set programme_lv2_label = 'Research infrastructures' where programme_lv2_code = 'FP6-INFRASTRUCTURES';
update xgrdset_eufp set programme_lv2_label = 'innovation - Structuring the European Research Area' where programme_lv2_code = 'FP6-INNOVATION';
update xgrdset_eufp set programme_lv2_label = 'Information Society Technologies' where programme_lv2_code = 'FP6-IST';
update xgrdset_eufp set programme_lv2_label = 'Joint Research Centre' where programme_lv2_code = 'FP6-JRC';
update xgrdset_eufp set programme_lv2_label = 'Life sciences, genomics and biotechnology for health' where programme_lv2_code = 'FP6-LIFESCIHEALTH';
update xgrdset_eufp set programme_lv2_label = 'Human resources and Mobility' where programme_lv2_code = 'FP6-MOBILITY';
update xgrdset_eufp set programme_lv2_label = 'Nanotechnologies and nanosciences' where programme_lv2_code = 'FP6-NMP';
update xgrdset_eufp set programme_lv2_label = 'Policy support' where programme_lv2_code = 'FP6-POLICIES';
update xgrdset_eufp set programme_lv2_label = 'Small and Medium Entreprises (SME)' where programme_lv2_code = 'FP6-SME';
update xgrdset_eufp set programme_lv2_label = 'Science and society' where programme_lv2_code = 'FP6-SOCIETY';
update xgrdset_eufp set programme_lv2_label = 'coherent development of policies' where programme_lv2_code = 'FP6-SUPPORT';
update xgrdset_eufp set programme_lv2_label = 'Sustainable Development, Global Change and Ecosystems' where programme_lv2_code = 'FP6-SUSTDEV';



update xgrdset_eufp set programme_lv2_label = 'EURATOM' where programme_lv2_code = 'FP6-EURATOM-NUCHORIZ';
update xgrdset_eufp set programme_lv2_label = 'EURATOM' where programme_lv2_code = 'FP6-EURATOM-NUCTECH';
update xgrdset_eufp set programme_lv2_label = 'EURATOM' where programme_lv2_code = 'FP6-EURATOM-NUWASTE';
update xgrdset_eufp set programme_lv2_label = 'EURATOM' where programme_lv2_code = 'FP6-EURATOM-RADPROT';
update xgrdset_eufp set programme_lv2_label = 'EURATOM-Fission' where programme_lv2_code = 'FP7-EURATOM-FISSION';
update xgrdset_eufp set programme_lv2_label = 'EURATOM-Fusion' where programme_lv2_code = 'FP7-EURATOM-FUSION';




update xgrdset_eufp set programme_lv2_code = 'HE-EURATOM' where programme_lv2_code = 'EURATOM.1';
update xgrdset_eufp set programme_lv2_code = 'HE-EURATOM' where programme_lv2_code = 'EURATOM.1.1';
update xgrdset_eufp set programme_lv2_code = 'HE-EURATOM' where programme_lv2_code = 'EURATOM.1.2';
update xgrdset_eufp set programme_lv2_code = 'HE-EURATOM' where programme_lv2_code = 'EURATOM.1.3';
update xgrdset_eufp set programme_lv2_code = 'HE-ERC' where programme_lv2_code = 'HORIZON.1.1';
update xgrdset_eufp set programme_lv2_code = 'HE-MSCA' where programme_lv2_code = 'HORIZON.1.2';
update xgrdset_eufp set programme_lv2_code = 'HE-INFRA' where programme_lv2_code = 'HORIZON.1.3.1';
update xgrdset_eufp set programme_lv2_code = 'HE-INFRA' where programme_lv2_code = 'HORIZON.1.3.2';
update xgrdset_eufp set programme_lv2_code = 'HE-INFRA' where programme_lv2_code = 'HORIZON.1.3.3';
update xgrdset_eufp set programme_lv2_code = 'HE-INFRA' where programme_lv2_code = 'HORIZON.1.3.4';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1.1';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1.2';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1.3';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1.4';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1.5';
update xgrdset_eufp set programme_lv2_code = 'HE-HEALTH' where programme_lv2_code = 'HORIZON.2.1.6';
update xgrdset_eufp set programme_lv2_code = 'HE-CULTURE' where programme_lv2_code = 'HORIZON.2.2';
update xgrdset_eufp set programme_lv2_code = 'HE-CULTURE' where programme_lv2_code = 'HORIZON.2.2.1';
update xgrdset_eufp set programme_lv2_code = 'HE-CULTURE' where programme_lv2_code = 'HORIZON.2.2.2';
update xgrdset_eufp set programme_lv2_code = 'HE-CULTURE' where programme_lv2_code = 'HORIZON.2.2.3';
update xgrdset_eufp set programme_lv2_code = 'HE-SECURITY' where programme_lv2_code = 'HORIZON.2.3';
update xgrdset_eufp set programme_lv2_code = 'HE-SECURITY' where programme_lv2_code = 'HORIZON.2.3.2';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4.2';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4.3';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4.4';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4.5';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4.6';
update xgrdset_eufp set programme_lv2_code = 'HE-DIGITAL' where programme_lv2_code = 'HORIZON.2.4.7';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5.1';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5.3';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5.4';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5.5';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5.6';
update xgrdset_eufp set programme_lv2_code = 'HE-CLIMATE' where programme_lv2_code = 'HORIZON.2.5.8';
update xgrdset_eufp set programme_lv2_code = 'HE-BIOECONOMY' where programme_lv2_code = 'HORIZON.2.6';
update xgrdset_eufp set programme_lv2_code = 'HE-BIOECONOMY' where programme_lv2_code = 'HORIZON.2.6.1';
update xgrdset_eufp set programme_lv2_code = 'HE-BIOECONOMY' where programme_lv2_code = 'HORIZON.2.6.2';
update xgrdset_eufp set programme_lv2_code = 'HE-BIOECONOMY' where programme_lv2_code = 'HORIZON.2.6.6';
update xgrdset_eufp set programme_lv2_code = 'HE-BIOECONOMY' where programme_lv2_code = 'HORIZON.2.6.7';
update xgrdset_eufp set programme_lv2_code = 'HE-EIC' where programme_lv2_code = 'HORIZON.3.1';
update xgrdset_eufp set programme_lv2_code = 'HE-EIC' where programme_lv2_code = 'HORIZON.3.1.3';
update xgrdset_eufp set programme_lv2_code = 'HE-INNOV' where programme_lv2_code = 'HORIZON.3.2';
update xgrdset_eufp set programme_lv2_code = 'HE-INNOV' where programme_lv2_code = 'HORIZON.3.2.3';
update xgrdset_eufp set programme_lv2_code = 'HE-INNOV' where programme_lv2_code = 'HORIZON.3.3';
update xgrdset_eufp set programme_lv2_code = 'HE-WIDEN' where programme_lv2_code = 'HORIZON.4.1';
update xgrdset_eufp set programme_lv2_code = 'HE-WIDEN' where programme_lv2_code = 'HORIZON.4.1.1';
update xgrdset_eufp set programme_lv2_code = 'HE-WIDEN' where programme_lv2_code = 'HORIZON.4.1.4';
update xgrdset_eufp set programme_lv2_code = 'HE-WIDEN' where programme_lv2_code = 'HORIZON.4.1.6';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.10';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.13';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.14';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.3';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.4';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.7';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.8';
update xgrdset_eufp set programme_lv2_code = 'HE-REFORM' where programme_lv2_code = 'HORIZON.4.2.9';





update xgrdset_eufp set programme_lv2_label = 'European Research Council' where programme_lv2_code =  'HE-ERC';
update xgrdset_eufp set programme_lv2_label = 'Marie Skłodowska-Curie'  where programme_lv2_code = 'HE-MSCA';
update xgrdset_eufp set programme_lv2_label = 'Research Infrastructures'  where programme_lv2_code = 'HE-INFRA';
update xgrdset_eufp set programme_lv2_label = 'Health'  where programme_lv2_code = 'HE-HEALTH';
update xgrdset_eufp set programme_lv2_label = 'Culture, Creativity & Inclusive Society'  where programme_lv2_code = 'HE-CULTURE';
update xgrdset_eufp set programme_lv2_label = 'Civil Security for Society'  where programme_lv2_code = 'HE-SECURITY';
update xgrdset_eufp set programme_lv2_label = 'Digital, Industry & Space'  where programme_lv2_code = 'HE-DIGITAL';
update xgrdset_eufp set programme_lv2_label = 'Climate, Energy & Mobility'  where programme_lv2_code = 'HE-CLIMATE';
update xgrdset_eufp set programme_lv2_label = 'Food, Bioeconomy, natural Resources, Agriculture & Environment'  where programme_lv2_code = 'HE-BIOECONOMY';
update xgrdset_eufp set programme_lv2_label = 'European Innovation Council'  where programme_lv2_code = 'HE-EIC';
update xgrdset_eufp set programme_lv2_label = 'European Innovation Ecosystems'  where programme_lv2_code = 'HE-INNOV';
update xgrdset_eufp set programme_lv2_label = 'Widening participation & spreading excellence'  where programme_lv2_code = 'HE-WIDENING';
update xgrdset_eufp set programme_lv2_label = 'Reforming & Enhancing the European R&I system'  where programme_lv2_code = 'HE-REFORM';
update xgrdset_eufp set programme_lv2_label = 'EURATOM'  where programme_lv2_code = 'HE-EURATOM';


-- some corrections 
update xgrdset_eufp set programme_lv2_label= 'Biomedecine and Health' where programme_lv2_code = 'FP4-BIOMED 2';
update xgrdset_eufp set programme_lv2_code= 'HE-WIDENING' where programme_lv2_code = 'HE-WIDEN';
update xgrdset_eufp set programme_lv2_label = 'Widening participation & spreading excellence'  where programme_lv2_code = 'HE-WIDENING';
update xgrdset_eufp set programme_lv2_label = 'R&D strategic analysis, forecasting and evaluation'  where programme_lv2_code = 'FP2-MONITOR';


update xgrdset_eufp set programme_lv2_code = 'FP5-HUMAN POTENTIAL' where grant_id_original in ('HPMF-CT-2002-01886', 'HPMF-CT-2002-01907', 'HPMF-CT-2002-02141');
update xgrdset_eufp set programme_lv2_code = 'FP5-EESD' where grant_id_original in ('ENK6-CT-2002-50526');
update xgrdset_eufp set programme_lv2_code = 'FP5-LIFE QUALITY' where grant_id_original in ('QLG6-CT-2001-00028');
update xgrdset_eufp set programme_lv2_code = 'FP5-HUMAN POTENTIAL' where grant_id_original in ('HPCF-CT-2000-00036');

update xgrdset_eufp set programme_lv2_label= 'Energy, Environment and Sustainable Development' where programme_lv2_code =   'FP5-EESD';
update xgrdset_eufp set programme_lv2_label= 'Human Research Potential' where programme_lv2_code =   'FP5-HUMAN POTENTIAL';
update xgrdset_eufp set programme_lv2_label= 'Quality of life and management of living resources' where programme_lv2_code =  'FP5-LIFE QUALITY';







-- verify 

select 
programme_lv1_code
, programme_lv1_label
, count(*)
from 
xgrdset_eufp
group by programme_lv1_code
, programme_lv1_label
;


select 
programme_lv1_code
, programme_lv1_label
, programme_lv2_code
, programme_lv2_label
, count(*)
from 
xgrdset_eufp
--where programme_lv1_code = 'H2020'
group by programme_lv1_code
, programme_lv1_label
, programme_lv2_code
, programme_lv2_label
order by programme_lv1_code,  programme_lv2_code
;












 
