CREATE TABLE STUDIES (
  PNAME VARCHAR(50),
  INSTITUTE VARCHAR(50),
  COURSE VARCHAR(50),
  COURSE_FEE INT
);

INSERT INTO STUDIES (PNAME, INSTITUTE, COURSE, COURSE_FEE) VALUES
  ('ANAND', 'SABHARI', 'PGDCA', 4500),
  ('ALTAF', 'COIT', 'DCA', 7200),
  ('JULIANA', 'BDPS', 'MCA', 22000),
  ('KAMALA', 'PRAGATHI', 'DCA', 5000),
  ('MARY', 'SABHARI', 'PGDCA', 4500),
  ('NELSON', 'PRAGATHI', 'DAP', 6200),
  ('PATRICK', 'PRAGATHI', 'DCAP', 5200),
  ('QADIR', 'APPLE', 'HDCA', 14000),
  ('RAMESH', 'SABHARI', 'PGDCA', 4500),
  ('REBECCA', 'BRILLIANT', 'DCAP', 11000),
  ('REMITHA', 'BDPS', 'DCS', 6000),
  ('REVATHI', 'SABHARI', 'DAP', 5000),
  ('VIJAYA', 'BDPS', 'DCA', 48000);

CREATE TABLE SOFTWARE (
  PNAME VARCHAR(50),
  TITLE VARCHAR(50),
  DEVELOPIN VARCHAR(50),
  SCOST DECIMAL(10, 2),
  DCOST DECIMAL(10, 2),
  SOLD INT
);

INSERT INTO SOFTWARE (PNAME, TITLE, DEVELOPIN, SCOST, DCOST, SOLD) VALUES
  ('MARY', 'README', 'CPP', 300, 1200, 84),
  ('ANAND', 'PARACHUTES', 'BASIC', 399.95, 6000, 43),
  ('ANAND', 'VIDEO TITLING', 'PASCAL', 7500, 16000, 9),
  ('JULIANA', 'INVENTORY', 'COBOL', 3000, 3500, 0),
  ('KAMALA', 'PAYROLL PKG.', 'DBASE', 9000, 20000, 7),
  ('MARY', 'FINANCIAL ACCT.', 'ORACLE', 18000, 85000, 4),
  ('MARY', 'CODE GENERATOR', 'C', 4500, 20000, 23),
  ('PATTRICK', 'README', 'CPP', 300, 1200, 84),
  ('QADIR', 'BOMBS AWAY', 'ASSEMBLY', 750, 3000, 11),
  ('QADIR', 'VACCINES', 'C', 1900, 3100, 21),
  ('RAMESH', 'HOTEL MGMT.', 'DBASE', 13000, 35000, 4),
  ('RAMESH', 'DEAD LEE', 'PASCAL', 599.95, 4500, 73),
  ('REMITHA', 'PC UTILITIES', 'C', 725, 5000, 51),
  ('REMITHA', 'TSR HELP PKG.', 'ASSEMBLY', 2500, 6000, 7),
  ('REVATHI', 'HOSPITAL MGMT.', 'PASCAL', 1100, 75000, 2),
  ('VIJAYA', 'TSR EDITOR', 'C', 900, 700, 6);

CREATE TABLE PROGRAMMER (
  PNAME VARCHAR(50),
  DOB DATE,
  DOJ DATE,
  GENDER CHAR(1),
  PROF1 VARCHAR(50),
  PROF2 VARCHAR(50),
  SALARY DECIMAL(10, 2)
);

INSERT INTO PROGRAMMER (PNAME, DOB, DOJ, GENDER, PROF1, PROF2, SALARY) VALUES
  ('ANAND', '1966-04-12', '1992-04-21', 'M', 'PASCAL', 'BASIC', 3200),
  ('ALTAF', '1964-07-02', '1990-11-13', 'M', 'CLIPPER', 'COBOL', 2800),
  ('JULIANA', '1960-01-31', '1990-04-21', 'F', 'COBOL', 'DBASE', 3000),
  ('KAMALA', '1968-10-30', '1992-01-02', 'F', 'C', 'DBASE', 2900),
  ('MARY', '1970-06-24', '1991-02-01', 'F', 'CPP', 'ORACLE', 4500),
  ('NELSON', '1985-09-11', '1989-10-11', 'M', 'COBOL', 'DBASE', 2500),
  ('PATTRICK', '1965-11-10', '1990-04-21', 'M', 'PASCAL', 'CLIPPER', 2800),
  ('QADIR', '1965-08-31', '1991-04-21', 'M', 'ASSEMBLY', 'C', 3000),
  ('RAMESH', '1967-05-03', '1991-02-28', 'M', 'PASCAL', 'DBASE', 3200),
  ('REBECCA', '1967-01-01', '1990-12-01', 'F', 'BASIC', 'COBOL', 2500),
  ('REMITHA', '1970-04-19', '1993-04-20', 'F', 'C', 'ASSEMBLY', 3600),
  ('REVATHI', '1969-12-02', '1992-01-02', 'F', 'PASCAL', 'BASIC', 3700),
  ('VIJAYA', '1965-12-14', '1992-05-02', 'F', 'FOXPRO', 'C', 3500);


