USE [ProjectDatabase]
GO
/****** Object:  StoredProcedure [dbo].[GetList]    Script Date: 27-04-2023 20:01:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rakesh Kashyap B S
-- Create date: 23-04-2023
-- Description:	To get data for Grid
-- =============================================
ALTER PROCEDURE [dbo].[GetList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
			 SELECT  [UserId] as Id
					,[UserName] as [Name]
					,[Age]
					,[Email] as EmailId

			 FROM [dbo].[UserMaster]
END
