USE [ProjectDatabase]
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserData]    Script Date: 27-04-2023 20:01:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rakesh Kashyap B S
-- Create date: 23-04-2023
-- Description:	To update the data
-- =============================================
ALTER PROCEDURE [dbo].[UpdateUserData] 
	-- Add the parameters for the stored procedure here
	@List NVARCHAR(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @Id VARCHAR(10)= (select id FROM OPENJSON(@List) WITH (id VARCHAR(20)))
	DECLARE @Name VARCHAR(100)= (select [Name] FROM OPENJSON(@List) WITH ([Name] VARCHAR(100)))
	DECLARE @Email VARCHAR(100)= (select Email FROM OPENJSON(@List) WITH (Email VARCHAR(100)))
	DECLARE @LoginId VARCHAR(10)=(select LoginId FROM OPENJSON(@List) WITH (LoginId VARCHAR(20)))
	UPDATE [dbo].[UserMaster]
   SET 
       [UserName] = @Name
      ,[Email] = @Email
	  ,[ModifiedBy]=@LoginId
	  ,ModifiedDate=GETDATE()
   WHERE UserId=@Id
END