SELECT AVG(SCOST) AS AvgSellingCost
FROM SOFTWARE
WHERE DEVELOPIN = 'PASCAL';

SELECT PNAME, DATEDIFF(YEAR, DOB, GETDATE()) AS Age
FROM PROGRAMMER;

SELECT PNAME
FROM STUDIES
WHERE COURSE = 'DAP';

SELECT PNAME, DOB
FROM PROGRAMMER
WHERE MONTH(DOB) = 1;

SELECT MAX(SOLD) AS HighestCopiesSold
FROM SOFTWARE;

SELECT MIN(COURSE_FEE) AS LowestCourseFee
FROM STUDIES;

SELECT COUNT(*) AS ProgrammersCount
FROM STUDIES
WHERE COURSE = 'PGDCA';

SELECT SUM(SCOST * SOLD) AS RevenueEarned
FROM SOFTWARE
WHERE DEVELOPIN = 'C';

SELECT *
FROM SOFTWARE
WHERE PNAME = 'RAMESH';

SELECT COUNT(DISTINCT PNAME) AS SabhariProgrammersCount
FROM STUDIES
WHERE INSTITUTE = 'SABHARI';

SELECT *
FROM SOFTWARE
WHERE SOLD > 2000;

SELECT *
FROM SOFTWARE
WHERE SCOST <= DCOST;

SELECT MAX(DCOST) AS CostliestSoftwareDevelopment
FROM SOFTWARE
WHERE DEVELOPIN = 'BASIC';

SELECT COUNT(*) AS DBASEPackagesCount
FROM SOFTWARE
WHERE DEVELOPIN = 'DBASE';

SELECT COUNT(DISTINCT PNAME) AS PragathiProgrammersCount
FROM STUDIES
WHERE INSTITUTE = 'PRAGATHI';

SELECT COUNT(*) AS ProgrammersCount
FROM STUDIES
WHERE COURSE_FEE BETWEEN 5000 AND 10000;

SELECT AVG(COURSE_FEE) AS AverageCourseFee
FROM STUDIES;

SELECT *
FROM PROGRAMMER
WHERE PROF1 = 'C' OR PROF2 = 'C';

SELECT COUNT(*) AS ProgrammersCount
FROM PROGRAMMER
WHERE PROF1 IN ('COBOL', 'PASCAL') OR PROF2 IN ('COBOL', 'PASCAL');

SELECT COUNT(*) AS ProgrammersCount
FROM PROGRAMMER
WHERE PROF1 NOT IN ('COBOL', 'PASCAL') OR PROF2 NOT IN ('COBOL', 'PASCAL');

SELECT DATEDIFF(YEAR, DOB, GETDATE()) AS Age
FROM PROGRAMMER
WHERE GENDER = 'M'
ORDER BY DOB ASC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT AVG(DATEDIFF(YEAR, DOB, GETDATE())) AS AverageAge
FROM PROGRAMMER
WHERE GENDER = 'F';

SELECT PNAME, DATEDIFF(YEAR, DOJ, GETDATE()) AS Experience
FROM PROGRAMMER
ORDER BY Experience DESC;

SELECT PNAME
FROM PROGRAMMER
WHERE MONTH(DOB) = MONTH(GETDATE());

SELECT COUNT(*) AS FemaleProgrammersCount
FROM PROGRAMMER
WHERE GENDER = 'F';

SELECT DISTINCT PROF1 AS Language
FROM PROGRAMMER
WHERE GENDER = 'M'
UNION
SELECT DISTINCT PROF2 AS Language
FROM PROGRAMMER
WHERE GENDER = 'M';

SELECT AVG(SALARY) AS AverageSalary
FROM PROGRAMMER;

