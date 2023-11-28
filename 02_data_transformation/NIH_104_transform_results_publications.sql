


/*
-- we start with a simple schema 

- grant_funder 
- id_pair_grantpub_id 
- grant_id 
- pub_id_doi 
*/



drop table if exists xgrdset_results_publications_nih;

create table xgrdset_results_publications_nih
(
grant_funder            text,
record_grantpub_id      text, 
grant_id                text, 
pub_id_pubmed              text
)
;

insert into xgrdset_results_publications_nih
select 
distinct 
'NIH'         as grant_funder
, t2.core_project_num || '_' || t3.pub_id_pubmed as record_grantpub_id 
, t1.grant_id                                    as grant_id 
--, t2.core_project_num 
, t3.pub_id_pubmed                               as pub_id_pubmed 
from xgrdset_grants_nih as t1 
inner join xgrdset_grants_identifiers as t2 on t1.grant_id = t2.grant_id 
inner join nih_results_projpubs_link_all as t3 on t2.core_project_num  = t3.project_number 
--limit 10 
;








-------------------------------------------------
--- NIH 
-- the table above relies on a table with all the publications links 
-- that we create first 
------------------------------------------------------------


drop table if exists nih_results_projpubs_link_all;


create table nih_results_projpubs_link_all
as 
select 
distinct 
tx1.PROJECT_NUMBER
, tx1.PMID as pub_id_pubmed
from 
(
SELECT PMID, cast(PROJECT_NUMBER as bigint) as  project_number FROM nih_results_projpubs_link_1980
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1981
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1982
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1983
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1984
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1985
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1986
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1987
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1988
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1989
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1990
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1991
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1992
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1993
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1994
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1995
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1996
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1997
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1998
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_1999
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2000
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2001
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2002
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2003
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2004
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2005
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2006
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2007
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2008
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2009
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2010
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2011
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2012
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2013
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2014
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2015
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2016
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2017
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2018
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2019
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2020
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2021
union 
SELECT PMID, PROJECT_NUMBER FROM nih_results_projpubs_link_2022
) as tx1 
;









grant_funder            text,
     text, 
grant_id                text, 
pub_id_doi              text






















