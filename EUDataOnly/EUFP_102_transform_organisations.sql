/*
transform : 
organisations - FP7, H2020, HE only
*/

drop table if exists xgrdset_organisations_eufp;

-- FP7
create table xgrdset_organisations_eufp
as 
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(organisation_id as text)            as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
, cast(activity_type as text)           as org_type
, cast(city as text)                  as org_city
, cast(nuts_code as text)              as org_nuts_code
, cast(geolocation as text)            as org_geo_location
, cast(organization_url as text)       as org_url
, cast(ec_contribution as text)         as org_ec_contribution
, cast(net_ec_contribution as text)    as org_net_ec_contribution
, cast(total_cost as text)              as org_total_cost
from 
cordis_fp7projects_organization
order by project_id, "role"
;

-- H2020
insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(organisation_id as text)            as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
, cast(activity_type as text)           as org_type
, cast(city as text)                  as org_city
, cast(nuts_code as text)              as org_nuts_code
, cast(geolocation as text)            as org_geo_location
, cast(organization_url as text)       as org_url
, cast(ec_contribution as text)         as org_ec_contribution
, cast(net_ec_contribution as text)    as org_net_ec_contribution
, cast(total_cost as text)              as org_total_cost
from 
cordis_h2020projects_organization
order by project_id, "role"
;

-- Horizon Europe
insert into xgrdset_organisations_eufp
select 
cast('EUFP_' || trim(project_id) as text)  as grant_id
, cast(organisation_id as text)            as org_id
, cast(name as text)               as org_name 
, cast(country as text)            as org_country 
, cast("role" as text)               as org_role 
, cast(activity_type as text)           as org_type
, cast(city as text)                  as org_city
, cast(nuts_code as text)              as org_nuts_code
, cast(geolocation as text)            as org_geo_location
, cast(organization_url as text)       as org_url
, cast(ec_contribution as text)         as org_ec_contribution
, cast(net_ec_contribution as text)    as org_net_ec_contribution
, cast(total_cost as text)              as org_total_cost
from 
cordis_HORIZONprojects_organization
order by project_id, "role"
;
