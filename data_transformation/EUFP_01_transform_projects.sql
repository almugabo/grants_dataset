

/*
consolidating the projects 

result: a single table called 

xx_coredata_eufp_projects


 */

drop table if exists xx_coredata_eufp_projects; 

create table xx_coredata_eufp_projects
as 
select 
'FP_' || cast(id as text)        as project_id
,'FP1'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from cordis_fp1projects
--limit 10
;


insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'FP2'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from cordis_fp2projects
--limit 10
;


insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'FP3'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call

from cordis_fp3projects
--limit 10
;

insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'FP4'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call


from cordis_fp4projects
--limit 10
;

insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'FP5'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from cordis_fp5projects
--limit 10
;

insert into xx_coredata_eufp_projects 
select 
'FP_' || cast(id as text)        as project_id
,'FP6'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from cordis_fp6projects
--limit 10
;

insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'FP7'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from 
cordis_fp7projects_xlsx_project
--limit 10
;



insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'H2020'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from 
cordis_h2020projects_xlsx_project
--limit 10
;




insert into xx_coredata_eufp_projects
select 
'FP_' || cast(id as text)        as project_id
,'HE'    as prog_fp
, cast('' as text)      as project_url
, cast(title as text)   as project_title
, cast(acronym as text) as project_title_short
, cast(start_date as text) as project_time_start
, cast(end_date as text) as project_time_end
, cast(ec_max_contribution as text) as  project_budget
,'EURO'                     as project_budget_currency 
, cast(objective as text) as  project_description 
, cast(status as text) as project_status 
, 'EU' as  project_fundorg 
, 'European Union Framework Programme' as project_fundorg_name
, cast(funding_scheme as text) as funding_scheme
, cast("call" as text ) as funding_call
from 
cordis_HORIZONprojects_xlsx_project
--limit 10
;





--- GLORIS PROJECT 
--fp_gloris_projects 

drop table if exists fp_gloris_projects;

create table fp_gloris_projects 
as 
SELECT 
project_id
, project_url
, project_title
, project_title_short
, project_time_start
, project_time_end
, project_budget
, project_budget_currency
, project_description
, project_status
, project_fundorg
, project_fundorg_name
FROM xx_coredata_eufp_projects
;







 






































 
