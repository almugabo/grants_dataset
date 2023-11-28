/*
NIH - org 
*/


drop table if exists xgrdset_researchers_nih; 



CREATE TABLE xgrdset_researchers_nih(
  grant_id TEXT,
  person_id,
  person_role,
  person_name_first TEXT,
  person_name_last TEXT
);





insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2007_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2008_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2009_project_investigators;

insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2010_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2011_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2012_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2013_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2014_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2015_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2016_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2017_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2018_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2019_project_investigators;

insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2020_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2021_project_investigators;
insert into xgrdset_researchers_nih select 'NIH_' || cast(application_id as text) as grant_id, applicant_id as person_id, applicant_role as person_role, applicant_name_first as person_name_first, applicant_name_last as person_name_last FROM nih_2022_project_investigators;







