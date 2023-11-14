

/*
THIS IS TO CREATE Tthe final datasets which will be 
the basis of the consolidated dataset 

Open data on Funding and Results 
O-FUNDRES - Open data on FUNDing and RESults.

 */


--projects 




drop table if exists ofundres_eufp_projects;

create table ofundres_eufp_projects
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
FROM 
xx_coredata_eufp_projects
;


--organisations 

drop table if exists ofundres_eufp_organisations;

create table ofundres_eufp_organisations
as 
select 
distinct 
cast(project_id as text)    as project_id
, cast(org_id_pic as text)  as org_id
, cast(org_name  as text)   as org_name 
, cast(org_country  as text) as org_country 
, cast(org_role as text)     as org_role 
from 
xx_coredata_eufp_organisations
;


--researchers 


drop table if exists ofundres_eufp_researchers; 

create table ofundres_eufp_researchers
as 
select 
distinct 
* 
from 
xx_coredata_eufp_researchers
;


-- programmes 


drop table if exists ofundres_eufp_programmes;


create table ofundres_eufp_programmes
as
SELECT 
distinct
cast(project_id as text) as project_id
, cast('EU_' || prog_fp as text) as programme_lv1_code
, prog_fp 
, case  
	when prog_fp = 'FP1' then 'EU Framework Programme 1'  
	when prog_fp = 'FP2' then 'EU Framework Programme 2'	
	when prog_fp = 'FP3' then 'EU Framework Programme 3'
	when prog_fp = 'FP4' then 'EU Framework Programme 4'	
	when prog_fp = 'FP5' then 'EU Framework Programme 5'	
	when prog_fp = 'FP6' then 'EU Framework Programme 6'
	when prog_fp = 'FP7' then 'EU Framework Programme 7'	
	when prog_fp = 'H2020' then 'EU H2020 Programme'	
	when prog_fp = 'HE'   then 'EU Horizon Europe Programme'	
end as programme_lv1_label 
, programme_code as programme_lv2_code
, programme_label as programme_lv2_label
, funding_scheme  as programme_scheme
FROM 
xx_coredata_eufp_projects
;





