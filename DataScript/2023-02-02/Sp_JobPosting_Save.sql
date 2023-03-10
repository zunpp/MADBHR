USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_Save]    Script Date: 03/02/2023 11:26:58 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_JobPosting_Save]
	-- Add the parameters for the stored procedure here
	 @id int=null
	,@pkid nvarchar(50)=null
	,@EmployeeCode nvarchar(50)=null
    ,@DepartmentCode nvarchar(50)=null
    ,@RankType nvarchar(50)=null
    ,@FromDate datetime=null
    ,@ToDate datetime=null
   --,@Duration decimal(18,2)
    ,@years decimal(18,0)=null
    ,@months decimal(18,0)=null
    ,@days decimal(18,0)=null
    ,@Duration decimal(18,0)=null
    ,@Remark nvarchar(500)=null
    ,@IsCurrent bit=null
    ,@IsDeleted bit=null
    ,@CreatedBy int=null
	,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	SET NOCOUNT ON;

	If  @IsCurrent=1
	BEGIN
	UPDATE [dbo].TB_Employee
	set TownshipCode=@DepartmentCode,Occupation=@DepartmentCode
	where SerialNumber=@EmployeeCode 
	END 


	If @id=0 
	BEGIN
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TB_JobHistory]
	([EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,[DepartmentName]
	,[RankType_Code]
	,[FromDate]
	,[ToDate]
	--,[Duration]
	,[Job_Year]
	,[Job_Month]
	,[Job_Day]
	,Duration
	,[Remark]
	,[IsCurrent]
	,[IsDeleted]
	,[IsRecordEdited]
	,[CreatedDate]
	,[CreatedBy]
	,[UploadForTownship])
	VALUES
	(@EmployeeCode
	,''
	,@DepartmentCode
	,''
	,@DepartmentCode
	,@RankType
	,@FromDate
	,@ToDate
	--,@Duration
	,@years
	,@months
	 ,@days
	 ,DATEDIFF(DAY,@FromDate,@ToDate)
	--,DIFFERENCE(@FromDate,@ToDate)
	,@Remark
	,@IsCurrent
	,@IsDeleted
	,1
	,CURRENT_TIMESTAMP
	,@CreatedBy
	,@UploadForTownship)

END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_JobHistory]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      ,[DepartmentName]=@DepartmentCode
	  ,[RankType_Code]=@RankType
	  ,[FromDate]=@FromDate
	  ,[ToDate] = @ToDate
	  --,[Duration] =DIFFERENCE(@FromDate,@ToDate)
	  --,[Duration]=@Duration
	  ,[Job_Year]=@years
	  ,[Job_Month]=@months
	  ,[Job_Day]=@days
	  ,[Duration]=@Duration
	  ,[Remark]=@Remark
	  ,[IsCurrent]=@IsCurrent
      ,[IsDeleted]=@IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] =CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE  JobHistoryPkid=@pkid
	END

	
END

