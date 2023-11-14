

/*
consolidating the programmes 


FOR NOW: 

from FP1 to FP6 we take the programme 
this might be revised later 

we will use following scheme 


programme_legal_basis   : FP7-KBBE
programme_nr          : integer for sorting 
programme_code  : H2020-MSCA
programme_label  : for analysis 




 */


--select count(*) from xx_coredata_eufp_projects;




alter table xx_coredata_eufp_projects add column programme_legal_basis text; 
alter table xx_coredata_eufp_projects add column programme_nr  integer; 
alter table xx_coredata_eufp_projects add column programme_code text; 
alter table xx_coredata_eufp_projects add column programme_label text; 


----------------------------------
--FP1 to FP6 
--------------------------



with tx1 
as 
(select id as xid  , programme as xprog  from cordis_fp1projects )
update xx_coredata_eufp_projects
set programme_code = tx1.xprog 
from tx1 
where 
project_id = 'FP_' || tx1.xid and prog_fp = 'FP1';


with tx1 
as 
(select id as xid  , programme as xprog  from cordis_fp2projects )
update xx_coredata_eufp_projects
set programme_code = tx1.xprog 
from tx1 
where 
project_id = 'FP_' || tx1.xid and prog_fp = 'FP2';


with tx1 
as 
(select id as xid  , programme as xprog  from cordis_fp3projects )
update xx_coredata_eufp_projects
set programme_code = tx1.xprog 
from tx1 
where 
project_id = 'FP_' || tx1.xid and prog_fp = 'FP3';


with tx1 
as 
(select id as xid  , programme as xprog  from cordis_fp4projects )
update xx_coredata_eufp_projects
set programme_code = tx1.xprog 
from tx1 
where 
project_id = 'FP_' || tx1.xid and prog_fp = 'FP4';


with tx1 
as 
(select id as xid  , programme as xprog  from cordis_fp5projects )
update xx_coredata_eufp_projects
set programme_code = tx1.xprog 
from tx1 
where 
project_id = 'FP_' || tx1.xid and prog_fp = 'FP5';



with tx1 
as 
(select id as xid  , programme as xprog  from cordis_fp6projects )
update xx_coredata_eufp_projects
set programme_code = tx1.xprog 
from tx1 
where 
project_id = 'FP_' || tx1.xid and prog_fp = 'FP6';


-- CORRECT FP6 

update xx_coredata_eufp_projects set programme_code = 'FP6-EURATOM' where programme_code in ('FP6-EURATOM-NUCHORIZ', 'FP6-EURATOM-NUCTECH', 'FP6-EURATOM-NUWASTE', 'FP6-EURATOM-RADPROT');


--------------------------
-- FP7 
--------------------------


-- legal basis 


with tx1 
as 
(select 
cast(project_id as text)   as xid 
, cast(legal_basis as text) as xlegal 
from 
cordis_fp7projects_legal_basis
)
update 
xx_coredata_eufp_projects
set programme_legal_basis  = tx1.xlegal 
from tx1 
where replace(project_id, 'FP_', '')  = tx1.xid
and prog_fp = 'FP7';
;




-- programme_nr 

