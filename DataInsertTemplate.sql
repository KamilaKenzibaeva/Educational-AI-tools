---Addition functions
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Addition functions];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Addition functions] (ID,Description)
VALUES (NEXT VALUE FOR dbo.MySequence,'Description');

---Category
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Category];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Category] (ID,Name)
VALUES (NEXT VALUE FOR dbo.MySequence,'Category Name');

---Company
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Company];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Company] (ID,Name, Location)
VALUES (NEXT VALUE FOR dbo.MySequence,'Company Name', 'Location');

---Functions
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Functions];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Functions] (ID,Name)
VALUES (NEXT VALUE FOR dbo.MySequence,'Function');

---Platforms
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Platforms];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Platforms] (ID, Name)
VALUES (NEXT VALUE FOR dbo.MySequence, 'Platform');


---Tools
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Tools];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Tools] (ID,Name, ID_Price, ID_Function,ID_Addition_functions, Focus_on_Education, ID_Protection, ID_Company, ID_Category, Website, ID_Review)
VALUES (NEXT VALUE FOR dbo.MySequence,'Tool Name', 1, 1,1, 'Yes', 1, 1, 1, 'http://example.com', 1);

---Tools price
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Tools price];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Tools price] (ID,Free_version_available, Price_per_user_year, Price_Notes)
VALUES (NEXT VALUE FOR dbo.MySequence,'Yes', 100, 'Price Notes');

---Tools protection
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Tools protection];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Tools protection] (ID,Does_it_promise_Tools_protection_of_user_data, Data_used_for_company, Transferred_for_third_party, Details_on_data_protection, Data_protection_link)
VALUES (NEXT VALUE FOR dbo.MySequence,'Yes', 'Yes', 'No', 'Details on data protection', 'http://example.com/data_protection');

---Tools Review
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Tools Review];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Tools Review] (ID,Review_score, Number_of_reviewers, Review_link)
VALUES (NEXT VALUE FOR dbo.MySequence,4.5, 100, 'http://example.com/review');

---Tools_Platforms
INSERT INTO dbo.Tools_Platforms (ID_tools, ID_Platform)
VALUES (1, 1);

---Traning
---Find the maximum ID and create a sequence dynamically
DECLARE @maxID INT;
DECLARE @sql NVARCHAR(MAX);
SELECT @maxID = ISNULL(MAX(ID), 0) FROM [dbo].[Traning];
IF OBJECT_ID('dbo.MySequence', 'SO') IS NOT NULL
    DROP SEQUENCE dbo.MySequence;
SET @sql = N'CREATE SEQUENCE dbo.MySequence
             START WITH ' + CAST(@maxID + 1 AS NVARCHAR(20)) + '
             INCREMENT BY 1;';
EXEC sp_executesql @sql;
--- Insert data using the sequence
INSERT INTO [dbo].[Traning] (ID,Name)
VALUES (NEXT VALUE FOR dbo.MySequence,'Training type');

---Tools_Traning
INSERT INTO dbo.Tools_Traning (ID_tools, ID_Traning)
VALUES (1, 1);


