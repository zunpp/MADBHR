USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetYearlyBonusForAdmin]    Script Date: 09/03/2023 10:58:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetYearlyBonusForAdmin]
 @DivisionCode nvarchar(50)=null,
 @TownshipCode nvarchar(50)=null,
 @Name nvarchar(50)=null,
 @SerialNumber nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT YearlyBonusPkid
      ,TB_YearlyBonus.[EmployeeCode]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ApprovedDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ApprovedDate'
	   , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([ApprovedNo],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ApprovedNo'
	  ,[YearlyBonusCount]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([YearlyBonusSalary],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'YearlyBonusSalary'
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[YearlyBonusDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'YearlyBonusDate'
	  ,emp.[Name]
	  ,TB_YearlyBonus.IsDeleted
	  ,TB_YearlyBonus.CreatedDate
	  ,TB_YearlyBonus.CreatedBy,div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
  FROM [TB_YearlyBonus] join TB_Employee emp on emp.EmployeeCode=TB_YearlyBonus.EmployeeCode  
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
   TB_YearlyBonus.IsDeleted=0  and emp.IsActive='Active' and emp.IsDeleted=0 and emp.[Status]='Approve'
END
