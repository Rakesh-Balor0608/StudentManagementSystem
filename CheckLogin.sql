USE [ProjectDatabase]
GO
/****** Object:  StoredProcedure [dbo].[CheckLogin]    Script Date: 27-04-2023 20:00:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Rakesh Kashyap
-- Description:	To check the Login credentials of the users
-- =============================================
ALTER PROCEDURE [dbo].[CheckLogin] 
	-- Add the parameters for the stored procedure here
	 @LoginId VARCHAR(20)
	,@Password NVARCHAR(MAX)
	,@Result int out
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS (SELECT TOP 1 UserId FROM [dbo].[UserMaster] WHERE UserId=@LoginId)
    BEGIN
        DECLARE @userID VARCHAR(20)=(SELECT UserId FROM [dbo].[UserMaster] WHERE UserId=@LoginId AND [Password]=HASHBYTES('SHA2_512',@Password))

       IF(@userID IS not NULL)
			BEGIN
				set @Result=0
			END
       ELSE 
			BEGIN
				set @Result=1
			END
    END
    ELSE
			BEGIN
				set @Result=2
			END
END
