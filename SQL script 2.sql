--Count the number of athletes from each Country
SELECT Country, COUNT(*) AS TotalAthletes
FROM athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

--Count the total medals won by each Country
SELECT Team_Country, SUM(Gold) AS TotalGold,
SUM(Silver) AS TotalSilver,
SUM(Bronze) AS TotalBronze
FROM medals
GROUP BY Team_Country
ORDER BY TotalGold DESC;

--Calculate the average number of entries by gender for each discipline
SELECT Discipline, AVG(Female) AS avgfemale, AVG(Male) AS avgmale
FROM entriesgender
GROUP BY Discipline;

--Calculate the participation in discipline by each Country
SELECT Country,
COUNT(*) AS DisciplineCountry
FROM teams
GROUP BY Country
Order BY DisciplineCountry DESC;