update xx_coredata_eufp_projects set programme_nr = 1000 where programme_legal_basis = 'FP7-GA';
update xx_coredata_eufp_projects set programme_nr = 1101 where programme_legal_basis = 'FP7-HEALTH';
update xx_coredata_eufp_projects set programme_nr = 1102 where programme_legal_basis = 'FP7-KBBE';
update xx_coredata_eufp_projects set programme_nr = 1103 where programme_legal_basis = 'FP7-ICT';
update xx_coredata_eufp_projects set programme_nr = 1104 where programme_legal_basis = 'FP7-NMP';
update xx_coredata_eufp_projects set programme_nr = 1105 where programme_legal_basis = 'FP7-ENERGY';
update xx_coredata_eufp_projects set programme_nr = 1106 where programme_legal_basis = 'FP7-ENVIRONMENT';
update xx_coredata_eufp_projects set programme_nr = 1107 where programme_legal_basis = 'FP7-TRANSPORT';
update xx_coredata_eufp_projects set programme_nr = 1108 where programme_legal_basis = 'FP7-SSH';
update xx_coredata_eufp_projects set programme_nr = 1109 where programme_legal_basis = 'FP7-SPACE';
update xx_coredata_eufp_projects set programme_nr = 1110 where programme_legal_basis = 'FP7-SECURITY';
update xx_coredata_eufp_projects set programme_nr = 1111 where programme_legal_basis = 'FP7-JTI';
update xx_coredata_eufp_projects set programme_nr = 1201 where programme_legal_basis = 'FP7-IDEAS-ERC';
update xx_coredata_eufp_projects set programme_nr = 1301 where programme_legal_basis = 'FP7-PEOPLE';
update xx_coredata_eufp_projects set programme_nr = 1401 where programme_legal_basis = 'FP7-INFRASTRUCTURES';
update xx_coredata_eufp_projects set programme_nr = 1402 where programme_legal_basis = 'FP7-SME';
update xx_coredata_eufp_projects set programme_nr = 1403 where programme_legal_basis = 'FP7-REGIONS';
update xx_coredata_eufp_projects set programme_nr = 1404 where programme_legal_basis = 'FP7-REGPOT';
update xx_coredata_eufp_projects set programme_nr = 1405 where programme_legal_basis = 'FP7-SIS';
update xx_coredata_eufp_projects set programme_nr = 1406 where programme_legal_basis = 'FP7-COH';
update xx_coredata_eufp_projects set programme_nr = 1407 where programme_legal_basis = 'FP7-INCO';
update xx_coredata_eufp_projects set programme_nr = 1500 where programme_legal_basis = 'FP7-EURATOM-FISSION';
update xx_coredata_eufp_projects set programme_nr = 1500 where programme_legal_basis = 'FP7-EURATOM-FUSION';


-- programme_code 

update xx_coredata_eufp_projects set programme_code = 'FP7-CrossProgramme' where programme_nr = 1000 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-HEALTH' where programme_nr = 1101 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-KBBE' where programme_nr = 1102 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-ICT' where programme_nr = 1103 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-NMP' where programme_nr = 1104 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-ENERGY' where programme_nr = 1105 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-ENVIRONMENT' where programme_nr = 1106 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-TRANSPORT' where programme_nr = 1107 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-SSH' where programme_nr = 1108 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-SPACE' where programme_nr = 1109;
update xx_coredata_eufp_projects set programme_code = 'FP7-SECURITY' where programme_nr = 1110 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-JTI' where programme_nr = 1111 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-ERC' where programme_nr = 1201 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-MSCA' where programme_nr = 1301 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-INFRA' where programme_nr = 1401 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-SME' where programme_nr = 1402 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-REGIONS' where programme_nr = 1403 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-REGPOT' where programme_nr = 1404 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-SIS' where programme_nr = 1405 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-COH' where programme_nr = 1406 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-INCO' where programme_nr = 1407 and prog_fp = 'FP7';
update xx_coredata_eufp_projects set programme_code = 'FP7-EURATOM' where programme_nr = 1500 and prog_fp = 'FP7';


-- programme_label 