SELECT COUNT(*) AS PeopleCount
FROM PROGRAMMER
WHERE SALARY BETWEEN 2000 AND 4000;

SELECT *
FROM PROGRAMMER
WHERE PROF1 NOT IN ('CLIPPER', 'COBOL', 'PASCAL')
  AND PROF2 NOT IN ('CLIPPER', 'COBOL', 'PASCAL');

SELECT PNAME, SUM(DCOST) AS TotalCost
FROM SOFTWARE
GROUP BY PNAME;

SELECT PNAME, SUM(SCOST * SOLD) AS TotalSales
FROM SOFTWARE
GROUP BY PNAME;

SELECT PNAME, SUM(SOLD) AS TotalPackagesSold
FROM SOFTWARE
GROUP BY PNAME;

SELECT PNAME, DEVELOPIN, SUM(SCOST * SOLD) AS SalesCost
FROM SOFTWARE
GROUP BY PNAME, DEVELOPIN;

SELECT DEVELOPIN AS Language,
       AVG(DCOST) AS AvgDevelopmentCost,
       AVG(SCOST) AS AvgSellingCost,
       AVG(SCOST / NULLIF(SOLD,0)) AS AvgPricePerCopy
FROM SOFTWARE
GROUP BY DEVELOPIN;

SELECT P.PNAME, C.CostliestPackage, C.CheapestPackage
FROM (
  SELECT PNAME, MAX(DCOST) AS CostliestPackage, MIN(DCOST) AS CheapestPackage
  FROM SOFTWARE
  GROUP BY PNAME
) AS C
JOIN PROGRAMMER AS P ON C.PNAME = P.PNAME;

SELECT INSTITUTE, COUNT(*) AS NumberOfCourses, AVG(COURSE_FEE) AS AverageCostPerCourse
FROM STUDIES
GROUP BY INSTITUTE;

SELECT INSTITUTE, COUNT(DISTINCT PNAME) AS NumberOfStudents
FROM STUDIES
GROUP BY INSTITUTE;

SELECT PNAME, GENDER
FROM PROGRAMMER;

SELECT S.PNAME, S.TITLE
FROM SOFTWARE AS S
JOIN PROGRAMMER AS P ON S.PNAME = P.PNAME;

SELECT DEVELOPIN, COUNT(*) AS NumberOfPackages
FROM SOFTWARE
WHERE DEVELOPIN NOT IN ('C', 'C++')
GROUP BY DEVELOPIN;

SELECT DEVELOPIN AS Language, COUNT(*) AS NumberOfPackages
FROM SOFTWARE
WHERE DCOST < 1000
GROUP BY DEVELOPIN;

SELECT TITLE, AVG(SCOST - DCOST) AS AvgDifference
FROM SOFTWARE
GROUP BY TITLE;

SELECT P.PNAME, SUM(S.SCOST) AS TotalSCost, SUM(S.DCOST) AS TotalDCost, SUM(S.SCOST - S.DCOST) AS AmountToBeRecovered
FROM SOFTWARE AS S
JOIN PROGRAMMER AS P ON S.PNAME = P.PNAME
GROUP BY P.PNAME
HAVING SUM(S.SCOST - S.DCOST) > 0;

SELECT MAX(SALARY) AS HighestSalary, MIN(SALARY) AS LowestSalary, AVG(SALARY) AS AverageSalary
FROM PROGRAMMER
WHERE SALARY > 2000;

SELECT TOP 1 PNAME
FROM PROGRAMMER
WHERE PROF1 = 'C' OR PROF2 = 'C'
ORDER BY SALARY DESC;

SELECT TOP 1 PNAME
FROM PROGRAMMER
WHERE GENDER = 'F' AND (PROF1 = 'COBOL' OR PROF2 = 'COBOL')
ORDER BY SALARY DESC;

SELECT S.DEVELOPIN AS Language, P.PNAME
FROM SOFTWARE AS S
JOIN PROGRAMMER AS P ON S.PNAME = P.PNAME
WHERE S.SCOST = (
    SELECT MAX(SCOST)
    FROM SOFTWARE
    WHERE DEVELOPIN = S.DEVELOPIN
)
GROUP BY S.DEVELOPIN, P.PNAME;

SELECT TOP 1 PNAME
FROM PROGRAMMER
ORDER BY DOJ ASC;

SELECT TOP 1 PNAME
FROM PROGRAMMER
WHERE GENDER = 'M' AND (PROF1 = 'PASCAL' OR PROF2 = 'PASCAL')
ORDER BY DATEDIFF(YEAR, DOJ, GETDATE()) DESC;

