USE [ProjectDatabase]
GO
/****** Object:  StoredProcedure [dbo].[AddUser]    Script Date: 27-04-2023 20:00:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rakesh Kashyap 
-- Create date: 02-04-2023
-- Description:	To add users into table
-- =============================================
ALTER PROCEDURE [dbo].[AddUser] 
	-- Add the parameters for the stored procedure here
	@Name VARCHAR(50),
	@Password NVARCHAR(MAX),
	@Email NVARCHAR(50),
	@Age INT,
	@CreatedBy VARCHAR(20)
	--@Result NVARCHAR(MAX) OUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	declare @Date DATETIME= (select GETDATE())
    -- Insert statements for procedure here
INSERT INTO [dbo].[UserMaster]
           (
		    [UserName]
           ,[Age]
           ,[Email]
		   ,[Password]
           ,[CreatedBy]
           ,[CreatedDate]
		   )
     VALUES
           (
		    @Name
		   ,@Age
		   ,@Email
		   ,@Password
		   ,@CreatedBy
           ,GETDATE()
		   )

		select(SELECT * FROM [dbo].[UserMaster] where [CreatedDate]=@Date and [CreatedBy]=@CreatedBy  FOR JSON AUTO) as JsonList
END
