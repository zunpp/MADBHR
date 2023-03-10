USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_Select]    Script Date: 03/02/2023 3:59:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Pension_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@DivisionCode nvarchar(50)=null,
	@TownshipCode nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT pn.[PensionPkid]
      ,pn.[BranchCode]
	  ,pn.[DepartmentCode]
	  ,pn.[RankTypeCode]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(pn.[EmployeeCode],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'EmployeeCode'
	  ,pn.[Name]
	  ,[FatherName]
	  ,pn.[RankType]
	  ,[Department]
	  --, case when (SELECT t.Township FROM TB_Employee AS e inner join TB_JobHistory AS jh on e.EmployeeCode=jh.EmployeeCode, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and jh.IsDeleted=0 and  jh.ToDate is null and e.EmployeeCode=emp.SerialNumber AND  e.IsDeleted=0) is null then '' else (SELECT t.Township FROM TB_Employee AS e inner join TB_JobHistory AS jh on e.EmployeeCode=jh.EmployeeCode, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and jh.IsDeleted=0 and  jh.ToDate is null and e.SerialNumber=emp.SerialNumber and e.IsDeleted=0) end AS 'Department'
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),pn.[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'DateOfBirth'
	  --,[PensionReportNo]
	  --,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[PensionReportNo],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'PensionReportNo'
	  ,pn.[PensionReportNo]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[PensionDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'PensionDate'
	  ,(select pt.PensionType from TB_Pension As p,TB_PensionType pt where p.PensionTypeCode=pt.PensionTypeCode AND pn.EmployeeCode=p.EmployeeCode AND p.IsDeleted=0) As 'PensionType'
	  ,pn.[PensionTypeCode]
	  ,pn.[LatestSalary]
	  ,pn.[MonthlyPension]
	  ,pn.[Saving]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[PensionStartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'PensionStartDate'
      , pn.[PensionBank]
	  ,pn.[Remark]
	  ,pn.[IsDeleted]
      ,pn.[ModifiedDate],pn.[CreatedDate],pn.[CreatedBy],emp.[Name],div.StateDivision,td.TownName As Township
  FROM [TB_Pension] As pn Inner join TB_Employee emp on emp.EmployeeCode=pn.EmployeeCode
  inner join  [TB_CurrentJob_Township] tw ON emp.Occupation=tw.TownshipCode 
  Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
  Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
  Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
  Left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
  WHERE
  (@EmployeeCode is null or pn.EmployeeCode=@EmployeeCode) AND
   (@DivisionCode is null Or div.StateDivisionCode=@DivisionCode) AND
  (@TownshipCode is null Or tw.TownshipCode=@TownshipCode) And
   emp.IsDeleted=0 and pn.IsDeleted=0
	
END
