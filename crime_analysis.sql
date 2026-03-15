--Count Crimed 
SELECT COUNT(*) AS Total_Crimes FROM Crime;
--Count Crime Type
SELECT CT.Crime AS Crime_Type, COUNT(*) AS Total
FROM Crime C
JOIN [Crime Types] CT  
ON C.Crime_Type_ID = CT.Crime_Type_ID
GROUP BY CT.Crime;
--Count Crime Solve Or Not
SELECT Resolved, COUNT(*) AS Total
FROM Crime
GROUP BY Resolved;
--Top 1 Crime 
SELECT TOP 1 CT.Crime, COUNT(*) AS Total
FROM Crime C
JOIN [Crime Types] CT ON C.Crime_Type_ID = CT.Crime_Type_ID
GROUP BY CT.Crime
ORDER BY Total DESC;



--Crime By Gander
SELECT P.Gender, COUNT(*) AS Total
FROM People P
JOIN [Crime Person] CP ON P.Person_ID = CP.Person_ID
JOIN [Crime Roles] CR ON CP.Crime_Role_ID = CR.Crime_Role_ID
WHERE CR.Role = 'Offender'
GROUP BY P.Gender;
--By Ethnicity
SELECT P.Ethnicity, COUNT(*) AS Total
FROM People P
JOIN [Crime Person] CP ON P.Person_ID = CP.Person_ID
GROUP BY P.Ethnicity
ORDER BY Total DESC;
--Roles
SELECT CR.Role, COUNT(*) AS Total
FROM [Crime Person] CP
JOIN [Crime Roles] CR ON CP.Crime_Role_ID = CR.Crime_Role_ID
GROUP BY CR.Role
ORDER BY Total DESC;
-- Crime By Day
SELECT CAST(Crime_Date AS DATE) AS Date, COUNT(*) AS Total
FROM Crime
GROUP BY CAST(Crime_Date AS DATE)
ORDER BY Date;

--By Mounth , year
SELECT YEAR(Crime_Date) AS Year, MONTH(Crime_Date) AS Month, COUNT(*) AS Total
FROM Crime
GROUP BY YEAR(Crime_Date), MONTH(Crime_Date)
ORDER BY Year, Month;

--Most Place
SELECT AVG(Latitude) AS Avg_Lat, AVG(Longitude) AS Avg_Long
FROM Crime;