SELECT DEVELOPIN AS Language
FROM SOFTWARE
GROUP BY DEVELOPIN
HAVING COUNT(DISTINCT PNAME) = 1;

SELECT TOP 1 P.PNAME
FROM PROGRAMMER AS P
JOIN SOFTWARE AS S ON P.PNAME = S.PNAME
WHERE S.DEVELOPIN IN (
    SELECT DEVELOPIN
    FROM SOFTWARE
    GROUP BY DEVELOPIN
    HAVING COUNT(DISTINCT PNAME) = 1
)
ORDER BY P.PNAME;

SELECT TOP 1 PNAME
FROM PROGRAMMER
WHERE PROF1 = 'DBASE' OR PROF2 = 'DBASE'
ORDER BY DOB ASC;

SELECT PNAME, DATEDIFF(YEAR, DOB, GETDATE()) AS Age
FROM PROGRAMMER
WHERE PROF1 = 'DBASE' OR PROF2 = 'DBASE'
ORDER BY DOB ASC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT PNAME
FROM PROGRAMMER
WHERE GENDER = 'F'
  AND SALARY > 3000
  AND PNAME NOT IN (
    SELECT PNAME
    FROM PROGRAMMER
    WHERE PROF1 IN ('C', 'C++', 'ORACLE', 'DBASE')
       OR PROF2 IN ('C', 'C++', 'ORACLE', 'DBASE')
  );

SELECT INSTITUTE, COUNT(DISTINCT PNAME) AS NumberOfStudents
FROM STUDIES
GROUP BY INSTITUTE
ORDER BY COUNT(DISTINCT PNAME) DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT COURSE, COURSE_FEE
FROM STUDIES
ORDER BY COURSE_FEE DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT COURSE, COUNT(*) AS NumberOfStudents
FROM STUDIES
GROUP BY COURSE
ORDER BY COUNT(*) DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT INSTITUTE, COURSE, COURSE_FEE
FROM STUDIES
WHERE COURSE_FEE = (
  SELECT MAX(COURSE_FEE)
  FROM STUDIES
);

SELECT S.INSTITUTE, S.COURSE, S.COURSE_FEE
FROM STUDIES AS S
JOIN (
  SELECT AVG(COURSE_FEE) AS AvgCourseFee
  FROM STUDIES
) AS A ON S.COURSE_FEE < A.AvgCourseFee;

SELECT COURSE
FROM STUDIES
WHERE COURSE_FEE BETWEEN (SELECT AVG(COURSE_FEE) - 1000 FROM STUDIES) AND (SELECT AVG(COURSE_FEE) + 1000 FROM STUDIES);

SELECT TITLE, DCOST AS DevelopmentCost
FROM SOFTWARE
ORDER BY DCOST DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT COURSE
FROM STUDIES
GROUP BY COURSE
HAVING COUNT(DISTINCT PNAME) < (SELECT AVG(NumberOfStudents) FROM (SELECT COUNT(DISTINCT PNAME) AS NumberOfStudents FROM STUDIES GROUP BY COURSE) AS AvgStudents);

SELECT TITLE, SOLD
FROM SOFTWARE
ORDER BY SOLD ASC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT TOP 1 PNAME
FROM SOFTWARE
WHERE SOLD = (SELECT MIN(SOLD) FROM SOFTWARE)
ORDER BY SOLD;

SELECT TOP 1 DEVELOPIN
FROM SOFTWARE
WHERE SCOST+DCOST = (SELECT MAX(SCOST+DCOST) FROM SOFTWARE)
ORDER BY DEVELOPIN;

SELECT TITLE, SCOST
FROM SOFTWARE
WHERE DEVELOPIN = 'PASCAL'
ORDER BY SCOST DESC
OFFSET 0 ROWS FETCH NEXT 1 ROWS ONLY;

SELECT P.PNAME, P.PROF1, P.PROF2, TotalPackages.NumberOfPackages
FROM PROGRAMMER P
INNER JOIN (
    SELECT PNAME, COUNT(*) AS NumberOfPackages
    FROM SOFTWARE
    GROUP BY PNAME
) TotalPackages ON P.PNAME = TotalPackages.PNAME
WHERE TotalPackages.NumberOfPackages = (SELECT MAX(NumberOfPackages) FROM (SELECT PNAME, COUNT(*) AS NumberOfPackages FROM SOFTWARE GROUP BY PNAME) AS Packages);

