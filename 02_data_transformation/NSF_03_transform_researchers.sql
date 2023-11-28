


/*researchers */



drop table if exists xgrdset_researchers_nsf ; 


create table xgrdset_researchers_nsf
(grant_id  text, 
person_id  text, 
person_role  text,
person_name_first text,
person_name_last  text
)
;

--NSF 
 
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2007_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2008_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2009_grant_investigators;

insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2010_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2011_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2012_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2013_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2014_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2015_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2016_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2017_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2018_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2019_grant_investigators;

insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2020_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2021_grant_investigators;
insert into xgrdset_researchers_nsf select 'NSF_' || award_id as grant_id, NSF_ID as person_id, RoleCode as person_role, FirstName as person_name_first, LastName as person_name_last from nsf_2022_grant_investigators;