update xx_coredata_eufp_projects set programme_label = 'FP7-CrossProgramme' where programme_code = 'FP7-CrossProgramme';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Health' where programme_code = 'FP7-HEALTH';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Food, Agriculture and Biotechnology' where programme_code = 'FP7-KBBE';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Information and communication technologies' where programme_code = 'FP7-ICT';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Nanosciences, Nanotechnologies, Materials and new Production Technologies' where programme_code = 'FP7-NMP';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Energy' where programme_code = 'FP7-ENERGY';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Environment (including Climate Change)' where programme_code = 'FP7-ENVIRONMENT';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Transport (including Aeronautics)' where programme_code = 'FP7-TRANSPORT';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Socio-economic Sciences and Humanities' where programme_code = 'FP7-SSH';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Space' where programme_code = 'FP7-SPACE';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Security' where programme_code = 'FP7-SECURITY';
update xx_coredata_eufp_projects set programme_label = 'Cooperation - Joint Technology Initiatives' where programme_code = 'FP7-JTI';
update xx_coredata_eufp_projects set programme_label = 'Ideas - ERC' where programme_code = 'FP7-ERC';
update xx_coredata_eufp_projects set programme_label = 'People - Marie Curie Actions' where programme_code = 'FP7-MSCA';
update xx_coredata_eufp_projects set programme_label = 'Capacities - Research infrastructures' where programme_code = 'FP7-INFRA';
update xx_coredata_eufp_projects set programme_label = 'Capacities - Research for the benefit of SMEs' where programme_code = 'FP7-SME';
update xx_coredata_eufp_projects set programme_label = 'Capacities - Regions of knowledge and support for regional research-driven clusters' where programme_code = 'FP7-REGIONS';
update xx_coredata_eufp_projects set programme_label = 'Capacities - Research potential of Convergence Regions' where programme_code = 'FP7-REGPOT';
update xx_coredata_eufp_projects set programme_label = 'Capacities - Science in society' where programme_code = 'FP7-SIS';
update xx_coredata_eufp_projects set programme_label = 'Capacities - Support to the coherent development of research policies' where programme_code = 'FP7-COH';
update xx_coredata_eufp_projects set programme_label = 'Capacities - International co-operation' where programme_code = 'FP7-INCO';
update xx_coredata_eufp_projects set programme_label = 'EURATOM' where programme_code = 'FP7-EURATOM';




 
--------------------------
-- H2020  
--------------------------


-- we take legal basis which is programm_part_unique 


with tx1 
as 
(select 
cast(project_id as text)   as xid 
, cast(legal_basis as text) as xlegal 
from 
cordis_h2020projects_legal_basis
where unique_programme_part is true 
)
update 
xx_coredata_eufp_projects
set programme_legal_basis  = tx1.xlegal 
from tx1 
where replace(project_id, 'FP_', '')  = tx1.xid
and prog_fp = 'H2020'
;


-- programme_nr 


update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EU.0.';    -- crossprogramme 
update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EC';    -- crossprogramme 


update xx_coredata_eufp_projects set programme_nr = 2110 where programme_legal_basis = 'H2020-EU.1.1.';
update xx_coredata_eufp_projects set programme_nr = 2120 where programme_legal_basis = 'H2020-EU.1.2.';
update xx_coredata_eufp_projects set programme_nr = 2130 where programme_legal_basis = 'H2020-EU.1.3.';
update xx_coredata_eufp_projects set programme_nr = 2140 where programme_legal_basis = 'H2020-EU.1.4.';

update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EU.2.0.';  -- crossprogramme 
update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EU.2.';  -- crossprogramme 


update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EU.2.1.';  -- crossprogramme 
update xx_coredata_eufp_projects set programme_nr = 2211 where programme_legal_basis = 'H2020-EU.2.1.1.';
update xx_coredata_eufp_projects set programme_nr = 2212 where programme_legal_basis = 'H2020-EU.2.1.2.';
update xx_coredata_eufp_projects set programme_nr = 2213 where programme_legal_basis = 'H2020-EU.2.1.3.';
update xx_coredata_eufp_projects set programme_nr = 2214 where programme_legal_basis = 'H2020-EU.2.1.4.';
update xx_coredata_eufp_projects set programme_nr = 2215 where programme_legal_basis = 'H2020-EU.2.1.5.';
update xx_coredata_eufp_projects set programme_nr = 2216 where programme_legal_basis = 'H2020-EU.2.1.6.';
update xx_coredata_eufp_projects set programme_nr = 2220 where programme_legal_basis = 'H2020-EU.2.2.';
update xx_coredata_eufp_projects set programme_nr = 2230 where programme_legal_basis = 'H2020-EU.2.3.';

update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EU.3.0.';   -- crossprograme 
update xx_coredata_eufp_projects set programme_nr = 2000 where programme_legal_basis = 'H2020-EU.3.';   -- crossprograme 



update xx_coredata_eufp_projects set programme_nr = 2310 where programme_legal_basis = 'H2020-EU.3.1.';
update xx_coredata_eufp_projects set programme_nr = 2320 where programme_legal_basis = 'H2020-EU.3.2.';
update xx_coredata_eufp_projects set programme_nr = 2330 where programme_legal_basis = 'H2020-EU.3.3.';
update xx_coredata_eufp_projects set programme_nr = 2340 where programme_legal_basis = 'H2020-EU.3.4.';
update xx_coredata_eufp_projects set programme_nr = 2350 where programme_legal_basis = 'H2020-EU.3.5.';
update xx_coredata_eufp_projects set programme_nr = 2360 where programme_legal_basis = 'H2020-EU.3.6.';
update xx_coredata_eufp_projects set programme_nr = 2370 where programme_legal_basis = 'H2020-EU.3.7.';
update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.0.';
update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.';

