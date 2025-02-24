SELECT 
    ROUND((SUM(clicks)::NUMERIC / NULLIF(SUM(impressions), 0)) * 100, 2) AS overallctr
FROM campaigndata;