SELECT S.PNAME
FROM SOFTWARE S
INNER JOIN (
    SELECT MAX(SCOST) AS MaxSellingCost
    FROM SOFTWARE
) MaxCost ON S.SCOST = MaxCost.MaxSellingCost;

SELECT TITLE
FROM SOFTWARE
WHERE SOLD < (SELECT AVG(SOLD) FROM SOFTWARE);

SELECT P.PNAME
FROM PROGRAMMER P
INNER JOIN (
    SELECT PNAME
    FROM SOFTWARE
    GROUP BY PNAME
    HAVING SUM(DCOST) > 2 * SUM(SCOST)
) RecoveredCost ON P.PNAME = RecoveredCost.PNAME;

SELECT P.PNAME, S.TITLE
FROM PROGRAMMER P
INNER JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE S.SCOST = (
    SELECT MIN(SCOST)
    FROM SOFTWARE
    WHERE DEVELOPIN = S.DEVELOPIN
)
GROUP BY P.PNAME, S.TITLE;

SELECT PROGRAMMER.PNAME, PROF1 AS Language_Highest_Selling, PROF2 AS Language_Lowest_Selling
FROM PROGRAMMER
INNER JOIN SOFTWARE ON PROGRAMMER.PNAME = SOFTWARE.PNAME
WHERE SOLD = (
  SELECT MAX(SOLD) FROM SOFTWARE
) OR SOLD = (
  SELECT MIN(SOLD) FROM SOFTWARE
);

SELECT PNAME, DOB
FROM PROGRAMMER
WHERE GENDER = 'M' AND DOB = (
  SELECT MIN(DOB) FROM PROGRAMMER WHERE GENDER = 'M' AND DOB >= '1965-01-01' AND DOB <= '1965-12-31'
);

SELECT TOP 1 PNAME, DOB
FROM PROGRAMMER
WHERE GENDER = 'F' AND DOJ >= '1992-01-01' AND DOJ <= '1992-12-31'
ORDER BY DOB ASC;

SELECT DATEPART(YEAR, DOB) AS BirthYear, COUNT(*) AS NumProgrammers
FROM PROGRAMMER
GROUP BY DATEPART(YEAR, DOB)
ORDER BY NumProgrammers DESC
OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY;

SELECT MONTH(DOJ) AS JoinMonth, COUNT(*) AS NumProgrammers
FROM PROGRAMMER
GROUP BY MONTH(DOJ)
ORDER BY NumProgrammers DESC
OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY;

SELECT PROF1 AS Language, COUNT(*) AS NumProgrammers
FROM PROGRAMMER
GROUP BY PROF1
ORDER BY NumProgrammers DESC
OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY;

SELECT PNAME, SALARY
FROM PROGRAMMER
GROUP BY PNAME, SALARY
HAVING COUNT(*) > 1;

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'M' AND P.SALARY > 3000;

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'F' AND (P.PROF1 = 'PASCAL' OR P.PROF2 = 'PASCAL');

SELECT *
FROM PROGRAMMER
WHERE YEAR(DOJ) < 1990;

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
INNER JOIN STUDIES ON P.PNAME = STUDIES.PNAME
WHERE P.GENDER = 'F' AND P.PROF1 = 'C' AND STUDIES.INSTITUTE = 'PRAGATHI';

SELECT STUDIES.INSTITUTE, COUNT(*) AS NumPackages, SUM(S.SOLD) AS TotalSold, SUM(S.SCOST * S.SOLD) AS SalesValue
FROM STUDIES
INNER JOIN SOFTWARE S ON STUDIES.PNAME = S.PNAME
GROUP BY STUDIES.INSTITUTE;

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN STUDIES ON S.PNAME = STUDIES.PNAME
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'M' AND STUDIES.INSTITUTE = (SELECT INSTITUTE FROM STUDIES GROUP BY INSTITUTE ORDER BY COUNT(*) DESC OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY )
  AND S.DEVELOPIN = 'DBASE';

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE (P.GENDER = 'M' AND P.DOB < '1965-01-01') OR (P.GENDER = 'F' AND P.DOB > '1975-12-31');

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE S.DEVELOPIN NOT IN (P.PROF1, P.PROF2);

SELECT S.TITLE, S.DEVELOPIN, S.SCOST, S.DCOST, S.SOLD
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
INNER JOIN STUDIES ON P.PNAME = STUDIES.PNAME
WHERE P.GENDER = 'M' AND STUDIES.INSTITUTE = 'SABHARI';