update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.a.';
update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.b.';
update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.c.';
update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.e.';
update xx_coredata_eufp_projects set programme_nr = 2400 where programme_legal_basis = 'H2020-EU.4.f.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.0.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.';

update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.a.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.b.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.c.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.d.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.e.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.f.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.g.';
update xx_coredata_eufp_projects set programme_nr = 2500 where programme_legal_basis = 'H2020-EU.5.h.';
update xx_coredata_eufp_projects set programme_nr = 2600 where programme_legal_basis = 'H2020-Euratom';





-- EIC Pilot special case 


/*

2018-2020

The pilot will bring together four different support schemes into a single place and make them easier to
understand and access for innovators. The schemes are the SME instrument, the Fast Track to Innovation, parts
of Future and Emerging Technologies, and a set of six “crack the challenge” prizes, to be known as EIC Horizon
Prizes.
For the first time the Horizon 2020 SME Instrument will be fully “bottom up” so innovative proposals can be
submitted in any area of technology or business sector. This contrasts with previous work programmes where
topics for the SME instrument were predefined.


According to the EIC Pilot work programme:, 
list of topics taken from the work programme 

https://ec.europa.eu/research/participants/data/ref/h2020/wp/2018-2020/main/h2020-wp1820-eic_en.pdf


*/



with tx1 
as 
(
select 
distinct 
cast(id as text) as xproj_id
from 
cordis_h2020projects_project
where topics in 
('EIC-SMEInst-2018-2020', 'H2020-EIC-SMEInst-2020-4', 'FETOPEN-01-2018-2019-2020', 'FETOPEN-02-2018', 'FETOPEN-03-2018-2019-2020', 'FETPROACT-EIC-05-2019', 'FETPROACT-EIC-06-2019', 
'FETPROACT-EIC-07-2020', 'FETPROACT-EIC-08-2020', 'EIC-FTI-2018-2020')
)
update xx_coredata_eufp_projects set programme_nr = 2300 
where project_id in (select xproj_id from tx1)
;

-- programme_code 


--H2020 


update xx_coredata_eufp_projects set programme_code = 'H2020-CrossProgramme' where programme_nr = 2000 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-ERC' where programme_nr = 2110 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-FET' where programme_nr = 2120 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-MSCA' where programme_nr = 2130 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-INFRA' where programme_nr = 2140 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-ICT' where programme_nr = 2211 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-NANO' where programme_nr = 2212 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-AdvMat' where programme_nr = 2213 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-BIOTECH' where programme_nr = 2214 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-AdvMan' where programme_nr = 2215 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-SPACE' where programme_nr = 2216 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-RiskFIN' where programme_nr = 2220 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-SME' where programme_nr = 2230 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-HEALTH' where programme_nr = 2310 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-FOOD' where programme_nr = 2320 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-ENERGY' where programme_nr = 2330 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-TRANSPORT' where programme_nr = 2340 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-CLIMA' where programme_nr = 2350 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-SOCIETY' where programme_nr = 2360 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-SECURITY' where programme_nr = 2370 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-WIDENING' where programme_nr = 2400 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-SWFSOCIETY' where programme_nr = 2500 and prog_fp = 'H2020';
update xx_coredata_eufp_projects set programme_code = 'H2020-EURATOM' where programme_nr = 2600 and prog_fp = 'H2020';

update xx_coredata_eufp_projects set programme_code = 'H2020-EIC-Pilot' where programme_nr = 2300 and prog_fp = 'H2020';



-- programme_label 


