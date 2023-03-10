USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Disposal_Delete]    Script Date: 09/03/2023 10:42:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Disposal_Delete]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TB_Disposal
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @EmployeeCode

	--UPDATE TB_Employee
	--SET IsActive='Active'
	--,CreatedBy=@CreatedBy
	--WHERE EmployeeCode=@EmployeeCode 
END
