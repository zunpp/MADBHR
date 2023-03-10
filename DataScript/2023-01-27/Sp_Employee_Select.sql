USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_Select]    Script Date: 27/01/2023 11:41:44 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[Sp_Employee_Select]

 @Name nvarchar(50)=null,
 @FromDate datetime=null,
 @ToDate datetime=null,
 @SerialNumber nvarchar(50)=null,
 @NRC nvarchar(50)=null,
 @CurrentJobTownshipCode nvarchar(50)=null,
 @FatherName nvarchar(50)=null,
 @RankTypeCode nvarchar(50)=null
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [EmployeePkid]
      ,emp.[EmployeeCode] 
	  --,case when(select rt.RankType from TB_JobHistory jp 
   --    INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) is null then '' else (select rt.RankType from TB_JobHistory jp 
   --    INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) end As 'CurrentRank'
        ,rt.RankType As 'CurrentRank'
	   ,SerialNumber
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber_Myan'
	  ,[Name],[Father_Name],[Mother_Name],[Gender],[Religion]
      ,[Race]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([NRCNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'NRCNumber'
	  ,case when PlaceOfBirth is null then '' else PlaceOfBirth end AS 'PlaceOfBirth'
	  ,case when (select  et.EducationType  from TB_EducationType et,TB_Employee e where e.EducationTypeCode=et.EducationTypeCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0 and et.Active=1) is null then '' else (select  et.EducationType  from TB_EducationType et,TB_Employee e where e.EducationTypeCode=et.EducationTypeCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0 and et.Active=1) end AS 'EducationType'
	  ,case when [EducationTypeCode] is null then '' else [EducationTypeCode] end 'EducationTypeCode'
	  ,case when (SELECT top(1) t.Township FROM TB_Employee AS e, TB_PlaceOfBirth AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0) is null then '' else (SELECT top(1) t.Township FROM TB_Employee AS e, TB_PlaceOfBirth AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0) end AS 'PlaceOfBirthName'
	  ,[Occupation]
	  ,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
      ,[EyeColor],[Height],[Mark],[OtherName]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
	    ,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh 
		Where e.SerialNumber=jh.EmployeeCode and jh.ToDate = null and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1 AND  e.IsDeleted=0 and jh.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate = null and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1 AND e.IsDeleted=0 and jh.IsDeleted=0) end AS 'CurrentRankDate'
      ,emp.TownshipCode
	  ,tw.[Township]
	  	  ,case when (SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25)) 
      from TB_Employee e where e.EmployeeCode=emp.EmployeeCode) is null then '' else (SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25)) 
      from TB_Employee e where e.EmployeeCode=emp.EmployeeCode) end  AS 'Age'
	  ,[Address],[DearestPerson],[Ancestor],[IsActive],emp.[IsDeleted],emp.IsRecordEdited
      ,emp.[ModifiedDate],emp.[CreatedDate],emp.[CreatedBy]
  FROM [TB_Employee]  emp 
  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
  INNER JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
  INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
  WHERE 
  (@Name is null Or emp.[Name]=@Name)
  And (@FromDate is null Or Convert(date,emp.CreatedDate)>=Convert(date,@FromDate))
  And (@ToDate is null Or Convert(date,emp.CreatedDate)<=Convert(date,@ToDate))
   And (@SerialNumber is null Or emp.SerialNumber=@SerialNumber)
   And (@NRC is null Or emp.NRCNumber=@NRC)
   And (@CurrentJobTownshipCode is null Or emp.TownshipCode=@CurrentJobTownshipCode)
   And (@RankTypeCode is null or rt.RankTypeCode=@RankTypeCode)
   And (@FatherName is null or emp.Father_Name=@FatherName)
  
   --AND  emp.TownshipCode = tw.TownshipCode
   And emp.IsDeleted=0 AND (IsActive IN ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ'))
   Order By cast (emp.SerialNumber as int)
END
