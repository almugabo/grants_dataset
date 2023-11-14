


/*organisations */



drop table if exists xx_coredata_nsf_organisations; 

create table xx_coredata_nsf_organisations
(project_id  text 
,org_id text
,org_name text
,org_country  text
,org_role     text
)
;


--NSF 
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2007_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2008_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2009_grant_institutions;

insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2010_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2011_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2012_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2013_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2014_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2015_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2016_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2017_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2018_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2019_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2020_grant_institutions;

insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2021_grant_institutions;
insert into xx_coredata_nsf_organisations select award_id as project_id ,ORG_UEI_NUM as org_id, Name as org_name, CountryName as org_country, 'NULL' as org_role FROM nsf_2022_grant_institutions;
