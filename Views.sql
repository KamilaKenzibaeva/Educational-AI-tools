CREATE VIEW [dbo].[AllToolsData]
AS
SELECT 
    t.Name AS ToolName,
    t.Focus_on_Education,
    t.Website,
    c.Name AS CompanyName,
    c.Location AS CompanyLocation,
    cat.Name AS CategoryName,
    tp.Free_version_available,
    tp.Price_per_user_year,
    tp.Price_Notes,
    prot.Does_it_promise_Tools_protection_of_user_data,
    prot.Data_used_for_company,
    prot.Transferred_for_third_party,
    prot.Details_on_data_protection,
    prot.Data_protection_link,
    r.Review_score,
    r.Number_of_reviewers,
    r.Review_link,
    f.Name AS FunctionName,
    af.Description AS AdditionFunctionDescription,
    p.Name AS PlatformName,
    tr.Name AS TrainingName
FROM 
    [dbo].[Tools] t
    LEFT JOIN [dbo].[Company] c ON t.ID_Company = c.ID
    LEFT JOIN [dbo].[Category] cat ON t.ID_Category = cat.ID
    LEFT JOIN [dbo].[Tools price] tp ON t.ID_Price = tp.ID
    LEFT JOIN [dbo].[Tools protection] prot ON t.ID_Protection = prot.ID
    LEFT JOIN [dbo].[Tools Review] r ON t.ID_Review = r.ID
    LEFT JOIN [dbo].[Functions] f ON t.ID_Function = f.ID
    LEFT JOIN [dbo].[Addition functions] af ON t.ID_Addition_functions=af.ID
    LEFT JOIN [dbo].[Tools_Platforms] tp2 ON t.ID = tp2.ID_tools
    LEFT JOIN [dbo].[Platforms] p ON tp2.ID_Platform = p.ID
    LEFT JOIN [dbo].[Tools_Traning] tt ON t.ID = tt.ID_tools
    LEFT JOIN [dbo].[Traning] tr ON tt.ID_Traning = tr.ID;
GO


CREATE VIEW [dbo].[ToolOverview]
AS
SELECT 
    t.Name AS ToolName,
    c.Name AS CompanyName,
    t.Website,
    tp.Price_per_user_year,
    prot.Data_protection_link,
    f.Name AS FunctionName
FROM 
    [dbo].[Tools] t
    LEFT JOIN [dbo].[Company] c ON t.ID_Company = c.ID
    LEFT JOIN [dbo].[Tools price] tp ON t.ID_Price = tp.ID
    LEFT JOIN [dbo].[Tools protection] prot ON t.ID_Protection = prot.ID
    LEFT JOIN [dbo].[Functions] f ON t.ID_Function = f.ID;
GO

CREATE VIEW [dbo].[CompaniesWithMultipleTools]
AS
SELECT 
    c.Name AS CompanyName,
    t.Name AS ToolName,
    f.Name AS FunctionName
FROM 
    [dbo].[Company] c
    INNER JOIN [dbo].[Tools] t ON c.ID = t.ID_Company
    LEFT JOIN [dbo].[Functions] f ON t.ID_Function = f.ID
WHERE 
    c.ID IN (
        SELECT ID_Company
        FROM [dbo].[Tools]
        GROUP BY ID_Company
        HAVING COUNT(ID) > 1
    );
GO
