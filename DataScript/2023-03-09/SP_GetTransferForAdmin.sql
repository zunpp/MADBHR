USE [MADBAdminSolution]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTransferForAdmin]    Script Date: 09/03/2023 10:55:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[SP_GetTransferForAdmin]
 @DivisionCode nvarchar(50)=null,
 @TownshipCode nvarchar(50)=null,
 @Name nvarchar(50)=null,
 @SerialNumber nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select distinct tr.*,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),tr.TransferDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  AS 'TransferDateStr'
   ,emp.[Name],div.StateDivision,td.TownName As Township,ft.Township As FromTownship,tt.Township As ToTownship,rt.RankType
    from TB_Transfer tr 
join TB_Employee emp on emp.EmployeeCode=tr.EmployeeCode
join TB_CurrentJob_Township ft on ft.TownshipCode=tr.FromTownshipCode
join TB_CurrentJob_Township tt on tt.TownshipCode=tr.ToTownshipCode
left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
left join TB_StateDivision div on div.StateDivisionCode=tt.StateDivisionID
left join TB_TownAndDivision td on td.TownCode=tt.UploadForTownship
where
(@DivisionCode is null or div.StateDivisionCode=@DivisionCode) AND
(@TownshipCode is null or tt.TownshipCode=@TownshipCode) AND
(@Name is null or emp.[Name]=@Name) AND
(@SerialNumber is null or emp.SerialNumber=@SerialNumber) AND
tr.IsDeleted=0 and emp.IsDeleted=0 and emp.IsActive='Active' and emp.IsDeleted=0 and emp.[Status]='Approve'
END
