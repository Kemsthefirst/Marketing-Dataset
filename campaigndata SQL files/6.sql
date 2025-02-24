SELECT 
    campaign_id, 
    company, 
    (CAST(REPLACE(REPLACE(acquisition_cost, '$', ''), ',', '') AS NUMERIC) / NULLIF(conversion_rate, 0)) AS costperconversion
FROM campaigndata
ORDER BY costperconversion ASC
LIMIT 1;


