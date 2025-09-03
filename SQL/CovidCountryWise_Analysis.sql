/* ==========================================================
   COVID-19 COUNTRY-WISE SNAPSHOT ANALYSIS
   Dataset: CovidCountryWise
   Author: Harshana Suraweera
   Description: Exploratory SQL queries for portfolio project
   ========================================================== */

--------------------------------------------------------------
-- 1. Preview dataset
--------------------------------------------------------------
SELECT *
FROM CovidCountryWise;

SELECT TOP 10 * 
FROM CovidCountryWise;


--------------------------------------------------------------
-- 2. Top 10 countries by confirmed cases
--------------------------------------------------------------
SELECT TOP 10 [Country/Region], Confirmed, Deaths, Recovered
FROM CovidCountryWise
ORDER BY Confirmed DESC;


--------------------------------------------------------------
-- 3. Top 10 countries by deaths
--------------------------------------------------------------
SELECT TOP 10 [Country/Region], Deaths
FROM CovidCountryWise
ORDER BY Deaths DESC;


--------------------------------------------------------------
-- 4. Global totals
--------------------------------------------------------------
SELECT 
    SUM(Confirmed) AS GlobalConfirmed,
    SUM(Deaths) AS GlobalDeaths,
    SUM(Recovered) AS GlobalRecovered,
    SUM(Active) AS GlobalActive
FROM CovidCountryWise;


--------------------------------------------------------------
-- 5. Top 10 countries by recovery rate (%)
--------------------------------------------------------------
SELECT TOP 10 [Country/Region],
       (CAST(Recovered AS FLOAT)/Confirmed)*100 AS RecoveryRate
FROM CovidCountryWise
WHERE Confirmed > 0
ORDER BY RecoveryRate DESC;


--------------------------------------------------------------
-- 6. Top 10 countries by mortality rate (%)
--------------------------------------------------------------
SELECT TOP 10 [Country/Region],
       (CAST(Deaths AS FLOAT)/Confirmed)*100 AS MortalityRate
FROM CovidCountryWise
WHERE Confirmed > 0
ORDER BY MortalityRate DESC;


--------------------------------------------------------------
-- 7. Countries with highest active case percentage
--------------------------------------------------------------
SELECT TOP 10 [Country/Region],
       (CAST(Active AS FLOAT)/Confirmed)*100 AS ActivePercentage
FROM CovidCountryWise
WHERE Confirmed > 0
ORDER BY ActivePercentage DESC;


--------------------------------------------------------------
-- 8. Countries with zero deaths
--------------------------------------------------------------
SELECT [Country/Region], Confirmed, Deaths
FROM CovidCountryWise
WHERE Deaths = 0
ORDER BY Confirmed DESC;


--------------------------------------------------------------
-- 9. WHO Region totals
--------------------------------------------------------------
SELECT [WHO Region],
       SUM(Confirmed) AS TotalConfirmed,
       SUM(Deaths) AS TotalDeaths,
       SUM(Recovered) AS TotalRecovered,
       SUM(Active) AS TotalActive
FROM CovidCountryWise
GROUP BY [WHO Region];


--------------------------------------------------------------
-- 10. WHO Region averages of new cases/deaths/recovered
--------------------------------------------------------------
SELECT [WHO Region],
       AVG([New cases]) AS AvgNewCases,
       AVG([New deaths]) AS AvgNewDeaths,
       AVG([New recovered]) AS AvgNewRecovered
FROM CovidCountryWise
GROUP BY [WHO Region];


--------------------------------------------------------------
-- 11. Death-to-recovery ratio per country
--------------------------------------------------------------
SELECT [Country/Region],
       CAST(Deaths AS FLOAT) / NULLIF(Recovered, 0) AS DeathRecoveryRatio
FROM CovidCountryWise
ORDER BY DeathRecoveryRatio DESC;


--------------------------------------------------------------
-- 12. Global new cases percentage vs total confirmed
--------------------------------------------------------------
SELECT 
    (CAST(SUM([New cases]) AS FLOAT) / SUM(Confirmed)) * 100 AS GlobalNewCaseRate
FROM CovidCountryWise;