update xx_coredata_eufp_projects set programme_label = 'H2020-CrossProgramme' where programme_code = 'H2020-CrossProgramme';
update xx_coredata_eufp_projects set programme_label = 'Excellent Science - European Research Council (ERC)' where programme_code = 'H2020-ERC';
update xx_coredata_eufp_projects set programme_label = 'Excellent Science - Future and Emerging Technologies (FET)' where programme_code = 'H2020-FET';
update xx_coredata_eufp_projects set programme_label = 'Excellent Science - Marie Skłodowska-Curie Actions' where programme_code = 'H2020-MSCA';
update xx_coredata_eufp_projects set programme_label = 'Excellent Science - Research Infrastructures' where programme_code = 'H2020-INFRA';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Leadership in enabling and industrial technologies - Information and Communication Technologies (ICT)' where programme_code = 'H2020-ICT';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Leadership in enabling and industrial technologies – Nanotechnologies' where programme_code = 'H2020-NANO';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Leadership in enabling and industrial technologies - Advanced materials' where programme_code = 'H2020-AdvMat';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Leadership in enabling and industrial technologies – Biotechnology' where programme_code = 'H2020-BIOTECH';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Leadership in enabling and industrial technologies - Advanced manufacturing and processing' where programme_code = 'H2020-AdvMan';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Leadership in enabling and industrial technologies – Space' where programme_code = 'H2020-SPACE';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Access to risk finance' where programme_code = 'H2020-RiskFIN';
update xx_coredata_eufp_projects set programme_label = 'Industrial Leadership - Innovation In SMEs' where programme_code = 'H2020-SME';
update xx_coredata_eufp_projects set programme_label = 'H2020-EIC Pilot ' where programme_code = 'H2020-EIC-Pilot';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Health, demographic change and well-being' where programme_code = 'H2020-HEALTH';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Food security, sustainable agriculture and forestry, marine, maritime and inland water research, and the bioeconomy' where programme_code = 'H2020-FOOD';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Secure, clean and efficient energy' where programme_code = 'H2020-ENERGY';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Smart, Green And Integrated Transport' where programme_code = 'H2020-TRANSPORT';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Climate action, Environment, Resource Efficiency and Raw Materials' where programme_code = 'H2020-CLIMA';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Europe In A Changing World - Inclusive, Innovative And Reflective Societies' where programme_code = 'H2020-SOCIETY';
update xx_coredata_eufp_projects set programme_label = 'Societal Challenges - Secure societies - Protecting freedom and security of Europe and its citizens' where programme_code = 'H2020-SECURITY';
update xx_coredata_eufp_projects set programme_label = 'Spreading Excellence and Widening Participation' where programme_code = 'H2020-WIDENING';
update xx_coredata_eufp_projects set programme_label = 'Science with and for Society' where programme_code = 'H2020-SWFSOCIETY';
update xx_coredata_eufp_projects set programme_label = 'H2020-EURATOM' where programme_code = 'H2020-EURATOM';




--------------------------
-- Horizon Europe 
--------------------------



-- legal basis 



with tx1 
as 
(select 
cast(project_id as text)   as xid 
, cast(legal_basis as text) as xlegal 
from 
cordis_HORIZONprojects_legal_basis
where unique_programme_part is true 
)
update 
xx_coredata_eufp_projects
set programme_legal_basis  = tx1.xlegal 
from tx1 
where replace(project_id, 'FP_', '')  = tx1.xid
and prog_fp = 'HE'
;


-- programme_nr 


update xx_coredata_eufp_projects set programme_nr = 1011 where programme_legal_basis = 'HORIZON.1.1' AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_nr = 1012 where programme_legal_basis = 'HORIZON.1.2' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 1013 where programme_legal_basis = 'HORIZON.1.3' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 2021 where programme_legal_basis = 'HORIZON.2.1' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 2022 where programme_legal_basis = 'HORIZON.2.2' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 2023 where programme_legal_basis = 'HORIZON.2.3' AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_nr = 2024 where programme_legal_basis = 'HORIZON.2.4' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 2025 where programme_legal_basis = 'HORIZON.2.5' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 2026 where programme_legal_basis = 'HORIZON.2.6' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 3031 where programme_legal_basis = 'HORIZON.3.1' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 3032 where programme_legal_basis = 'HORIZON.3.2' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 4041 where programme_legal_basis = 'HORIZON.4.1' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 4042 where programme_legal_basis = 'HORIZON.4.2' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 5000 where programme_legal_basis = 'EURATOM-1'   AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 5000 where programme_legal_basis = 'EURATOM.1'   AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 5000 where programme_legal_basis = 'EURATOM.1.1' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 5000 where programme_legal_basis = 'EURATOM.1.2' AND prog_fp  = 'HE';	
update xx_coredata_eufp_projects set programme_nr = 5000 where programme_legal_basis = 'EURATOM.1.3' AND prog_fp  = 'HE';	


