

-- create PROCEDURE
USE vodafone;  
GO  
CREATE PROCEDURE dbo.linkablauf_5   
     @hash nvarchar(max) 
    -- @FirstName nvarchar(50)   variable 2
AS   

    SET NOCOUNT ON;  
    SELECT Vorname
     FROM [vodafone].[dbo].[CTO_Tour_2018] 
     WHERE hash = @hash
    -- AND EndDate IS NULL;  
GO  


-- run the PROCEDURE 
BEGIN  
    WAITFOR DELAY '0:01';  
    EXECUTE  dbo.linkablauf_5 @hash='D2C6131B9FEBBA3BBBF85A6164862EE1' ;  
END;  
GO  