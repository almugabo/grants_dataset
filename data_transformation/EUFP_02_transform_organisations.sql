
/*
transform : 
organisations
*/



drop table if exists xx_coredata_eufp_organisations;




create table xx_coredata_eufp_organisations
as 
select 
'FP_' || cast(project_id as text)        as project_id
, cast(id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast('' as text)    as org_geolocation
, cast('' as text)    as org_nuts_code
from cordis_fp1organizations
-- limit 10 
;

insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast('' as text)    as org_geolocation
, cast('' as text)    as org_nuts_code
from cordis_fp2organizations
-- limit 10 
;

insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast('' as text)    as org_geolocation
, cast('' as text)    as org_nuts_code
from cordis_fp3organizations
-- limit 10 
;


insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast('' as text)    as org_geolocation
, cast('' as text)    as org_nuts_code
from cordis_fp4organizations
-- limit 10 
;


insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast('' as text)    as org_geolocation
, cast('' as text)    as org_nuts_code
from cordis_fp5organizations
-- limit 10 
;


insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast('' as text)    as org_geolocation
, cast('' as text)    as org_nuts_code
from cordis_fp6organizations
-- limit 10 
;


-- FP7 to HE 

insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(organisation_id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast(geolocation  as text)    as org_geolocation
, cast(nuts_code as text)    as org_nuts_code
from 
cordis_fp7projects_organization
-- limit 10 
;

insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(organisation_id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast(geolocation  as text)    as org_geolocation
, cast(nuts_code as text)    as org_nuts_code
from 
cordis_h2020projects_organization
-- limit 10 
;

insert into xx_coredata_eufp_organisations
select 
'FP_' || cast(project_id as text)        as project_id
, cast(organisation_id as text)       as org_id_pic
, cast(vat_number as text)       as org_id_vat  
, cast(role as text) as org_role 
, cast(name as text) as org_name 
, cast(short_name as text) as org_name_short 
, cast(activity_type as text) as org_activity_type 
, cast(ec_contribution as text) as org_ec_contribution
, cast(country as text) as org_country 
, cast(street as text) as org_adress_street
, cast(city as text) as org_adress_city 
, cast(post_code as text) as org_adress_post_code
, cast(geolocation  as text)    as org_geolocation
, cast(nuts_code as text)    as org_nuts_code
from 
cordis_HORIZONprojects_organization
-- limit 10 
;


