

/*
THIS IS TO CREATE Tthe final datasets which will be 
the basis of the consolidated dataset 

Open data on Funding and Results 
O-FUNDRES - Open data on FUNDing and RESults.

 */





--projects 
drop table if exists ofundres_nsf_projects;
create table ofundres_nsf_projects as  SELECT distinct *  from xx_coredata_nsf_projects;


--organisations 

drop table if exists ofundres_nsf_organisations;
create table ofundres_nsf_organisations as  SELECT distinct *  from xx_coredata_nsf_organisations;

--researchers 
drop table if exists ofundres_nsf_researchers; 
create table ofundres_nsf_researchers as  SELECT distinct *  from xx_coredata_nsf_researchers;
;


-- programmes 
drop table if exists ofundres_nsf_programmes;
create table ofundres_nsf_programmes as SELECT distinct * from xx_coredata_nsf_programmes;
;





