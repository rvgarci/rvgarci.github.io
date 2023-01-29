SELECT
	ROUND(AVG(dOEE),2) AS OEE,
    ROUND(AVG(dPerformancePcnt),2) AS Performance,
    ROUND(AVG(dAvailPcnt),2) AS Availability,
    ROUND(AVG(dQualityPcnt),2) AS Quality
FROM [dbo].[OEEQWorkCellDetail]
WHERE dOEE <> 0;
