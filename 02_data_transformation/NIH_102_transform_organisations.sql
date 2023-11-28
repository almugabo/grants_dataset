/*
NIH - org 
*/


drop table if exists xgrdset_organisations_nih; 


create table xgrdset_organisations_nih
(grant_id  text 
,org_id text
,org_name text
,org_country  text
,org_role     text
);



--NIH 
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2007_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2008_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2009_projects;


insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2010_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2011_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2012_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2013_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2014_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2015_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2016_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2017_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2018_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2019_projects;


insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2020_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2021_projects;
insert into xgrdset_organisations_nih select 'NIH_' || cast(APPLICATION_ID as text)  as grant_id, ORG_DUNS as org_id, ORG_NAME as org_name, ORG_COUNTRY as org_country,NULL as org_role from nih_2022_projects;




