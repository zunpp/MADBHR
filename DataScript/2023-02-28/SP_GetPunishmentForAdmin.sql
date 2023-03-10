USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPunishmentForAdmin]    Script Date: 28/02/2023 12:51:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetPunishmentForAdmin]
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

    -- Insert statements for procedure here
	SELECT 
	 PunishmentPkid
	,p.[EmployeeCode]
	,P.[BranchCode]
	,P.[DepartmentCode]
	,P.[RankTypecode]
	,OrderDate As 'OrderDate_Eng'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[OrderDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'OrderDate'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([OrderNo],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'OrderNo'
	--,OrderNo
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(NVARCHAR(30),[CrimeYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'CrimeYear'
	--,(select pt.PunishmentType from TB_PunishmentType As pt,TB_Punishment As p where p.PunishmentTypeCode=pt.PunishmentTypeCode) AS 'PunishmentType'
	,pt.PunishmentType As 'PunishmentType'
	,p.[PunishmentTypeCode]
	,Description
	,p.[IsDeleted]
	,p.[ModifiedDate]
	,p.[CreatedDate]
	,p.[CreatedBy]
	,emp.[Name],div.StateDivision,td.TownName as Township,tw.Township As Department,rt.RankType
	FROM [dbo].[TB_Punishment] p
	INNER JOIN TB_PunishmentType pt ON pt.PunishmentTypeCode=p.PunishmentTypeCode
    join TB_Employee emp on emp.EmployeeCode=p.EmployeeCode
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
	 p.IsDeleted=0 
END
