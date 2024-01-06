use [Academy];

SELECT * FROM [Departments] ORDER BY [Id] DESC;

SELECT [Name], [Rating] FROM [Groups];

SELECT [Surname], ([Premium] / [Salary] * 100) AS 'percent_of_premium_rate', (1 + [Premium] / [Salary]) * 100 AS 'percent_of_total_rate' FROM [Teachers];

SELECT CONCAT('The Dean Of Faculty : ', [Name], ' is ', [Dean], '.') AS 'faculty_info' FROM [Faculties];

SELECT * FROM [Teachers] WHERE [Salary] > 1050 AND [IsProfessor] = 1;

SELECT [Name] FROM [Departments] WHERE [Financing] > 25000 OR [Financing] < 11000;

SELECT [Name] FROM [Faculties] WHERE [Name] != 'Computer Science';

SELECT [Surname], [Position] FROM [Teachers] WHERE [IsProfessor] = 0;

SELECT [Surname], [Position], [Salary], [Premium] FROM [Teachers] WHERE [IsAssistant] = 1 AND [Premium] BETWEEN 160 AND 550;

SELECT [Surname], [Position] FROM [Teachers] WHERE [IsAssistant] = 1;

SELECT [Surname], [Position] FROM [Teachers] WHERE [EmploymentDate] < '2000-01-01';

SELECT [Name] FROM [Departments] WHERE [Name] < 'Software Development' ORDER BY [Name] ASC;

SELECT [Surname] FROM [Teachers] WHERE [IsAssistant] = 1 AND [Salary] + [Premium] <= 1200;

SELECT [Name] FROM [Groups] WHERE [Year] = 5 AND [Rating] < 5 AND [Rating] > 1;

SELECT [Surname], [Salary] FROM [Teachers] WHERE [IsAssistant] = 1 AND ([Salary] < 550 OR [Premium] < 200);
