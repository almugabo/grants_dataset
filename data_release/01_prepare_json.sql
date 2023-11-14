

/*
data will be released as jsonl files
here we first create the json data 
*/





-- first create index on tables which will be used 



create index idx_tmp_fpfunding_projects      on xx_projects (project_id);
create index idx_tmp_fpfunding_projects_prog on xx_projects_programmes (project_id);
create index idx_tmp_fpfunding_projects_org  on xx_projects_organisations (project_id);
create index idx_tmp_fpfunding_projects_res  on xx_projects_researchers (project_id);
-- create index idx_tmp_fpfunding_projects_res_role   on xx_projects_researchers (person_role );


drop table if exists zzzz_funding_data_opensearch_fp; 

create table zzzz_funding_data_opensearch_fp
as 
SELECT 
t1.project_id
, json_object(
'project_id', t1.project_id,
'project_doi', t1.project_doi,
'project_title', project_title,
'project_title_short', project_title_short,
'project_time_start', project_time_start,
'project_time_end', project_time_end,
'project_budget_ec_contribution', project_budget_ec_contribution,
'project_content_abstract', project_content_abstract,
'project_status', project_status,
'programme', (select json_group_array (json_object ('prog_fp', t2.prog_fp,
                                                    'programme_legal_basis', t2.programme_legal_basis,
                                                    'programme_nr', t2.programme_nr,
                                                    'programme_code', t2.programme_code,
                                                    'programme_label', t2.programme_label
                                                    )
                                       )
                                       from xx_projects_programmes as t2
                                       where t1.project_id = t2.project_id
              ),
'organisation', (select json_group_array (json_object ('org_role',  t3.org_role, 
                                                       'org_name', t3.org_name, 
                                                       'org_cuontry', t3.org_country
                                                       )
                                         )
                                         FROM xx_projects_organisations as t3
                                         where t1.project_id = t3.project_id
              ), 
'researcher', (select json_group_array (json_object ('person_role', t4.person_role, 
                                                     'person_name_first', t4.person_name_first, 
                                                     'person_name_last', t4.person_name_last
                                                       )
                                         )
                                         FROM xx_projects_researchers as t4
                                         where t1.project_id = t4.project_id
                                         and t4.person_role = 'principalInvestigator'
              )                                                        
                                                    
) as json_data  
FROM xx_projects as t1
--limit 2 
;

--Execute time (ms)	43095
--Start time	2023-10-22 09:38:58.954
--Finish time	2023-10-22 09:39:42.081



