USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetLeaveEntitlementForAdmin]    Script Date: 28/02/2023 12:43:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetLeaveEntitlementForAdmin]
	 @DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null,
	 @Name nvarchar(50)=null,
	 @SerialNumber nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT [LeaveEntitlementPkid]
	  , 
	  TB_LeaveEntitlement.[EmployeeCode]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ApprovedDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ApprovedDate'
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([ApprovedNo],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ApprovedNo'
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[StartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'StartDate'
      , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[EndDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'EndDate'
	  --, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[Period]),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Period'
	  ,Period
	  ,TB_LeaveEntitlement.LeaveTypeCode
	  ,TB_LeaveEntitlement.[IsDeleted]
      ,TB_LeaveEntitlement.[ModifiedDate],TB_LeaveEntitlement.[CreatedDate],TB_LeaveEntitlement.[CreatedBy]
	  ,emp.[Name]
	  ,lt.LeaveType,div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
  FROM [TB_LeaveEntitlement] 
  join TB_Employee emp on emp.EmployeeCode=TB_LeaveEntitlement.EmployeeCode
  join TB_LeaveType lt on lt.LeaveTypeCode=TB_LeaveEntitlement.LeaveTypeCode
  left join TB_CurrentJob_Township tw on emp.TownshipCode=tw.TownshipCode
  left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
  left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
  	left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
	left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code

  WHERE 
   (@DivisionCode is null or div.StateDivisionCode=@DivisionCode) AND
   (@TownshipCode is null or tw.TownshipCode=@TownshipCode) AND
   (@Name is null or emp.[Name]=@Name) AND
   (@SerialNumber is null or emp.SerialNumber=@SerialNumber) AND
  TB_LeaveEntitlement.IsDeleted=0
	
END
