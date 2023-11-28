
/*
GTR
*/



drop table if exists xgrdset_grants_ukri; 


create table xgrdset_grants_ukri
as 
select 
distinct 
t1.identifiers   as grant_id
, t1.id          as grant_id_original
, NULL           as grant_acronym 
, t1.title       as grant_title 
, t1.abstractText   as grant_abstract
, NULL as grant_start
, NULL as grant_end
, t1.status                      as grant_status
, NULL                           as grant_budget_currency 
, NULL                           as  grant_budget
, 'UKRI'                         as grant_funder
, 'UK Research and Innovation'   as grant_funder_name
, t1.leadFunder                  as programme_lv1_code
, NULL                           as programme_lv1_label
, NULL                           as programme_lv2_code
, NULL                           as programme_lv2_label
, t1.grantCategory              as  programme_scheme
from 
gtr_grants as t1 
;

--- add starting and end date and budget 


with tx1 
as 
(
select 
t1.grant_id_original as xid
, cast(date(t2."start" / 1000, 'unixepoch') as text) as xgrant_start
, cast(date(t2."end" / 1000, 'unixepoch') as text) as xgrant_end
, t3.valuePounds_currencyCode as xgrant_budget_currency 
, t3.valuePounds_amount       as xgrant_budget
from 
xgrdset_grants_ukri as t1 
left join gtr_funds_links as t2 on t1.grant_id_original = t2.href_project_fund
left join gtr_funds       as t3 on t2.id_fund = t3.id 
)
update 
xgrdset_grants_ukri
set 
grant_start = tx1.xgrant_start
, grant_end = tx1.xgrant_end
, grant_budget_currency = tx1.xgrant_budget_currency 
, grant_budget = tx1.xgrant_budget
from tx1 
where 
grant_id_original = tx1.xid
;





