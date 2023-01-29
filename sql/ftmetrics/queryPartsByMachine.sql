SELECT
	PBM.*
FROM (
    SELECT
        sDescription as 'Workcell',
        ROUND(SUM(dTotalParts),0) as 'TotalParts',
        ROUND(SUM(dGoodParts),0) as 'GoodParts',
        ROUND(SUM(dScrapParts),0) as 'ScrapParts'
    FROM dbo.OEEQWorkCellDetail
    GROUP BY sDescription
) PBM
ORDER BY PBM.TotalParts ASC;
