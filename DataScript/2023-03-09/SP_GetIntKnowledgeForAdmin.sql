USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetIntKnowledgeForAdmin]    Script Date: 09/03/2023 10:47:15 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetIntKnowledgeForAdmin]
	-- Add the parameters for the stored procedure here
	@DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null,
	 @Name nvarchar(50)=null,
	 @SerialNumber nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT 
	 IntKnowledgePkid
	,TB_IntKnowledge.[EmployeeCode]
	,TB_IntKnowledge.[BranchCode]
	,TB_IntKnowledge.[DepartmentCode]
	,TB_IntKnowledge.[RankTypecode]
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),TB_IntKnowledge.[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),TB_IntKnowledge.[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'FromDate'
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),TB_IntKnowledge.[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),TB_IntKnowledge.[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'ToDate'
	,case when CountryName is null then '' else CountryName end As 'CountryName'
	,Description
	,TB_IntKnowledge.[IsDeleted]
	,TB_IntKnowledge.[ModifiedDate]
	,TB_IntKnowledge.[CreatedDate]
	,TB_IntKnowledge.[CreatedBy]
	,emp.[Name],div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
	FROM [dbo].[TB_IntKnowledge]
	join TB_Employee emp on emp.EmployeeCode=TB_IntKnowledge.EmployeeCode
	left join TB_CurrentJob_Township tw on emp.TownshipCode=tw.TownshipCode
	left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
	left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
	left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
	WHERE 
	 (@DivisionCode is null or div.StateDivisionCode=@DivisionCode) AND
	 (@TownshipCode is null or tw.TownshipCode=@TownshipCode) AND
	 (@Name is null or emp.[Name]=Name) AND
	 (@SerialNumber is null or emp.SerialNumber=@SerialNumber) AND
	TB_IntKnowledge.IsDeleted=0 and emp.IsActive='Active' and emp.IsDeleted=0 and emp.[Status]='Approve'
END
