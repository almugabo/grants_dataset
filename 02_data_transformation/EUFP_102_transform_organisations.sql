
/*
transform : 
organisations
*/






drop table if exists xgrdset_organisations_eufp;


create table xgrdset_organisations_eufp
as 
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(id as text)                 as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp1organizations
order by project_id, "role"
-- limit 10 
;



insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(id as text)                 as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp2organizations
order by project_id, "role"
-- limit 10 
;

insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(id as text)                 as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp3organizations
order by project_id, "role"
-- limit 10 
;


insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(id as text)                 as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp4organizations
order by project_id, "role"
-- limit 10 
;

insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(id as text)                 as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp5organizations
order by project_id, "role"
-- limit 10 
;


insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(id as text)                 as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp6organizations
order by project_id, "role"
-- limit 10 
;

insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(organisation_id as text)            as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_fp7projects_xlsx_organization
order by project_id, "role"
-- limit 10 
;



insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(organisation_id as text)            as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_h2020projects_xlsx_organization
order by project_id, "role"
-- limit 10 
;

insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(organisation_id as text)            as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
from 
cordis_HORIZONprojects_xlsx_organization
order by project_id, "role"
-- limit 10 
;






