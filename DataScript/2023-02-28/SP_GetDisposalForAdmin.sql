USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetDisposalForAdmin]    Script Date: 28/02/2023 12:27:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetDisposalForAdmin]
 @DivisionCode nvarchar(50)=null,
 @TownshipCode nvarchar(50)=null,
 @SerialNumber nvarchar(50)=null,
 @Name nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT 
	  d.EmployeeCode
	,dt.DisposalType
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  AS 'DisposalDate'
	,
	d.Remark
	,d.DisposalTypeCode
	,e.[Name]
	,d.IsDeleted
	,d.CreatedBy
	,d.CreatedDate
	,d.DisposalPkid,div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
	 from TB_Disposal d 
	 INNER JOIN TB_Employee e ON d.EmployeeCode=e.EmployeeCode
	  left join TB_CurrentJob_Township tw on e.TownshipCode=tw.TownshipCode
  left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
  left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
  left join TB_JobHistory jh on jh.EmployeeCode=e.EmployeeCode and jh.IsCurrent=1
  left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
    join TB_DisposalType dt on dt.DisposalTypeCode=d.DisposalTypeCode

	  where
   (@DivisionCode is null or div.StateDivisionCode=@DivisionCode) AND
   (@TownshipCode is null or tw.TownshipCode=@TownshipCode) AND
   (@Name is null or e.[Name]=@Name) AND
   (@SerialNumber is null or e.SerialNumber=@SerialNumber) AND
	   d.IsDeleted=0 and e.IsDeleted=0
END
