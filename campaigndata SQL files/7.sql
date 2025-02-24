SELECT campaign_id, company, 
       ROUND((clicks::NUMERIC / NULLIF(impressions, 0)) * 100, 2) AS ctr
FROM campaigndata
WHERE ((clicks::NUMERIC / NULLIF(impressions, 0)) * 100) > 5  
ORDER BY campaign_id ASC;  




























