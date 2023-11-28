


/*
-- we start with a simple schema 

- grant_funder 
- id_pair_grantpub_id 
- grant_id 
- pub_id_doi 
*/




drop table if exists xgrdset_results_publications_ukri;

create table xgrdset_results_publications_ukri
(
grant_funder            text,
record_grantpub_id      text, 
grant_id                text, 
pub_id_doi              text,
pub_id_pubmed           text,
pub_id_isbn             text
)
;



with tx1 
as 
(
SELECT 
'UKRI' as  grant_funder 
, t1.outcomeid  as record_grantpub_id
--, t1.id  as pub_id 
--, "type" as pub_type 
, upper(replace(t1.doi, 'http://dx.doi.org/', ''))  as pub_id_doi 
, t1.pubMedId                               as pub_id_pubmed  
, t1.isbn                                   as pub_id_isbn 
, replace(t2.href , 'http://internal-gtr-tomcat-alb-611010599.eu-west-2.elb.amazonaws.com:8080/gtr/api/projects/', '') as grant_id_original 
FROM 
gtr_results_publications as t1 
inner join gtr_results_publications_links as t2 on t1.id = t2.pub_id 
where 
t1.doi is not null 
or t1.pubMedId  is not null
or t1.isbn  is not null
--or issn  is not null
--limit 10 
)  
, tx2 
as 
(
select 
tx1.grant_funder 
, tx1.record_grantpub_id
, tq1.grant_id 
, tx1.pub_id_doi
, tx1.pub_id_pubmed 
, tx1.pub_id_isbn
from 
xgrdset_grants_ukri as tq1 
inner join tx1 on tq1.grant_id_original = tx1.grant_id_original 
)
insert into xgrdset_results_publications_ukri
select distinct * from tx2 
;




































