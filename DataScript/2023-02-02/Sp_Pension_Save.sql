USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_Save]    Script Date: 03/02/2023 4:20:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Pension_Save]
	-- Add the parameters for the stored procedure here
	  @pkid int
	 ,@OriginalEmployeeNo nvarchar(50)=null
	 ,@EmployeeCode nvarchar(50)=null
	 ,@Name nvarchar(50)=null
     ,@FatherName nvarchar(50)=null
	 ,@RankType nvarchar(50)=null
	 ,@Department nvarchar(100)=null
	 ,@DateOfBirth datetime=null
	 ,@PensionReportNo nvarchar(50)=null
	 ,@PensionDate datetime=null
	 ,@PensionType nvarchar(50)=null
	 ,@LatestSalary nvarchar(50)=null
	 ,@MonthlyPension nvarchar(50)=null
	 ,@Saving nvarchar(50)=null
	 ,@PensionStartDate datetime=null
	 ,@PensionBank nvarchar(50)=null
	 ,@Remark nvarchar(50)=null
	 ,@IsDeleted bit=null
	 ,@CreatedBy int =null
	 ,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	IF @pkid=0
	BEGIN
	INSERT INTO [dbo].[TB_Pension]
          ( [BranchCode]
           ,[DepartmentCode]
           ,[RankTypeCode]
		   ,[EmployeeCode]
           ,[Name]
           ,[FatherName]
           ,[RankType]
           ,[Department]
           ,[DateOfBirth]
           ,[PensionReportNo]
           ,[PensionDate]
           ,[PensionTypeCode]
           ,[LatestSalary]
           ,[MonthlyPension]
		   ,[Saving]
		   ,[PensionStartDate]
		   ,[PensionBank]
		   ,[Remark]
           ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (''
           ,''
           ,''
		   ,@EmployeeCode
		   ,@Name
		   ,@FatherName
           ,@RankType
           ,@Department
           ,@DateOfBirth
           ,@PensionReportNo
           ,@PensionDate
           ,@PensionType
           ,@LatestSalary
           ,@MonthlyPension
		   ,@Saving
		   ,@PensionStartDate
		   ,@PensionBank
		   ,@Remark
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	
	UPDATE [dbo].[TB_Pension]
   SET  [BranchCode]=''
     ,[DepartmentCode]=''
     ,[RankTypeCode]=''
	 ,[EmployeeCode]=@EmployeeCode
     ,[Name]=@Name
     ,[FatherName]=@FatherName
	 ,[RankType]=@RankType
	 ,[Department]=@Department
	 ,[DateOfBirth]=@DateOfBirth
	 ,[PensionReportNo]=@PensionReportNo
	 ,[PensionDate]=@PensionDate
	 ,[PensionTypeCode]=@PensionType
	 ,[LatestSalary]=@LatestSalary
	 ,[MonthlyPension]=@MonthlyPension
	 ,[Saving]=@Saving
	 ,[PensionStartDate]=@PensionStartDate
	 ,[PensionBank]=@PensionBank
	 ,[Remark]=@Remark
	 ,[IsDeleted]=@IsDeleted
	 ,[IsRecordEdited]=1
	 ,[ModifiedDate]=CURRENT_TIMESTAMP
	 ,[CreatedBy]=@CreatedBy
 WHERE EmployeeCode=@EmployeeCode
	END
END
