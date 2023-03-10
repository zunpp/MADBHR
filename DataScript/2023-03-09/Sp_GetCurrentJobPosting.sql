USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetCurrentJobPosting]    Script Date: 09/03/2023 10:48:22 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_GetCurrentJobPosting] 
	-- Add the parameters for the stored procedure here@DivisionCode nvarchar(50)=null,
	 @DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null,
     @EmployeeCode nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN
   SELECT JobHistoryPkid
      ,jp.[EmployeeCode]
	  --,BranchCode
	  --,DepartmentCode
	  --,[RankTypeCode]
	  ,DepartmentName
	  ,case when (SELECT top(1) t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and t.TownshipCode=jp.DepartmentName and jh.IsDeleted=0 and t.Active=1) is null then '' else (SELECT top(1)  t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and t.TownshipCode=jp.DepartmentName and jh.IsDeleted=0 and t.Active=1) end AS 'Department_Name'
	  ,rt.RankType as 'RankType'
	  ,[RankType_Code]
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'ToDate'
	  --,CONVERT(NVARCHAR(20),Duration)+ N' ရက်' As 'Duration'
	   --, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([Duration],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Duration'
	   --,CONVERT(NVARCHAR(20),Job_Year) As 'Job_Year'
	   --,CONVERT(NVARCHAR(20),Job_Month) As 'Job_Month'
	   --,CONVERT(NVARCHAR(20),Job_Day) As 'Job_Day'

	   ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),Job_Year)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Job_Year'
	    ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),Job_Month)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Job_Month'
		 ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),Job_Day)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Job_Day'
		 ,Duration
		 ,Remark
		 ,IsCurrent
		 ,jp.IsDeleted
		 ,jp.ModifiedDate
		 ,jp.CreatedDate
		 ,jp.CreatedBy
		 ,emp.[Name],div.StateDivision,td.TownName As Township
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  join TB_Employee emp on emp.EmployeeCode=jp.EmployeeCode
  Left join  [TB_CurrentJob_Township] tw ON jp.DepartmentCode=tw.TownshipCode 
  Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
  Left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship

  WHERE 
  (@EmployeeCode is null or jp.EmployeeCode=@EmployeeCode) 
  --And (@FromDate is null Or Convert(date,jp.FromDate)>=Convert(date,@FromDate))
  --And (@ToDate is null Or Convert(date,jp.ToDate)<=Convert(date,@ToDate))
  And (@DivisionCode is null Or div.StateDivisionCode=@DivisionCode) 
  And (@TownshipCode is null Or tw.TownshipCode=@TownshipCode)
 
  And jp.IsDeleted=0 And jp.IsCurrent=1 and emp.IsActive='Active' and emp.IsDeleted=0 and emp.[Status]='Approve'
   END
END