-- programme_code


update xx_coredata_eufp_projects set programme_code = 'HE-ERC'        where programme_nr = 1011 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code =  'HE-MSCA'      where programme_nr = 1012 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-INFRA'      where programme_nr = 1013 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-HEALTH'     where programme_nr = 2021 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-CULTURE'    where programme_nr = 2022 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-SECURITY'   where programme_nr = 2023 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-DIGITAL'    where programme_nr = 2024 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-CLIMATE'    where programme_nr = 2025 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-BIOECONOMY' where programme_nr = 2026 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-EIC'        where programme_nr = 3031 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-INNOV'      where programme_nr = 3032 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-WIDENING'   where programme_nr = 4041 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-REFORM'     where programme_nr = 4042 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-EURATOM'    where programme_nr = 5000 AND prog_fp  = 'HE';


-- programme_label


update xx_coredata_eufp_projects set programme_code = 'HE-ERC'        where programme_nr = 1011 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code =  'HE-MSCA'      where programme_nr = 1012 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-INFRA'      where programme_nr = 1013 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-HEALTH'     where programme_nr = 2021 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-CULTURE'    where programme_nr = 2022 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-SECURITY'   where programme_nr = 2023 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-DIGITAL'    where programme_nr = 2024 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-CLIMATE'    where programme_nr = 2025 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-BIOECONOMY' where programme_nr = 2026 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-EIC'        where programme_nr = 3031 AND prog_fp  = 'HE'; 

update xx_coredata_eufp_projects set programme_code = 'HE-INNOV'      where programme_nr = 3032 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-WIDENING'   where programme_nr = 4041 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_code = 'HE-REFORM'     where programme_nr = 4042 AND prog_fp  = 'HE'; 
update xx_coredata_eufp_projects set programme_code = 'HE-EURATOM'    where programme_nr = 5000 AND prog_fp  = 'HE';
update xx_coredata_eufp_projects set programme_label = 'European Research Council' where programme_code =  'HE-ERC';
update xx_coredata_eufp_projects set programme_label = 'Marie Skłodowska-Curie'  where programme_code = 'HE-MSCA';
update xx_coredata_eufp_projects set programme_label = 'Research Infrastructures'  where programme_code = 'HE-INFRA';
update xx_coredata_eufp_projects set programme_label = 'Health'  where programme_code = 'HE-HEALTH';
update xx_coredata_eufp_projects set programme_label = 'Culture, Creativity & Inclusive Society'  where programme_code = 'HE-CULTURE';
update xx_coredata_eufp_projects set programme_label = 'Civil Security for Society'  where programme_code = 'HE-SECURITY';

update xx_coredata_eufp_projects set programme_label = 'Digital, Industry & Space'  where programme_code = 'HE-DIGITAL';
update xx_coredata_eufp_projects set programme_label = 'Climate, Energy & Mobility'  where programme_code = 'HE-CLIMATE';

update xx_coredata_eufp_projects set programme_label = 'Food, Bioeconomy, natural Resources, Agriculture & Environment'  where programme_code = 'HE-BIOECONOMY';


update xx_coredata_eufp_projects set programme_label = 'European Innovation Council'  where programme_code = 'HE-EIC';
update xx_coredata_eufp_projects set programme_label = 'European Innovation Ecosystems'  where programme_code = 'HE-INNOV';


update xx_coredata_eufp_projects set programme_label = 'Widening participation & spreading excellence'  where programme_code = 'HE-WIDENING';
update xx_coredata_eufp_projects set programme_label = 'Reforming & Enhancing the European R&I system'  where programme_code = 'HE-REFORM';
update xx_coredata_eufp_projects set programme_label = 'EURATOM'  where programme_code = 'HE-EURATOM';






















 
