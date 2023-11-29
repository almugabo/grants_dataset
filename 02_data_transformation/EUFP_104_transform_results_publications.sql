


/*
-- we start with a simple schema 

- grant_funder 
- id_pair_grantpub_id 
- grant_id 
- pub_id_doi 
*/



drop table if exists xgrdset_results_publications_eufp;

create table xgrdset_results_publications_eufp
(
grant_funder            text,
record_grantpub_id      text, 
grant_id                text, 
pub_id_doi              text
)
;

insert into xgrdset_results_publications_eufp
select 
distinct  
'EUFP'           as grant_funder 
, record_id        as record_grantpub_id
, project_id     as grant_id 
, upper(qa_processed_doi) as pub_id_doi 
FROM cordis_publications_fp7  
where qa_processed_doi is not null 
;


insert into xgrdset_results_publications_eufp
select 
distinct 
'EUFP'           as grant_funder
, tx2.* 
from 
(
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications where doi is not null and doi != 'nan'
union 
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications_2 where doi is not null and doi != 'nan'
union 
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications_3 where doi is not null and doi != 'nan'
union 
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications_4 where doi is not null and doi != 'nan'
union 
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications_5 where doi is not null and doi != 'nan'
union 
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications_6 where doi is not null and doi != 'nan'
union 
SELECT id as record_id, projectid as grant_id,  upper(doi) as pub_id_doi FROM cordis_publications_h2020_projectPublications_7 where doi is not null and doi != 'nan'
) as tx2 
;

--select count(*) from xgrdset_results_publications_eufp;



-- some quality assurance operations 
-- more systematic quality checks should be performed 
update xgrdset_results_publications_eufp set pub_id_doi = trim(pub_id_doi);

update xgrdset_results_publications_eufp set pub_id_doi = trim(replace(pub_id_doi, 'HTTPS://DOI.ORG/', ''));
update xgrdset_results_publications_eufp set pub_id_doi = trim(replace(pub_id_doi, 'DOI.ORG/', ''));
update xgrdset_results_publications_eufp set pub_id_doi = trim(replace(pub_id_doi, 'HTTP://DX.', ''));


update xgrdset_results_publications_eufp set pub_id_doi = '10.1002/ETT.3070' where pub_id_doi = '0.1002/ETT.3070';
update xgrdset_results_publications_eufp set pub_id_doi = '10.1109/ISBI.2019.8759229' where pub_id_doi = '0.1109/ISBI.2019.8759229';
update xgrdset_results_publications_eufp set pub_id_doi = '10.1145/3340964.3340990' where pub_id_doi = '0.1145/3340964.3340990';


