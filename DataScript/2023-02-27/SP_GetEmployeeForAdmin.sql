USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeeForAdmin]    Script Date: 27/02/2023 1:07:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetEmployeeForAdmin]
	-- Add the parameters for the stored procedure here
	@DivisionCode nvarchar(50)=null,
	@TownshipCode nvarchar(50)=null,
	@Status nvarchar(50)=null,
	@Name nvarchar(50)=null,
	@SerialNumber nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT distinct [EmployeePkid]
      ,emp.[EmployeeCode] 
	
        ,rt.RankType As 'CurrentRank'
	   ,SerialNumber
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber_Myan'
	  ,[Name],[Father_Name],[Mother_Name],[Gender],[Religion]
      ,[Race]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([NRCNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'NRCNumber'
	  ,case when PlaceOfBirth is null then '' else PlaceOfBirth end AS 'PlaceOfBirth'
	  ,edt.EducationType	  
	  ,edt.EducationTypeCode
	  ,td.TownName AS 'PlaceOfBirthName'
	  ,[Occupation]
	  ,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
      ,[EyeColor],[Height],[Mark],[OtherName]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'

		,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jp.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'CurrentRankDate'
      ,emp.TownshipCode
	  ,td.TownName As Township
	  ,tw.Township As OccupationName
	  	  ,(SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25))) 'Age'
	  ,[Address],[DearestPerson],[Ancestor],[IsActive],emp.[IsDeleted],emp.IsRecordEdited
      ,emp.[ModifiedDate],emp.[CreatedDate],emp.[CreatedBy],div.StateDivision,emp.[Status],emp.RejectComment,emp.EditRequest ,emp.EditComment,emp.DeleteRequest
  FROM [TB_Employee]  emp 
  inner join  [TB_CurrentJob_Township] tw ON emp.Occupation=tw.TownshipCode 
  Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
  Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
  Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
  Left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
  Left join TB_EducationType edt on edt.EducationTypeCode=emp.EducationTypeCode

  WHERE 
  (@DivisionCode is null Or div.StateDivisionCode=@DivisionCode) AND
  (@TownshipCode is null Or tw.TownshipCode=@TownshipCode) AND
  (@Status is null or emp.[Status]=@Status)AND
  (@Name is null or emp.[Name]=@Name)AND
  (@SerialNumber is null or emp.SerialNumber=@SerialNumber)
  
   And emp.IsDeleted=0 AND (IsActive IN ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ'))
END
