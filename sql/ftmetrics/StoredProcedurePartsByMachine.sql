USE [FTMetrics]
GO
/****** Object:  StoredProcedure [dbo].[AnExampleOfStoredProcedure]    Script Date: 1/29/2023 12:34:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE OR ALTER PROCEDURE [dbo].[AnExampleOfStoredProcedure]

@Workcell NVARCHAR(30)

AS

SELECT
	PBM.*
FROM (
    SELECT
        sDescription as 'Workcell',
        ROUND(SUM(dTotalParts),0) as 'TotalParts',
        ROUND(SUM(dGoodParts),0) as 'GoodParts',
        ROUND(SUM(dScrapParts),0) as 'ScrapParts'
    FROM dbo.OEEQWorkCellDetail
	WHERE sDescription LIKE @Workcell
    GROUP BY sDescription
) PBM
ORDER BY PBM.TotalParts ASC