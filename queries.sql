SELECT *
FROM itemkeys
WHERE NAME LIKE '%%';

SELECT pageNo, batchiD, senderId, receiverid, claimType, maxSegments
FROM edi_x12datainfo 

SELECT controlNo, employername, insname, ethnicity, medications, state, race
FROM Patients 
WHERE controlno>=1 
INNER JOIN 

SELECT 
  column_name, 
  table_name 
FROM 
  INFORMATION_SCHEMA.COLUMNS
WHERE 
  table_schema='mobiledoc_v11' 
GROUP BY 
  table_name

SELECT cdss_vitals.ID, cdtcodebase.ID
FROM cdss_vitals
INNER JOIN cdtcodebase ON cdss_vitals.ID=cdtcodebase.ID