SELECT P.PNAME
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE S.PNAME IS NULL;

SELECT SUM(SCOST + DCOST) AS TotalCost
FROM SOFTWARE
WHERE PNAME IN (SELECT PNAME FROM STUDIES WHERE INSTITUTE = 'APPLE');

SELECT P1.PNAME, P2.PNAME
FROM PROGRAMMER P1
INNER JOIN PROGRAMMER P2 ON P1.PNAME <> P2.PNAME AND P1.DOJ = P2.DOJ;

SELECT P1.PNAME, P2.PNAME
FROM PROGRAMMER P1
INNER JOIN PROGRAMMER P2 ON P1.PNAME <> P2.PNAME AND P1.PROF2 = P2.PROF2;

SELECT STUDIES.INSTITUTE, SUM(S.SCOST * S.SOLD) AS TotalSalesValue
FROM STUDIES
INNER JOIN SOFTWARE S ON STUDIES.PNAME = S.PNAME
GROUP BY STUDIES.INSTITUTE;

SELECT STUDIES.INSTITUTE
FROM STUDIES
INNER JOIN SOFTWARE S ON STUDIES.PNAME = S.PNAME
WHERE (SCOST + DCOST) = (SELECT TOP 1 (SCOST + DCOST) FROM SOFTWARE ORDER BY (SCOST + DCOST) DESC);

SELECT DISTINCT PROF1 AS Language
FROM PROGRAMMER
WHERE PROF1 NOT IN (SELECT DEVELOPIN FROM SOFTWARE)
UNION
SELECT DISTINCT PROF2 AS Language
FROM PROGRAMMER
WHERE PROF2 NOT IN (SELECT DEVELOPIN FROM SOFTWARE);

SELECT P.PNAME, P.SALARY, STUDIES.COURSE
FROM PROGRAMMER P
INNER JOIN STUDIES ON P.PNAME = STUDIES.PNAME
WHERE P.PNAME = (SELECT PNAME FROM SOFTWARE ORDER BY SOLD DESC OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY);

SELECT AVG(P.SALARY) AS AvgSalary
FROM PROGRAMMER P
INNER JOIN SOFTWARE S ON P.PNAME = S.PNAME
WHERE (S.SCOST * S.SOLD) > 50000;

SELECT COUNT(*) AS PackageCount
FROM SOFTWARE S
INNER JOIN STUDIES ST ON S.PNAME = ST.PNAME
WHERE ST.INSTITUTE = (SELECT INSTITUTE FROM STUDIES ORDER BY COURSE_FEE ASC OFFSET 0 ROWS FETCH FIRST 1 ROWS ONLY);

SELECT COUNT(*) AS PackageCount, ST.INSTITUTE
FROM SOFTWARE S
INNER JOIN STUDIES ST ON S.PNAME = ST.PNAME
WHERE (S.SCOST + S.DCOST) = (SELECT MIN(SCOST + DCOST) FROM SOFTWARE)
GROUP BY ST.INSTITUTE;

SELECT COUNT(*) AS PackageCount
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
WHERE P.GENDER = 'F' AND P.SALARY > (SELECT MAX(SALARY) FROM PROGRAMMER WHERE GENDER = 'M');

SELECT COUNT(*) AS PackageCount
FROM SOFTWARE S
INNER JOIN PROGRAMMER P ON S.PNAME = P.PNAME
INNER JOIN STUDIES ST ON P.PNAME = ST.PNAME
WHERE ST.INSTITUTE = 'BDPS' AND P.DOJ = (SELECT MIN(DOJ) FROM PROGRAMMER WHERE PNAME = P.PNAME);

SELECT S.PNAME, ST.INSTITUTE
FROM SOFTWARE S
INNER JOIN STUDIES ST ON S.PNAME = ST.PNAME;

SELECT P.PROF1 AS PROF, COUNT(DISTINCT P.PNAME) AS NumProgrammers, COUNT(S.PNAME) AS NumPackages
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
GROUP BY P.PROF1
UNION
SELECT P.PROF2 AS PROF, COUNT(DISTINCT P.PNAME) AS NumProgrammers, COUNT(S.PNAME) AS NumPackages
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
GROUP BY P.PROF2;

SELECT P.PNAME, COUNT(S.PNAME) AS NumPackages
FROM PROGRAMMER P
LEFT JOIN SOFTWARE S ON P.PNAME = S.PNAME
GROUP BY P.PNAME;














































































































