

/*
data will be released as jsonl files
here we first create the json data 
*/





-- index on tables used 
create index idx_tmp_fpfunding_projects      on ofundres_eufp_projects (project_id);
create index idx_tmp_fpfunding_projects_prog on ofundres_eufp_programmes (project_id);
create index idx_tmp_fpfunding_projects_org  on ofundres_eufp_organisations (project_id);
create index idx_tmp_fpfunding_projects_res  on ofundres_eufp_researchers (project_id);






drop table if exists ofundres_eufp_json; 

create table ofundres_eufp_json
as 
SELECT 
t1.project_id
, json_object(
'project_id'        ,t1.project_id,
'project_url'        ,t1.project_url,
'project_title'      ,t1.project_title,
'project_title_short',t1.project_title_short,
'project_time_start' ,t1.project_time_start,
'project_time_end'   ,t1.project_time_end,
'project_budget'     ,t1.project_budget,
'project_budget_currency',t1.project_budget_currency,
'project_description'    ,t1.project_description,
'project_status'         ,t1.project_status,
'project_fundorg'        ,t1.project_fundorg,
'project_fundorg_name'  ,t1.project_fundorg_name,
'programme', (select json_group_array (json_object ('programme_lv1_code'  ,t2.programme_lv1_code,
                                                    'programme_lv1_label' ,t2.programme_lv1_label,
                                                    'programme_lv2_code'  ,t2.programme_lv2_code,
                                                    'programme_lv2_label' ,t2.programme_lv2_label,
                                                    'programme_scheme'    ,t2.programme_scheme
                                                    )
                                       )
                                       from ofundres_eufp_programmes as t2
                                       where t1.project_id = t2.project_id
                                       
              ),
'organisation', (select json_group_array (json_object ('org_id'     ,t3.org_id,
                                                       'org_name'   ,t3.org_name,
                                                       'org_country',t3.org_country,
                                                       'org_role'   ,t3.org_role
                                                    )
                                       )
                                       from ofundres_eufp_organisations as t3
                                       where t1.project_id = t3.project_id
                                       
              ) ,
'researcher', (select json_group_array (json_object ('person_id'        ,t4.person_id,
                                                     'person_role'      ,t4.person_role,
                                                     'person_name_first',t4.person_name_first,
                                                     'person_name_last' ,t4.person_name_last
                                                    )
                                       )
                                       from ofundres_eufp_researchers as t4
                                       where t1.project_id = t4.project_id
                                       
              )               
              

) as json_data  
FROM 
ofundres_eufp_projects as t1 
;

--Start time	2023-11-14 22:31:26.755
--Finish time	2023-11-14 22:31:28.626








