/*
UKRI - researchers 
*/


drop table if exists xgrdset_researchers_ukri;

CREATE TABLE xgrdset_researchers_ukri
as 
select 
t1.grant_id                           as grant_id
--, t1.grant_id_original 
, replace (t2.href, 'http://internal-gtr-tomcat-alb-611010599.eu-west-2.elb.amazonaws.com:8080/gtr/api/persons/', '') as person_id 
, t2.rel    as person_role
--, t3.person_id
, t3.person_name_first as person_name_first
, t3.person_name_last  as person_name_last 
from 
xgrdset_grants_ukri as t1 
inner join gtr_grants_links as t2 on t1.grant_id_original = t2.id 
inner join gtr_persons      as t3 on t3.person_id = replace (t2.href, 'http://internal-gtr-tomcat-alb-611010599.eu-west-2.elb.amazonaws.com:8080/gtr/api/persons/', '')
;


 
