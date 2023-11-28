/*
UKRI - organisations 
*/



drop table if exists xgrdset_organisations_ukri; 

create table xgrdset_organisations_ukri
as 
select 
distinct 
t1.grant_id          as grant_id 
, replace(t2.href, 'http://internal-gtr-tomcat-alb-611010599.eu-west-2.elb.amazonaws.com:8080/gtr/api/organisations/', '') as org_id
, t3.org_name  as org_name
, t3.address_main_county as org_country
, t2.rel as org_role
from 
xgrdset_grants_ukri as t1 
left join gtr_grants_links as t2 on t1.grant_id_original= t2.id 
left join gtr_organisations as t3 on t3.org_id = replace(t2.href, 'http://internal-gtr-tomcat-alb-611010599.eu-west-2.elb.amazonaws.com:8080/gtr/api/organisations/', '')
where t2.rel 
in ('LEAD_ORG', 'PARTICIPANT_ORG', 'COLLAB_ORG', 'FELLOW_ORG', 'PP_ORG')
;


