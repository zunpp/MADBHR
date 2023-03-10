USE [MADBAdminSolution]
GO
/****** Object:  Table [dbo].[TB_AwardType]    Script Date: 28/02/2023 11:13:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_AwardType](
	[AwardTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[AwardTypeCode] [nvarchar](50) NULL,
	[AwardType] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_AwardType] PRIMARY KEY CLUSTERED 
(
	[AwardTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwAwardType]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwAwardType]
AS
SELECT        AwardTypePkid, AwardTypeCode, AwardType
FROM            dbo.TB_AwardType
GO
/****** Object:  Table [dbo].[TB_EducationType]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_EducationType](
	[EducationTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[EducationTypeCode] [nvarchar](50) NULL,
	[EducationType] [nvarchar](500) NULL,
	[IsRecordEdited] [bit] NULL,
	[Active] [bit] NOT NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_EducationType] PRIMARY KEY CLUSTERED 
(
	[EducationTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_EducationType]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_EducationType]
AS
SELECT        EducationTypeCode, EducationType, EducationTypePkid, Active
FROM            dbo.TB_EducationType
GO
/****** Object:  Table [dbo].[TB_Employee]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Employee](
	[EmployeePkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[SerialNumber] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Father_Name] [nvarchar](50) NULL,
	[Mother_Name] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Race] [nvarchar](50) NULL,
	[NRCNumber] [nvarchar](50) NULL,
	[PlaceOfBirth] [nvarchar](50) NULL,
	[EducationTypeCode] [nvarchar](50) NULL,
	[Occupation] [nvarchar](50) NULL,
	[DateOfBirth] [datetime] NULL,
	[EyeColor] [nvarchar](50) NULL,
	[Height] [nvarchar](50) NULL,
	[Mark] [nvarchar](50) NULL,
	[OtherName] [nvarchar](50) NULL,
	[JoinDate] [datetime] NULL,
	[TownshipCode] [nvarchar](50) NULL,
	[Address] [nvarchar](200) NULL,
	[DearestPerson] [nvarchar](500) NULL,
	[Ancestor] [nvarchar](500) NULL,
	[IsActive] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
	[ProfilePic] [nvarchar](max) NULL,
	[Form66Pic] [nvarchar](max) NULL,
	[NRCPic] [nvarchar](max) NULL,
	[DegreePic] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[RejectComment] [nvarchar](max) NULL,
	[EditRequest] [nvarchar](20) NULL,
	[EditComment] [nvarchar](max) NULL,
	[DeleteRequest] [nvarchar](20) NULL,
 CONSTRAINT [PK_TB_Employee_1] PRIMARY KEY CLUSTERED 
(
	[EmployeePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_AwardList]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AwardList]
AS
SELECT        EmployeePkid, SerialNumber, Name, '' AS JoinDate, '' AS JobAddress, '' AS DateOfBirth, '' AS CurrentRank, NRCNumber, '' AS AwardType, '' AS AwardYear
FROM            dbo.TB_Employee
GO
/****** Object:  Table [dbo].[TB_Pension]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Pension](
	[PensionPkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[FatherName] [nvarchar](50) NULL,
	[RankType] [nvarchar](50) NULL,
	[Department] [nvarchar](100) NULL,
	[DateOfBirth] [datetime] NULL,
	[PensionReportNo] [nvarchar](50) NULL,
	[PensionDate] [datetime] NULL,
	[PensionTypeCode] [nvarchar](50) NULL,
	[LatestSalary] [nvarchar](50) NULL,
	[MonthlyPension] [nvarchar](50) NULL,
	[Saving] [nvarchar](50) NULL,
	[PensionStartDate] [datetime] NULL,
	[PensionBank] [nvarchar](50) NULL,
	[Remark] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Pension] PRIMARY KEY CLUSTERED 
(
	[PensionPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_Pension]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Pension]
AS
SELECT        PensionPkid, BranchCode, DepartmentCode, RankTypeCode, EmployeeCode, Name, FatherName, RankType, Department, '' AS PensionType, PensionReportNo, '' AS DateOfBirth, '' AS PensionDate, 
                         PensionTypeCode, LatestSalary, MonthlyPension, Saving, '' AS PensionStartDate, PensionBank, Remark, IsDeleted, ModifiedDate, CreatedDate, CreatedBy
FROM            dbo.TB_Pension
GO
/****** Object:  Table [dbo].[TB_PensionType]    Script Date: 28/02/2023 11:13:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PensionType](
	[PensionTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[PensionTypeCode] [nvarchar](50) NULL,
	[PensionType] [nvarchar](500) NULL,
	[IsRecordEdited] [bit] NULL,
	[Active] [bit] NOT NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_PensionType] PRIMARY KEY CLUSTERED 
(
	[PensionTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PensionType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_PensionType]
AS
SELECT        PensionTypePkid, PensionTypeCode, PensionType
FROM            dbo.TB_PensionType
GO
/****** Object:  View [dbo].[vwEducationTypeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwEducationTypeInformationOnlineCheck]
AS
SELECT        EducationTypePkid, EducationTypeCode, EducationType, IsRecordEdited, Active, UploadForTownship
FROM            dbo.TB_EducationType
GO
/****** Object:  Table [dbo].[TB_DisposalType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DisposalType](
	[DisposalTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[DisposalTypeCode] [nvarchar](50) NULL,
	[DisposalType] [nvarchar](500) NULL,
	[IsRecordEdited] [bit] NULL,
	[Active] [bit] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_DisposalType] PRIMARY KEY CLUSTERED 
(
	[DisposalTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDisposalTypeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwDisposalTypeInformationOnlineCheck]
AS
SELECT        DisposalTypePkid, DisposalTypeCode, DisposalType, IsRecordEdited, Active, UploadForTownship
FROM            dbo.TB_DisposalType
GO
/****** Object:  View [dbo].[vwPensionTypeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPensionTypeInformationOnlineCheck]
AS
SELECT        PensionTypePkid, PensionTypeCode, PensionType, IsRecordEdited, Active, UploadForTownship
FROM            dbo.TB_PensionType
GO
/****** Object:  Table [dbo].[TB_RankType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_RankType](
	[RankTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeRankTypeCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[RankType] [nvarchar](500) NULL,
	[RankLevel] [int] NULL,
	[RankDescription] [nvarchar](50) NULL,
	[IsRecordEdited] [bit] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_RankType] PRIMARY KEY CLUSTERED 
(
	[RankTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwRankTypeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwRankTypeInformationOnlineCheck]
AS
SELECT        RankTypePkid, EmployeeRankTypeCode, RankTypeCode, RankType, RankLevel, RankDescription, IsRecordEdited, UploadForTownship
FROM            dbo.TB_RankType
GO
/****** Object:  Table [dbo].[TB_PlaceOfBirth]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PlaceOfBirth](
	[TownshipPkid] [int] IDENTITY(1,1) NOT NULL,
	[TownshipCode] [nvarchar](50) NULL,
	[Township] [nvarchar](500) NULL,
	[IsRecordEdited] [bit] NULL,
	[Active] [bit] NOT NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_PlaceOfBirth] PRIMARY KEY CLUSTERED 
(
	[TownshipPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwPlaceOfBirth]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPlaceOfBirth]
AS
SELECT        TownshipPkid, TownshipCode, Township, Active
FROM            dbo.TB_PlaceOfBirth
GO
/****** Object:  Table [dbo].[TB_CurrentJob_Township]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_CurrentJob_Township](
	[CurrentJobTownshipPkid] [int] IDENTITY(1,1) NOT NULL,
	[StateDivisionID] [nvarchar](50) NULL,
	[TownshipCode] [nvarchar](50) NULL,
	[Township] [nvarchar](500) NULL,
	[Active] [bit] NOT NULL,
	[IsRecordEdited] [bit] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_CurrentJob_Township] PRIMARY KEY CLUSTERED 
(
	[CurrentJobTownshipPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwCurrentJobTownship]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwCurrentJobTownship]
AS
SELECT        CurrentJobTownshipPkid, TownshipCode, Township, Active
FROM            dbo.TB_CurrentJob_Township
GO
/****** Object:  View [dbo].[vwEmployeeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwEmployeeInformationOnlineCheck]
AS
SELECT        EmployeePkid, EmployeeCode, SerialNumber, Name, Father_Name, Mother_Name, Gender, Religion, Race, NRCNumber, PlaceOfBirth, EducationTypeCode, Occupation, DateOfBirth, EyeColor, Height, Mark, OtherName, 
                         JoinDate, TownshipCode, Address, DearestPerson, Ancestor, IsActive, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_Employee
GO
/****** Object:  Table [dbo].[TB_JobHistory]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_JobHistory](
	[JobHistoryPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[DepartmentName] [nvarchar](100) NULL,
	[RankType_Code] [nvarchar](50) NULL,
	[RankType_Code1] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Job_Year] [decimal](18, 0) NULL,
	[Job_Month] [decimal](18, 0) NULL,
	[Job_Day] [decimal](18, 0) NULL,
	[Duration] [decimal](18, 0) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsCurrent] [bit] NOT NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_JobHistory_1] PRIMARY KEY CLUSTERED 
(
	[JobHistoryPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwJobExperienceListSelectByCurrentRank]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwJobExperienceListSelectByCurrentRank]
AS
SELECT        jh.JobHistoryPkid, emp.SerialNumber, emp.Name, emp.NRCNumber, '' AS CurrentRank, '' AS AllTRC, rt.RankLevel AS CurrentRankLevel, '' AS Township, emp.JoinDate, jh.FromDate, jh.ToDate, CONVERT(DECIMAL(18, 0), 
                         jh.Job_Year) AS Job_Year, CONVERT(DECIMAL(18, 0), jh.Job_Month) AS Job_Month, CONVERT(DECIMAL(18, 0), jh.Job_Day) AS Job_Day
FROM            dbo.TB_JobHistory AS jh INNER JOIN
                         dbo.TB_RankType AS rt ON jh.RankType_Code = rt.RankTypeCode LEFT OUTER JOIN
                         dbo.TB_Employee AS emp ON jh.EmployeeCode = emp.SerialNumber
GO
/****** Object:  View [dbo].[vw_CurrentJobTownshipInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_CurrentJobTownshipInformationOnlineCheck]
AS
SELECT        CurrentJobTownshipPkid, StateDivisionID, TownshipCode, Township, Active, IsRecordEdited, UploadForTownship
FROM            dbo.TB_CurrentJob_Township
GO
/****** Object:  View [dbo].[vw_PlaceOfBirthInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_PlaceOfBirthInformationOnlineCheck]
AS
SELECT        TownshipPkid, TownshipCode, Township, IsRecordEdited, Active, UploadForTownship
FROM            dbo.TB_PlaceOfBirth
GO
/****** Object:  View [dbo].[vw_DisposalType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_DisposalType]
AS
SELECT        DisposalTypePkid, DisposalTypeCode, DisposalType
FROM            dbo.TB_DisposalType
GO
/****** Object:  View [dbo].[vwJobExperience]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwJobExperience]
AS
SELECT        emp.EmployeePkid, emp.SerialNumber, '' AS SerialNumber_Myan, emp.Name, emp.NRCNumber, rt.RankType, '' AS DepartmentName, '' AS JoinDate, jh.FromDate, CONVERT(DECIMAL(18, 0), jh.Job_Year) AS Job_Year, 
                         CONVERT(DECIMAL(18, 0), jh.Job_Month) AS Job_Month, CONVERT(DECIMAL(18, 0), jh.Job_Day) AS Job_Day, CONVERT(DECIMAL(18, 0), jh.Job_Year) AS Current_JobYear, 0 AS Total_JobYear, 0 AS Total_JobMonth, 
                         0 AS Total_JobDay, jh.IsCurrent
FROM            dbo.TB_Employee AS emp INNER JOIN
                         dbo.TB_JobHistory AS jh ON emp.SerialNumber = jh.EmployeeCode INNER JOIN
                         dbo.TB_RankType AS rt ON rt.RankTypeCode = jh.RankType_Code INNER JOIN
                         dbo.TB_CurrentJob_Township AS t ON t.TownshipCode = jh.DepartmentName
GO
/****** Object:  Table [dbo].[TB_StateDivision_SetUp]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_StateDivision_SetUp](
	[StateDivisionPkid] [int] IDENTITY(1,1) NOT NULL,
	[StateDivisionCode] [nvarchar](50) NULL,
	[StateDivision] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_StateDivision_SetUp] PRIMARY KEY CLUSTERED 
(
	[StateDivisionPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_StateDivisionName]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_StateDivisionName]
AS
SELECT        StateDivisionPkid, StateDivisionCode, StateDivision
FROM            dbo.TB_StateDivision_SetUp
GO
/****** Object:  View [dbo].[vw_Age60Full]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_Age60Full]
AS
SELECT        EmployeePkid, SerialNumber, Name, '' AS NRCNo, '' AS PlaceOfBirth, '' AS CurrentRankDate, Race, Religion, '' AS DOB, '' AS RankTypeDescription, '' AS Expr1, '' AS JoinDate, '' AS Expr2, '' AS Expr3, 
                         '' AS Age
FROM            dbo.TB_Employee
GO
/****** Object:  View [dbo].[vw_JobPosting]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_JobPosting]
AS
SELECT        JobHistoryPkid, EmployeeCode, DepartmentName, '' AS RankType_Code, '' AS FromDate, '' AS ToDate, '' AS RankType, '' AS Job_Year, '' AS Job_Month, '' AS Job_Day, '' AS Department_Name, Remark, IsCurrent, IsDeleted, 
                         ModifiedDate, CreatedDate, CreatedBy
FROM            dbo.TB_JobHistory
GO
/****** Object:  Table [dbo].[TB_LeaveEntitlement]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LeaveEntitlement](
	[LeaveEntitlementPkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedNo] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Period] [nvarchar](50) NULL,
	[LeaveTypeCode] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_LeaveEntitlement] PRIMARY KEY CLUSTERED 
(
	[LeaveEntitlementPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_LeaveEntitlement]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_LeaveEntitlement]
AS
SELECT        LeaveEntitlementPkid, EmployeeCode, '' AS ApprovedDate, ApprovedNo, '' AS StartDate, '' AS EndDate, Period, LeaveTypeCode, IsDeleted, ModifiedDate, CreatedDate, CreatedBy
FROM            dbo.TB_LeaveEntitlement
GO
/****** Object:  Table [dbo].[TB_Award]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Award](
	[AwardPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[AwardDate] [datetime] NULL,
	[AwardYear] [nvarchar](50) NULL,
	[AwardTypeCode] [nvarchar](50) NULL,
	[Reason] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Award] PRIMARY KEY CLUSTERED 
(
	[AwardPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwAwardInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwAwardInformationOnlineCheck]
AS
SELECT        AwardPkid, EmployeeCode, AwardDate, AwardYear, AwardTypeCode, Reason, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_Award
GO
/****** Object:  Table [dbo].[TB_LeaveType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LeaveType](
	[LeaveTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[LeaveTypeCode] [nvarchar](50) NULL,
	[LeaveType] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_LeaveType] PRIMARY KEY CLUSTERED 
(
	[LeaveTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_LeaveType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_LeaveType]
AS
SELECT        LeaveTypePkid, LeaveTypeCode, LeaveType
FROM            dbo.TB_LeaveType
GO
/****** Object:  Table [dbo].[TB_YearlyBonus]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_YearlyBonus](
	[YearlyBonusPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[ApprovedDate] [datetime] NULL,
	[ApprovedNo] [nvarchar](50) NULL,
	[YearlyBonusCount] [nvarchar](50) NULL,
	[YearlyBonusSalary] [nvarchar](50) NULL,
	[YearlyBonusDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_YearlyBonus] PRIMARY KEY CLUSTERED 
(
	[YearlyBonusPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_YearlyBonus]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_YearlyBonus]
AS
SELECT        YearlyBonusPkid, EmployeeCode, ApprovedDate, ApprovedNo, YearlyBonusCount, YearlyBonusSalary, YearlyBonusDate
FROM            dbo.TB_YearlyBonus
GO
/****** Object:  View [dbo].[vwAward]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwAward]
AS
SELECT        AwardPkid, EmployeeCode, BranchCode, DepartmentCode, RankTypeCode, '' AS AwardDate, '' AS AwardYear, '' AS AwardType, '' AS AwardTypeCode, Reason, IsDeleted, ModifiedDate, CreatedDate, 
                         CreatedBy
FROM            dbo.TB_Award
GO
/****** Object:  Table [dbo].[TB_Punishment]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Punishment](
	[PunishmentPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[OrderDate] [datetime] NULL,
	[OrderNo] [nvarchar](50) NULL,
	[CrimeYear] [nvarchar](50) NULL,
	[PunishmentTypeCode] [nvarchar](500) NULL,
	[Description] [nvarchar](800) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Punishment] PRIMARY KEY CLUSTERED 
(
	[PunishmentPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwPunishment]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPunishment]
AS
SELECT        PunishmentPkid, EmployeeCode, BranchCode, DepartmentCode, RankTypeCode, '' AS PunishmentTypeCode, '' AS PunishmentType, '' AS OrderNo, '' AS CrimeYear, Description, IsDeleted, ModifiedDate, 
                         CreatedDate, CreatedBy
FROM            dbo.TB_Punishment
GO
/****** Object:  View [dbo].[vwLeaveEntitlement_Select_List]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwLeaveEntitlement_Select_List]
AS
SELECT        EmployeeCode AS SerialNumber, '' AS Name, '' AS CurrentRank, '' AS Township, '' AS StartDate, '' AS EndDate, Period, LeaveTypeCode, UploadForTownship
FROM            dbo.TB_LeaveEntitlement
GO
/****** Object:  View [dbo].[vw_JobExperienceList]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_JobExperienceList]
AS
SELECT        EmployeePkid, SerialNumber, '' AS SerialNumber_Myan, Name, NRCNumber, '' AS CurrentRank, '' AS DepartmentName, '' AS JoinDate, '' AS FromDate, '' AS Job_Year, '' AS Job_Month, '' AS Job_Day
FROM            dbo.TB_Employee
GO
/****** Object:  View [dbo].[vw_ProfileSelect]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_ProfileSelect]
AS
SELECT        Name, NRCNumber, '' AS DateOfBirth, PlaceOfBirth, Race, Religion, '' AS JoinDate, '' AS CurrentRankDate, '' AS CurrentRank, '' AS LatestSalary
FROM            dbo.TB_Employee
GO
/****** Object:  Table [dbo].[TB_Disposal]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Disposal](
	[DisposalPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[DisposalDate] [datetime] NULL,
	[DisposalTypeCode] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
	[TransferId] [int] NULL,
 CONSTRAINT [PK_TB_Disposal] PRIMARY KEY CLUSTERED 
(
	[DisposalPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDisposalInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwDisposalInformationOnlineCheck]
AS
SELECT        DisposalPkid, EmployeeCode, DisposalDate, DisposalTypeCode, Remark, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_Disposal
GO
/****** Object:  Table [dbo].[TB_IntKnowledge]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_IntKnowledge](
	[IntKnowledgePkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[CountryName] [nvarchar](50) NULL,
	[Description] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_IntKnowledge] PRIMARY KEY CLUSTERED 
(
	[IntKnowledgePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_IntKnowledgeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_IntKnowledgeInformationOnlineCheck]
AS
SELECT        IntKnowledgePkid, EmployeeCode, FromDate, ToDate, CountryName, Description, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_IntKnowledge
GO
/****** Object:  View [dbo].[vwJobHistoryInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwJobHistoryInformationOnlineCheck]
AS
SELECT        JobHistoryPkid, EmployeeCode, RankType_Code, RankType_Code1, FromDate, ToDate, Job_Year, Job_Month, Job_Day, Duration, Remark, IsCurrent, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, 
                         UploadForTownship
FROM            dbo.TB_JobHistory
GO
/****** Object:  View [dbo].[vwLeaveEntitlementOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwLeaveEntitlementOnlineCheck]
AS
SELECT        LeaveEntitlementPkid, EmployeeCode, ApprovedDate, ApprovedNo, StartDate, EndDate, Period, LeaveTypeCode, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_LeaveEntitlement
GO
/****** Object:  View [dbo].[vwPensionOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPensionOnlineCheck]
AS
SELECT        PensionPkid, EmployeeCode, Name, FatherName, RankType, Department, DateOfBirth, PensionReportNo, PensionDate, PensionTypeCode, LatestSalary, MonthlyPension, Saving, PensionStartDate, PensionBank, Remark, 
                         IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy
FROM            dbo.TB_Pension
GO
/****** Object:  Table [dbo].[TB_StateDivision]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_StateDivision](
	[StateDivisionPkid] [int] IDENTITY(1,1) NOT NULL,
	[StateDivisionCode] [nvarchar](50) NULL,
	[StateDivision] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_StateDivision] PRIMARY KEY CLUSTERED 
(
	[StateDivisionPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwStateDivision]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwStateDivision]
AS
SELECT        StateDivisionPkid, StateDivisionCode, StateDivision
FROM            dbo.TB_StateDivision
GO
/****** Object:  View [dbo].[vwPensionInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPensionInformationOnlineCheck]
AS
SELECT        PensionPkid, EmployeeCode, Name, FatherName, RankType, Department, DateOfBirth, PensionReportNo, PensionDate, PensionTypeCode, LatestSalary, MonthlyPension, Saving, PensionStartDate, PensionBank, Remark, 
                         IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_Pension
GO
/****** Object:  View [dbo].[vwPunishmentInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPunishmentInformationOnlineCheck]
AS
SELECT        PunishmentPkid, EmployeeCode, OrderDate, OrderNo, CrimeYear, PunishmentTypeCode, Description, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_Punishment
GO
/****** Object:  Table [dbo].[TB_Relationship]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Relationship](
	[RelationshipPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[RelationName] [nvarchar](50) NULL,
	[RelationDOB] [datetime] NULL,
	[RelationType] [nvarchar](50) NULL,
	[RelationOccupation] [nvarchar](50) NULL,
	[RelationAddress] [nvarchar](200) NULL,
	[RelationFatherName] [nvarchar](50) NULL,
	[RelationMotherName] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Relationship] PRIMARY KEY CLUSTERED 
(
	[RelationshipPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwRelationInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwRelationInformationOnlineCheck]
AS
SELECT        RelationshipPkid, EmployeeCode, RelationName, RelationDOB, RelationType, RelationOccupation, RelationAddress, RelationFatherName, RelationMotherName, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, 
                         CreatedBy, UploadForTownship
FROM            dbo.TB_Relationship
GO
/****** Object:  Table [dbo].[TB_SonAndDaughter]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_SonAndDaughter](
	[SonAndDaughterPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[SonAndDaughterName] [nvarchar](50) NULL,
	[SonAndDaughterDOB] [datetime] NULL,
	[SonAndDaughterOccupation] [nvarchar](50) NULL,
	[SonAndDaughterAddress] [nvarchar](200) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_SonAndDaughter] PRIMARY KEY CLUSTERED 
(
	[SonAndDaughterPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwSonAndDaughterInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwSonAndDaughterInformationOnlineCheck]
AS
SELECT        SonAndDaughterPkid, EmployeeCode, SonAndDaughterName, SonAndDaughterDOB, SonAndDaughterOccupation, SonAndDaughterAddress, IsDeleted, IsRecordEdited, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_SonAndDaughter
GO
/****** Object:  Table [dbo].[TB_TrainingHistory]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TrainingHistory](
	[TrainingHistoryPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[TrainingTitle] [nvarchar](200) NULL,
	[SchoolName] [nvarchar](200) NULL,
	[Location] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
	[CertificatePic] [nvarchar](max) NULL,
 CONSTRAINT [PK_TB_TrainingHistory] PRIMARY KEY CLUSTERED 
(
	[TrainingHistoryPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwTrainingHistoryInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwTrainingHistoryInformationOnlineCheck]
AS
SELECT        TrainingHistoryPkid, EmployeeCode, StartDate, EndDate, TrainingTitle, SchoolName, Location, Remark, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_TrainingHistory
GO
/****** Object:  View [dbo].[vwYearlyBonusInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwYearlyBonusInformationOnlineCheck]
AS
SELECT        YearlyBonusPkid, EmployeeCode, ApprovedDate, ApprovedNo, YearlyBonusCount, YearlyBonusSalary, YearlyBonusDate, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, CreatedBy, UploadForTownship
FROM            dbo.TB_YearlyBonus
GO
/****** Object:  Table [dbo].[TB_Department]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Department](
	[DepartmentPkid] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[Department] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_Department] PRIMARY KEY CLUSTERED 
(
	[DepartmentPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDepartment]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwDepartment]
AS
SELECT        DepartmentPkid, DepartmentCode, Department
FROM            dbo.TB_Department
GO
/****** Object:  Table [dbo].[TB_User]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_User](
	[UserPkid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[LoginTime] [datetime] NULL,
	[LogoutTime] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_TB_User] PRIMARY KEY CLUSTERED 
(
	[UserPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwUser]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwUser]
AS
SELECT        US.UserPkid, US.Username, US.Password, DEPT.DepartmentCode, DEPT.Department, US.LoginTime, US.LogoutTime, US.ModifiedDate, '' AS CreatedDate, US.IsActive
FROM            dbo.TB_User AS US LEFT OUTER JOIN
                         dbo.TB_Department AS DEPT ON DEPT.DepartmentCode = US.DepartmentCode
WHERE        (US.IsActive = 1)
GO
/****** Object:  Table [dbo].[TB_Branch]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Branch](
	[BranchPkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](50) NULL,
	[BranchName] [nvarchar](200) NULL,
	[TownshipCode] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Branch] PRIMARY KEY CLUSTERED 
(
	[BranchPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwBranch]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwBranch]
AS
SELECT        BranchPkid, BranchCode, BranchName, TownshipCode
FROM            dbo.TB_Branch
GO
/****** Object:  Table [dbo].[TB_EmployeeRankType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_EmployeeRankType](
	[RankPkId] [nchar](10) NULL,
	[RankTypeCode] [nchar](10) NULL,
	[RankType] [nchar](500) NULL,
	[UploadForTownship] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwRankType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwRankType]
AS
SELECT        rt.RankTypePkid, rt.RankTypeCode, rt.RankType, rt.RankLevel, '' AS RankLevel_Myan, rt.RankDescription, ert.RankTypeCode AS EmployeeRankTypeCode, ert.RankType AS EmployeeRankType
FROM            dbo.TB_RankType AS rt INNER JOIN
                         dbo.TB_EmployeeRankType AS ert ON rt.EmployeeRankTypeCode = ert.RankTypeCode
GO
/****** Object:  Table [dbo].[TB_PunishmentType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_PunishmentType](
	[PunishmentTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[YearlyPunishmentTypeCode] [nvarchar](50) NULL,
	[PunishmentTypeCode] [nvarchar](50) NULL,
	[PunishmentType] [nvarchar](500) NULL,
	[Active] [bit] NOT NULL,
	[IsRecordEdited] [bit] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_PunishmentType] PRIMARY KEY CLUSTERED 
(
	[PunishmentTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwPunishmentTypeInformationOnlineCheck]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPunishmentTypeInformationOnlineCheck]
AS
SELECT        PunishmentTypePkid, YearlyPunishmentTypeCode, PunishmentTypeCode, PunishmentType, Active, IsRecordEdited, UploadForTownship
FROM            dbo.TB_PunishmentType
GO
/****** Object:  View [dbo].[vwEmployee]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwEmployee]
AS
SELECT        EmployeePkid, EmployeeCode, '' AS CurrentRank, SerialNumber, Name, Father_Name, Mother_Name, Gender, Religion, Race, NRCNumber, '' AS PlaceOfBirthCode, PlaceOfBirth, '' AS EducationTypeCode, '' AS Township, 
                         Occupation, '' AS DateOfBirth, EyeColor, Height, Mark, OtherName, '' AS JoinDate, TownshipCode, '' AS EducationType, Address, DearestPerson, Ancestor, '' AS IsActive, IsDeleted, IsRecordEdited, ModifiedDate, CreatedDate, 
                         CreatedBy, '' AS SerialNumber_Myan, '' AS CurrentRankDate, '' AS Age
FROM            dbo.TB_Employee
GO
/****** Object:  View [dbo].[vwTrainingHistory]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwTrainingHistory]
AS
SELECT        TrainingHistoryPkid, EmployeeCode, BranchCode, DepartmentCode, RankTypeCode, '' AS StartDate, '' AS EndDate, TrainingTitle, SchoolName, Location, Remark, IsDeleted, ModifiedDate, CreatedDate, 
                         CreatedBy
FROM            dbo.TB_TrainingHistory
GO
/****** Object:  View [dbo].[vw_EmployeeDecreaseList]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_EmployeeDecreaseList]
AS
SELECT        0 AS EmployeePkid, '' AS CurrentRank, '' AS Name, '' AS JobAddress, '' AS DateOfBirth, '' AS JoinDate, '' AS CurrentRankDate, '' AS EmployeeDecreaseDateForTransfer, '' AS EmployeeDecreaseDateForResign, 
                         '' AS EmployeeDecreaseDateForPension, '' AS EmployeeDecreaseDateForRemove, '' AS EmployeeDecreaseDateForDismiss, '' AS EmployeeDecreaseDateForDead, '' AS EmployeeDecreaseDateForArrive, '' AS remark, 
                         0 AS IsActive, '' AS SerialNumber_Myan, '' AS SerialNumber
GO
/****** Object:  View [dbo].[vw_NRCName]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_NRCName]
AS
SELECT        0 AS NRCPkid, N'' AS NRCName
GO
/****** Object:  View [dbo].[vw_RankType_Select]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_RankType_Select]
AS
SELECT        '' AS RankTypePkid, '' AS RankTypeCode, '' AS EmployeeRankTypeCode, '' AS RankType, '' AS EmployeeRankType, '' AS RankLevel_Myan, '' AS RankDescription, '' AS RankLevel
GO
/****** Object:  View [dbo].[vw_YearlyPunishment]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_YearlyPunishment]
AS
SELECT        0 AS EmployeePkid, '' AS SerialNumber, '' AS StateDivision, '' AS Name, '' AS CrimeYear, '' AS YearlyPunishmentType, '' AS OrderDate, '' AS CurrentRank, '' AS JobAddress, '' AS JoinDate, '' AS DateOfBirth, '' AS NRCNumber
GO
/****** Object:  View [dbo].[vwDeadEmployee]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwDeadEmployee]
AS
SELECT        '' AS Name, '' AS Father_Name, '' AS 'CurrentRank', '' AS Department, '' AS DateOfBirth, '' AS LatestSalary
GO
/****** Object:  View [dbo].[vwPunishmentType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vwPunishmentType]
AS
SELECT        0 AS PunishmentTypePkid, '' AS PunishmentTypeCode, '' AS YearlyPunishmentTypeCode, '' AS PunishmentType, '' AS YearlyPunishmentType
GO
/****** Object:  Table [dbo].[NLogs]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NLogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MachineName] [nvarchar](max) NULL,
	[Logged] [datetime] NULL,
	[Level] [nvarchar](50) NULL,
	[Message] [nvarchar](max) NULL,
	[Logger] [nvarchar](max) NULL,
	[Property] [nvarchar](max) NULL,
	[CallSite] [nvarchar](255) NULL,
	[Exception] [nvarchar](255) NULL,
	[UserPkid] [int] NULL,
 CONSTRAINT [PK_NLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Age60Full]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Age60Full](
	[Age60FullPkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[NRCNo] [nvarchar](50) NULL,
	[RankType] [nvarchar](50) NULL,
	[DepartmentPlace] [nvarchar](500) NULL,
	[RaceReligion] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[LatestSalary] [nvarchar](50) NULL,
	[PermanentDate] [datetime] NULL,
	[CurrentRankDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_Age60Full] PRIMARY KEY CLUSTERED 
(
	[Age60FullPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Age60Full1]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Age60Full1](
	[Age60FullPkid] [int] IDENTITY(1,1) NOT NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[NRCNo] [nvarchar](50) NULL,
	[RankType] [nvarchar](50) NULL,
	[DepartmentPlace] [nvarchar](500) NULL,
	[RaceReligion] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[LatestSalary] [nvarchar](50) NULL,
	[PermanentDate] [datetime] NULL,
	[CurrentRankDate] [datetime] NULL,
	[Remark] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_TB_Age60Full1] PRIMARY KEY CLUSTERED 
(
	[Age60FullPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Education]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Education](
	[EducationPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[StartYear] [nvarchar](50) NULL,
	[EndYear] [nvarchar](50) NULL,
	[MainSubject] [nvarchar](200) NULL,
	[SchoolName] [nvarchar](200) NULL,
	[IsDeleted] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Education] PRIMARY KEY CLUSTERED 
(
	[EducationPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_ExamResult]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_ExamResult](
	[ExamResultPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[ExamNumber] [nvarchar](50) NULL,
	[ExamDate] [datetime] NULL,
	[ExamType] [nvarchar](50) NULL,
	[SubjectCode] [nvarchar](50) NULL,
	[TotalMark] [decimal](18, 2) NULL,
	[IsPass] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_ExamResult] PRIMARY KEY CLUSTERED 
(
	[ExamResultPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Honour]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Honour](
	[HonourPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[LetterNo] [nvarchar](200) NULL,
	[HonourDate] [datetime] NULL,
	[HonourTitle] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_TB_Honour] PRIMARY KEY CLUSTERED 
(
	[HonourPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_HonourType]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_HonourType](
	[HonourTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[HonourTypeCode] [nvarchar](50) NULL,
	[HonourType] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_HonourType] PRIMARY KEY CLUSTERED 
(
	[HonourTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_JobExperience]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_JobExperience](
	[JobExperiencePkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[Duration] [decimal](18, 2) NULL,
	[TotalPoint] [decimal](18, 2) NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_JobExperience] PRIMARY KEY CLUSTERED 
(
	[JobExperiencePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_JobPosting]    Script Date: 28/02/2023 11:13:19 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_JobPosting](
	[JobPostingPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[DepartmentName] [nvarchar](50) NULL,
	[RankType] [nvarchar](50) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[Duration] [decimal](18, 2) NULL,
	[Authority] [nvarchar](100) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_TB_JobPosting] PRIMARY KEY CLUSTERED 
(
	[JobPostingPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_LeaveApplication]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_LeaveApplication](
	[LeaveApplicationPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[LeaveTypeCode] [nvarchar](50) NULL,
	[AppliedDate] [datetime] NULL,
	[LeaveDate] [datetime] NULL,
	[Duration] [decimal](18, 2) NULL,
	[LeaveStatus] [nvarchar](50) NULL,
	[ApprovedBy] [nvarchar](50) NULL,
	[ApprovedDate] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_LeaveApplication] PRIMARY KEY CLUSTERED 
(
	[LeaveApplicationPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_NRC]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_NRC](
	[NRCPkid] [int] IDENTITY(1,1) NOT NULL,
	[NRCCode] [nvarchar](50) NULL,
	[NRCEnglishCode] [nvarchar](50) NULL,
	[NRCMyanmarCode] [nvarchar](50) NULL,
	[NRCNumber] [int] NULL,
 CONSTRAINT [PK_TB_NRC] PRIMARY KEY CLUSTERED 
(
	[NRCPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Rank]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Rank](
	[RankPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Duration] [decimal](18, 2) NULL,
	[OrderTitle] [nvarchar](500) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_TB_Rank] PRIMARY KEY CLUSTERED 
(
	[RankPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Region]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Region](
	[RegionPkid] [int] IDENTITY(1,1) NOT NULL,
	[TownshipID] [nvarchar](50) NULL,
	[RegionCode] [nvarchar](50) NULL,
	[Region] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_Region] PRIMARY KEY CLUSTERED 
(
	[RegionPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Region_SetUp]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Region_SetUp](
	[RegionPkid] [int] IDENTITY(1,1) NOT NULL,
	[TownshipID] [nvarchar](50) NULL,
	[RegionCode] [nvarchar](50) NULL,
	[Region] [nvarchar](500) NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Region_SetUp] PRIMARY KEY CLUSTERED 
(
	[RegionPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Salary]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Salary](
	[SalaryPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[SalaryAmount] [decimal](18, 2) NULL,
	[FromDate] [datetime] NULL,
	[ToDate] [datetime] NULL,
	[IncreaseTimes] [nvarchar](50) NULL,
	[Remark] [nvarchar](500) NULL,
	[IsActive] [bit] NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_TB_Salary] PRIMARY KEY CLUSTERED 
(
	[SalaryPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Skills]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Skills](
	[SkillsPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NULL,
	[BranchCode] [nvarchar](50) NULL,
	[DepartmentCode] [nvarchar](50) NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[Skill] [nvarchar](200) NULL,
	[SkillLevel] [nvarchar](50) NULL,
	[IsDeleted] [bit] NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
 CONSTRAINT [PK_TB_Skills] PRIMARY KEY CLUSTERED 
(
	[SkillsPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Subjects]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Subjects](
	[SubjectPkid] [int] IDENTITY(1,1) NOT NULL,
	[SubjectCode] [nvarchar](50) NULL,
	[Subject] [nvarchar](50) NULL,
	[TotalMark] [int] NULL,
 CONSTRAINT [PK_TB_Subjects] PRIMARY KEY CLUSTERED 
(
	[SubjectPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TownAndDivision]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TownAndDivision](
	[TownID] [int] IDENTITY(1,1) NOT NULL,
	[TownCode] [nvarchar](10) NULL,
	[TownName] [nvarchar](150) NULL,
	[DiviSionName] [nvarchar](150) NULL,
	[GroupNumber] [nvarchar](50) NULL,
	[DivisionCode] [nvarchar](4) NULL,
	[TownOrderCode] [nvarchar](3) NULL,
 CONSTRAINT [PK_TB_TownAndDivision] PRIMARY KEY CLUSTERED 
(
	[TownID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Township_Setup]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Township_Setup](
	[TownshipPkid] [int] IDENTITY(1,1) NOT NULL,
	[StateDivisionID] [nvarchar](50) NULL,
	[TownshipCode] [nvarchar](50) NULL,
	[Township] [nvarchar](500) NULL,
	[Active] [bit] NULL,
	[IsRecordEdited] [bit] NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_Township_SetUp] PRIMARY KEY CLUSTERED 
(
	[TownshipPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_TrainingType]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_TrainingType](
	[TrainingTypePkid] [int] IDENTITY(1,1) NOT NULL,
	[TrainingTypeCode] [nvarchar](50) NULL,
	[TrainingType] [nvarchar](500) NULL,
 CONSTRAINT [PK_TB_TrainingType] PRIMARY KEY CLUSTERED 
(
	[TrainingTypePkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Transfer]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Transfer](
	[TransferPkid] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCode] [nvarchar](50) NOT NULL,
	[RankTypeCode] [nvarchar](50) NULL,
	[FromTownshipCode] [nvarchar](50) NOT NULL,
	[ToTownshipCode] [nvarchar](50) NULL,
	[TransferDate] [datetime] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[IsDeleted] [bit] NOT NULL,
	[Remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_TB_Transfer] PRIMARY KEY CLUSTERED 
(
	[TransferPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_UserLogin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_UserLogin](
	[UserPkid] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[UsernameOrEmail] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[AccountType] [nvarchar](50) NOT NULL,
	[Department] [nvarchar](50) NOT NULL,
	[Office] [nvarchar](50) NOT NULL,
	[StateDivisionId] [nvarchar](50) NOT NULL,
	[TownshipId] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](15) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_TB_UserLogin] PRIMARY KEY CLUSTERED 
(
	[UserPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_YearlyPunishmentType]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_YearlyPunishmentType](
	[YearlyPunishmentPkid] [int] IDENTITY(1,1) NOT NULL,
	[YearlyPunishmentTypeCode] [nvarchar](50) NULL,
	[YearlyPunishmentType] [nvarchar](50) NULL,
	[UploadForTownship] [nvarchar](50) NULL,
 CONSTRAINT [PK_TB_YearlyPunishmentType] PRIMARY KEY CLUSTERED 
(
	[YearlyPunishmentPkid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TB_PlaceOfBirth] ADD  CONSTRAINT [DF_TB_Township_Default]  DEFAULT ((0)) FOR [Active]
GO
/****** Object:  StoredProcedure [dbo].[NLog_AddEntry_p]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[NLog_AddEntry_p]
	-- Add the parameters for the stored procedure here
	@machineName nvarchar(max)=null,
	@logged datetime=null,
	@level nvarchar(50)=null,
	@message nvarchar(max)=null, 
	@logger nvarchar(max)=null,
	@properties nvarchar(max)=null,
	@callsite nvarchar(255)=null,
	@exception nvarchar(255)=null,
	@userId int=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into NLogs(MachineName,Logged,[Level],[Message],Logger,Property,CallSite,Exception,UserPkid)
	values(@machineName,@logged,@level,@message,@logger,@properties,@callsite,@exception,@userId)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full_Delete]
	-- Add the parameters for the stored procedure here
	@pkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_Age60Full
	SET
	  IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE Age60FullPkid = @pkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full_Save]
	-- Add the parameters for the stored procedure here
	  @pkid int
	  ,@OriginalEmployeeNo nvarchar(50)
	  ,@EmployeeCode nvarchar(50)
	 , @Name nvarchar(50)
	, @NRCNo nvarchar(50)
	, @RankType nvarchar(50)
	, @DepartmentPlace nvarchar(500)
	, @RaceReligion nvarchar(50)
	, @DOB datetime
	,@LatestSalary nvarchar(50)
	,@PermanentDate datetime
	,@CurrentRankDate datetime
	,@Remark nvarchar(500)
	, @IsDeleted bit
	, @CreatedBy int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	IF @pkid=0
	BEGIN
	INSERT INTO [dbo].[TB_Age60Full]
          ( [BranchCode]
           ,[DepartmentCode]
           ,[RankTypeCode]
		   ,[EmployeeCode]
           ,[Name]
           ,[NRCNo]
           ,[RankType]
           ,[DepartmentPlace]
           ,[RaceReligion]
           ,[DOB]
           ,[LatestSalary]
           ,[PermanentDate]
           ,[CurrentRankDate]
           ,[Remark]
           ,[IsDeleted]
           ,[CreatedDate]
           ,[CreatedBy])
     VALUES
           (''
           ,''
           ,''
		   ,@EmployeeCode
		   ,@Name
		   ,@NRCNo
           ,@RankType
           ,@DepartmentPlace
           ,@RaceReligion
           ,@DOB
           ,@LatestSalary
           ,@PermanentDate
           ,@CurrentRankDate
           ,@Remark
           ,@IsDeleted
           ,CURRENT_TIMESTAMP
           ,@CreatedBy)
	END
	ELSE
	BEGIN
	
	UPDATE [dbo].[TB_Age60Full]
   SET  [BranchCode]=''
     ,[DepartmentCode]=''
     ,[RankTypeCode]=''
	 ,[EmployeeCode]=@EmployeeCode
     ,[Name]=@Name
     ,[NRCNo]=@NRCNo
	 ,[RankType]=@RankType
	 ,[DepartmentPlace]=@DepartmentPlace
	 ,[RaceReligion]=@RaceReligion
	 ,[DOB]=@DOB
	 ,[LatestSalary]=@LatestSalary
	 ,[PermanentDate]=@PermanentDate
	 ,[CurrentRankDate]=@CurrentRankDate
	 ,[Remark]=@Remark
	 ,[IsDeleted]=@IsDeleted
	 ,[ModifiedDate]=CURRENT_TIMESTAMP
 WHERE EmployeeCode=@OriginalEmployeeNo
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [EmployeePkid]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber'
	  ,[Name]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([NRCNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'NRCNo'
	  ,case when ((select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber)) is null then ''  else (select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber)end As 'RankType'
	  ,case when((select Replace(Replace(rt.RankDescription,'Lower',N'အမှုထမ်း'),'Upper',N'အရာထမ်း') from TB_RankType rt INNER JOIN TB_JobHistory As jh ON jh.RankType_Code=rt.RankTypeCode where jh.EmployeeCode=emp.SerialNumber and jh.ToDate is null and jh.IsDeleted=0)) is null then '' else (select Replace(Replace(rt.RankDescription,'Lower',N'အမှုထမ်း'),'Upper',N'အရာထမ်း') from TB_RankType rt INNER JOIN TB_JobHistory As jh ON jh.RankType_Code=rt.RankTypeCode where jh.EmployeeCode=emp.SerialNumber and jh.ToDate is null and jh.IsDeleted=0)end As 'RankTypeDescription'
	  ,(SELECT t.Township FROM TB_Employee AS e, TB_Township AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode) AS 'PlaceOfBirth'
	  ,[Race]
	  ,[Religion]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'DOB'
	  ,case when ((select yb.YearlyBonusSalary from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode )) is null then '' else (select yb.YearlyBonusSalary from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode ) end AS 'LatestSalary'
	  --,[LatestSalary]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
      ,case when ((Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber) end AS 'CurrentRankDate'
	  ,'' As 'Remark'
	  ,(SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25)) 
      from TB_Employee e where e.EmployeeCode=emp.EmployeeCode)  AS 'Age'

	  ,[IsDeleted]
      ,[ModifiedDate],[CreatedDate],[CreatedBy]
  FROM [TB_Employee] emp
  WHERE IsDeleted=0 and IsActive='Active'
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full_SelectByEmployeeCode]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	        [Name] 
	       ,[NRCNumber]
		   ,(select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) As 'CurrentRank'
			,(SELECT t.Township FROM TB_Employee AS e, TB_Township AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode) AS 'PlaceOfBirth'
			,[Race]
			,[Religion]
			,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
			,(select yb.YearlyBonusSalary from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode )AS 'LatestSalary'
			, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
			--,(Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=@EmployeeCode) AS 'CurrentRankDate'
			,(Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=emp.SerialNumber) AS 'CurrentRankDate'
			--,(Select jh.FromDate  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=emp.SerialNumber) AS 'CurrentRankDate'
	    From TB_Employee emp 
		--INNER JOIN TB_YearlyBonus yb ON yb.EmployeeCode=emp.SerialNumber
	    Where SerialNumber=@EmployeeCode
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full1_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full1_Delete]
	-- Add the parameters for the stored procedure here
	@pkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_Age60Full1
	SET
	  IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE Age60FullPkid = @pkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full1_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full1_Save]
	-- Add the parameters for the stored procedure here
	  @pkid int
	  ,@OriginalEmployeeNo nvarchar(50)
	  ,@EmployeeCode nvarchar(50)
	 , @Name nvarchar(50)
	, @NRCNo nvarchar(50)
	, @RankType nvarchar(50)
	, @DepartmentPlace nvarchar(500)
	, @RaceReligion nvarchar(50)
	, @DOB datetime
	,@LatestSalary nvarchar(50)
	,@PermanentDate datetime
	,@CurrentRankDate datetime
	,@Remark nvarchar(500)
	, @IsDeleted bit
	, @CreatedBy int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	IF @pkid=0
	BEGIN
	INSERT INTO [dbo].[TB_Age60Full1]
          ( [BranchCode]
           ,[DepartmentCode]
           ,[RankTypeCode]
		   ,[EmployeeCode]
           ,[Name]
           ,[NRCNo]
           ,[RankType]
           ,[DepartmentPlace]
           ,[RaceReligion]
           ,[DOB]
           ,[LatestSalary]
           ,[PermanentDate]
           ,[CurrentRankDate]
           ,[Remark]
           ,[IsDeleted]
           ,[CreatedDate]
           ,[CreatedBy])
     VALUES
           (''
           ,''
           ,''
		   ,@EmployeeCode
		   ,@Name
		   ,@NRCNo
           ,@RankType
           ,@DepartmentPlace
           ,@RaceReligion
           ,@DOB
           ,@LatestSalary
           ,@PermanentDate
           ,@CurrentRankDate
           ,@Remark
           ,@IsDeleted
           ,CURRENT_TIMESTAMP
           ,@CreatedBy)
	END
	ELSE
	BEGIN
	
	UPDATE [dbo].[TB_Age60Full1]
   SET  [BranchCode]=''
     ,[DepartmentCode]=''
     ,[RankTypeCode]=''
	 ,[EmployeeCode]=@EmployeeCode
     ,[Name]=@Name
     ,[NRCNo]=@NRCNo
	 ,[RankType]=@RankType
	 ,[DepartmentPlace]=@DepartmentPlace
	 ,[RaceReligion]=@RaceReligion
	 ,[DOB]=@DOB
	 ,[LatestSalary]=@LatestSalary
	 ,[PermanentDate]=@PermanentDate
	 ,[CurrentRankDate]=@CurrentRankDate
	 ,[Remark]=@Remark
	 ,[IsDeleted]=@IsDeleted
	 ,[ModifiedDate]=CURRENT_TIMESTAMP
 WHERE EmployeeCode=@OriginalEmployeeNo
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Age60Full1_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Age60Full1_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Age60FullPkid]
      ,[BranchCode]
	  ,[DepartmentCode]
	  ,[RankTypeCode]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([EmployeeCode],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'EmployeeCode'
	  ,[Name]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([NRCNo],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'NRCNo'
	  ,[RankType]
	  ,[DepartmentPlace]
	  ,[RaceReligion]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DOB],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'DOB'
	  ,[LatestSalary]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[PermanentDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'PermanentDate'
      , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[CurrentRankDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'CurrentRankDate'
	  ,[Remark]
	  ,[IsDeleted]
      ,[ModifiedDate],[CreatedDate],[CreatedBy]
  FROM [TB_Age60Full1] 
  WHERE IsDeleted=0 
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Award_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Award_Delete] 
	-- Add the parameters for the stored procedure here
		@pkid nvarchar(5)
	   ,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  
	UPDATE TB_Award
	SET
	IsDeleted=1 
	,ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
WHERE AwardPkid = @pkid
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Award_Insert]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Award_Insert]
	-- Add the parameters for the stored procedure here
	@id int
   ,@pkid nvarchar(50)
   ,@EmployeeCode nvarchar(50)
   ,@AwardDate datetime
   ,@AwardYear nvarchar(50)
   ,@AwardTitle nvarchar(200)
   ,@Reason nvarchar(500)
   ,@IsDeleted bit
   ,@CreatedBy int
   ,@UploadForTownship nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   If @id=0 
	BEGIN
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TB_Award]
	([EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,[AwardDate]
	,[AwardYear]
	,[AwardTypeCode]
	,[Reason]
	,[IsDeleted]
	 ,[IsRecordEdited] 
	,[CreatedDate]
	,[CreatedBy]
	,[UploadForTownship])
	VALUES
	(@EmployeeCode
	,''
	,''
	,''
	,@AwardDate
	,@AwardYear
	,@AwardTitle
	,@Reason
	,@IsDeleted
	,1
	,CURRENT_TIMESTAMP
	,@CreatedBy
	,@UploadForTownship)

END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_Award]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      ,[AwardDate]=@AwardDate
	  ,[AwardYear]=@AwardYear
	  ,[AwardTypeCode]=@AwardTitle
	  ,[Reason] = @Reason
      ,[IsDeleted]=@IsDeleted
	  ,[IsRecordEdited]=1
	  ,UploadForTownship=@UploadForTownship
      ,[ModifiedDate] =CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE EmployeeCode=@EmployeeCode
 AND [IsDeleted]=0
AND AwardPkid=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Award_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Award_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
If(@EmployeeCode !='a')
	BEGIN
	SELECT 
	  [AwardPkid]
	,[EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardDate'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardYear'
	--,(Select at.AwardType from TB_AwardType As at,TB_Award As a Where at.AwardTypeCode=a.AwardTypeCode) As 'AwardType'
	,at.AwardType As 'AwardType'
	,aw.[AwardTypeCode]
	,[Reason]
	,[IsDeleted]
	,[ModifiedDate]
	,[CreatedDate]
	,[CreatedBy]
	FROM [dbo].[TB_Award] As aw
	INNER JOIN TB_AwardType at ON at.AwardTypeCode=aw.AwardTypeCode
	WHERE IsDeleted=0 AND EmployeeCode=@EmployeeCode
    END
ELSE
   BEGIN
   SELECT 
	AwardPkid
	,[EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardDate'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardYear'
	--,(Select at.AwardType from TB_AwardType As at,TB_Award As a Where at.AwardTypeCode=a.AwardTypeCode) As 'AwardType'
	,at.AwardType As 'AwardType'
	,aw.[AwardTypeCode]
	,[Reason]
	,[IsDeleted]
	,[ModifiedDate]
	,[CreatedDate]
	,[CreatedBy]
	FROM [dbo].[TB_Award] aw
	INNER JOIN TB_AwardType at ON at.AwardTypeCode=aw.AwardTypeCode
	WHERE IsDeleted=0 
    END
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_Award_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Award_SelectByEmployeeCode]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@AwardTypeCode nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN
	SELECT 
	  [AwardPkid]
	,aw.[EmployeeCode]
	,aw.[BranchCode]
	,aw.[DepartmentCode]
	,aw.[RankTypecode]
	,case when (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) is null then ''  else (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) end AS 'AwardDate'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardYear'
	--,(Select at.AwardType from TB_AwardType As at,TB_Award As a Where at.AwardTypeCode=a.AwardTypeCode) As 'AwardType'
	,at.AwardType As 'AwardType'
	,aw.[AwardTypeCode]
	,aw.[Reason]
	,aw.[IsDeleted]
	,aw.[ModifiedDate]
	,aw.[CreatedDate]
	,aw.[CreatedBy]
	,emp.[Name],div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
	FROM [dbo].[TB_Award] As aw
	INNER JOIN TB_AwardType at ON at.AwardTypeCode=aw.AwardTypeCode
    join TB_Employee emp on emp.EmployeeCode=aw.EmployeeCode
	left join TB_CurrentJob_Township tw on emp.TownshipCode=tw.TownshipCode
	left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
	left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
	left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
	WHERE
	(@EmployeeCode is null or aw.EmployeeCode=@EmployeeCode) AND
	(@AwardTypeCode is null or aw.AwardTypeCode=@AwardTypeCode) AND
	 aw.IsDeleted=0
    END
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_Award_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Award_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_Award 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Award_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Award_SelectList]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   BEGIN
   SELECT 
	AwardPkid
	,[EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'AwardDate'
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'AwardYear'
	--,(Select at.AwardType from TB_AwardType As at,TB_Award As a Where at.AwardTypeCode=a.AwardTypeCode) As 'AwardType'
	,at.AwardType As 'AwardType'
	,aw.[AwardTypeCode]
	,[Reason]
	,[IsDeleted]
	,[ModifiedDate]
	,[CreatedDate]
	,[CreatedBy]
	FROM [dbo].[TB_Award] aw
	INNER JOIN TB_AwardType at ON at.AwardTypeCode=aw.AwardTypeCode
	WHERE IsDeleted=0 
    END
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_AwardCount_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_AwardCount_SelectList]
	-- Add the parameters for the stored procedure here
	  @awardTypeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [EmployeePkid]
	      , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber'
		  ,[Name]
		  ,case when (select  rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) is null then '' else (select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) end As 'CurrentRank'
		  ,case when (SELECT  t.Township FROM TB_Employee AS e, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode) is null then '' else (SELECT  t.Township FROM TB_Employee AS e, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode) end AS 'JobAddress'
		  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
		  ,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
		  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([NRCNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'NRCNumber'
		  ,at.AwardType
		  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((a.AwardYear),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardYear'
		  --,(select at.AwardType from TB_Award a INNER JOIN TB_AwardType at ON a.AwardTypeCode=at.AwardTypeCode where a.IsDeleted=0 and a.EmployeeCode=emp.SerialNumber and a.AwardTypeCode=@awardTypeCode) As 'AwardType'
		  -- ,case when (select (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((AwardYear),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) from TB_Award a  where a.IsDeleted=0 and a.EmployeeCode=emp.SerialNumber and a.AwardTypeCode=@awardTypeCode) is null then '' else  (select (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([AwardYear],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) from TB_Award a  where a.IsDeleted=0 and a.EmployeeCode=emp.SerialNumber and a.AwardTypeCode=@awardTypeCode ) end As 'AwardYear'
     FROM TB_Employee emp
	INNER JOIN TB_Award a ON a.EmployeeCode=emp.SerialNumber Inner join TB_AwardType at on a.AwardTypeCode=at.AwardTypeCode
	where emp.IsDeleted=0 and a.AwardTypeCode=@awardTypeCode and a.IsDeleted=0  and (emp.IsActive='Active' or emp.IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ')

--EXEC [Sp_AwardCount_SelectList] @awardTypeCode="112"
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AwardInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_AwardInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@AwardPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Award 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE AwardPkid = @AwardPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AwardType_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_AwardType_Save]
	-- Add the parameters for the stored procedure here
	@id int,
   @AwardType nvarchar(500),
   @AwardTypeCode nvarchar(50)
   ,@UploadForTownship nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @AwardTypeCode1 nvarchar(10)
	SET @AwardTypeCode1 =(SELECT MAX(AwardTypeCode) FROM TB_AwardType) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_AwardType](AwardTypeCode, AwardType,Active,UploadForTownship)
	VALUES( @AwardTypeCode1, @AwardType,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_AwardType]
	SET AwardType=@AwardType
	where AwardTypeCode=@AwardTypeCode

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AwardType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_AwardType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	AwardTypePkid,AwardTypeCode, AwardType
	FROM TB_AwardType
	WHERE Active=1
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_AwardTypeName_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_AwardTypeName_Delete]
	-- Add the parameters for the stored procedure here
	@AwardTypeCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_AwardType
	SET
	Active = 0
	WHERE AwardTypeCode = @AwardTypeCode
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Branch_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Branch_Delete]
	-- Add the parameters for the stored procedure here
	@BranchCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN
	DELETE FROM TB_Branch
	WHERE BranchCode = @BranchCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Branch_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Branch_Save]
	-- Add the parameters for the stored procedure here
	@BranchPkid int
	, @BranchCode nvarchar(50)
	, @BranchName nvarchar(200)
	, @TownshipCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
    IF (@BranchPkid = 0)
    BEGIN
    
	if((select max(BranchCode) AS BranchCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(BranchCode)+1))) + RTRIM(max(BranchCode)+1) AS BranchCode 
		from TB_Branch
		) as A) is null)
	begin
		set @BranchCode ='000001'
	end
	else
	begin
		set @BranchCode = (select max(BranchCode) AS BranchCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(BranchCode)+1))) + RTRIM(max(BranchCode)+1) AS BranchCode 
		from TB_Branch
		) as A)
	end

	INSERT INTO TB_Branch(
	 [BranchCode]
	, [BranchName]
	,[TownshipCode])
      VALUES
      (
       @BranchCode
      , @BranchName
	  ,@TownshipCode
	  )
	END
	ELSE
	BEGIN
	UPDATE TB_Branch
	SET
	BranchName=@BranchName
	,TownshipCode=@TownshipCode
	WHERE BranchCode = @BranchCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Branch_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Branch_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	BranchPkid, BranchCode, BranchName, TownshipCode FROM TB_Branch
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJob_Township_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJob_Township_Save]
	-- Add the parameters for the stored procedure here
	@id int,
   @Township nvarchar(500),
   @Townshipcode1 nvarchar(50)
   ,@UploadForTownship nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TownshipCode nvarchar(10)
	SET @TownshipCode =(SELECT MAX(TownshipCode) FROM TB_CurrentJob_Township) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_CurrentJob_Township](TownshipCode, Township,Active,IsRecordEdited,UploadForTownship)
	VALUES( @TownshipCode, @Township,1,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_CurrentJob_Township]
	SET Township=@Township, IsRecordEdited=1
	where TownshipCode=@Townshipcode1

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJob_Township_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJob_Township_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	CurrentJobTownshipPkid,TownshipCode, Township, Active
	FROM TB_CurrentJob_Township  
	where Active=1
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJob_Township_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJob_Township_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_CurrentJob_Township 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJob_TownshipDefault_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJob_TownshipDefault_Update]
	-- Add the parameters for the stored procedure here
	@TownshipCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_CurrentJob_Township
	SET
	Active = 0
	WHERE TownshipCode = @TownshipCode
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJobTownship_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJobTownship_Save]
	-- Add the parameters for the stored procedure here
	@id int,
   @Township nvarchar(500),
   @Townshipcode1 nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TownshipCode nvarchar(10)
	SET @TownshipCode =(SELECT MAX(TownshipCode) FROM TB_CurrentJob_Township) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_CurrentJob_Township](StateDivisionID, TownshipCode, Township,Active,IsRecordEdited)
	VALUES('100', @TownshipCode, @Township,1,1)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_CurrentJob_Township]
	SET Township=@Township, IsRecordEdited=1
	where TownshipCode=@Townshipcode1

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJobTownship_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJobTownship_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	TSP.CurrentJobTownshipPkid, TSP.StateDivisionID, STD.StateDivision, TSP.TownshipCode, TSP.Township, TSP.Active 
	FROM TB_CurrentJob_Township TSP
	LEFT JOIN TB_StateDivision STD
	ON TSP.StateDivisionID = STD.StateDivisionCode
	where Active=1
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJobTownshipDefault_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJobTownshipDefault_Update]
	-- Add the parameters for the stored procedure here
	@TownshipCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_CurrentJob_Township
	SET
	Active = 0
	WHERE TownshipCode = @TownshipCode
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentJobTownshipInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentJobTownshipInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	  @CurrentJobTownshipPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_CurrentJob_Township 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE CurrentJobTownshipPkid = @CurrentJobTownshipPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentMonthEmployeeCount_List]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_CurrentMonthEmployeeCount_List]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
--Declare @MyDateAndTime as datetime
--Set @MyDateAndTime = CURRENT_TIMESTAMP

	select 
	(SELECT REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(DATENAME(month, CURRENT_TIMESTAMP),'January',N'ဇွန်နဝါရီလ'),'February',N'ဖေဖော်ဝါရီလ'),'March',N'မတ်လ'),'April',N'ဧပြီလ'),'May',N'မေလ'),'June',N'ဇွန်လ'),'July',N'ဇူလိုင်လ'),'August',N'ဩဂုတ်လ'),'September',N'စတင်ဘာလ'),'October',N'အောက်တိုဘာလ'),'November',N'နိုဝင်ဘာလ'),'December',N'ဒီဇင်ဘာလ') AS 'MonthName') AS 'MonthName'
	
,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and jh.IsCurrent=1 and jh.IsDeleted=0 and e.IsDeleted=0 and  (e.JoinDate)<=DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1)and  e.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and jh.IsCurrent=1 and jh.IsDeleted=0  and e.IsDeleted=0  And e.Gender in (N'ကျား',N'မ') and  (e.JoinDate)<=DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and  e.IsDeleted=0) end AS 'Original_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsCurrent=1 and jh.IsDeleted=0 and e.IsDeleted=0 and  (e.JoinDate)<=DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and  e.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsCurrent=1 and jh.IsDeleted=0 and e.IsDeleted=0 And e.Gender in (N'ကျား',N'မ') and  (e.JoinDate)<=DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and  e.IsDeleted=0) end AS 'Original_LowerCount'


,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription in ('Lower','Upper') and  jh.IsDeleted=0  and jh.IsCurrent=1 and e.IsDeleted=0 and (e.JoinDate)<=DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1)  and e.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription in ('Lower','Upper') and  jh.IsDeleted=0 And e.Gender in (N'ကျား',N'မ')  and jh.IsCurrent=1 and e.IsDeleted=0 and (e.JoinDate)<=DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1)  and e.IsDeleted=0) end As 'Original_TotalCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt  ON jh.RankType_Code=rt.RankTypeCode INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and IsActive=N'နုတ်ထွက်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt  ON jh.RankType_Code=rt.RankTypeCode INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and IsActive=N'နုတ်ထွက်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive) end As 'Resign_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and IsActive=N'နုတ်ထွက်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0  GROUP BY IsActive)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and IsActive=N'နုတ်ထွက်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive) end As 'Resign_LowerCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode where rt.RankDescription='Upper' and IsActive LIKE N'%ပင်စင်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode where rt.RankDescription='Upper' and IsActive LIKE N'%ပင်စင်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0) end As 'Pension_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and IsActive  LIKE N'%ပင်စင်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and IsActive  LIKE N'%ပင်စင်' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0) end As 'Pension_LowerCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ထုတ်ပယ်' OR IsActive=N'ထုတ်ပစ်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 ))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ထုတ်ပယ်' OR IsActive=N'ထုတ်ပစ်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0)end As 'Remove_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ထုတ်ပယ်' OR IsActive=N'ထုတ်ပစ်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 ))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ထုတ်ပယ်' OR IsActive=N'ထုတ်ပစ်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 )end As 'Remove_LowerCount'


--,(select  COUNT(*) from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and IsActive=N'ကွယ်လွန်' and isCurrent=1 and e.isDeleted=0 GROUP BY IsActive) As 'Dead_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ကွယ်လွန်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ကွယ်လွန်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Dead_LowerCount'

--,(select  COUNT(*)  from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and IsActive=N'ကွယ်လွန်' and isCurrent=1  and e.isDeleted=0 GROUP BY IsActive) As 'Dead_LowerCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ကွယ်လွန်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ကွယ်လွန်') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Dead_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(IsActive),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where (IsActive in (N'နုတ်ထွက်',N'ထုတ်ပယ်',N'ထုတ်ပစ်',N'ကွယ်လွန်') OR IsActive LIKE N'%ပင်စင်') and rt.RankDescription in ('Upper','Lower') and jh.IsDeleted=0 and jh.IsCurrent=1 and e.isDeleted=0 ))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(IsActive),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where (IsActive in (N'နုတ်ထွက်',N'ထုတ်ပယ်',N'ထုတ်ပစ်',N'ကွယ်လွန်') OR IsActive LIKE N'%ပင်စင်') and rt.RankDescription in ('Upper','Lower') and jh.IsDeleted=0 and jh.IsCurrent=1 and e.isDeleted=0 )end  As 'Decrease_Count'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Move_UpperCount'

--,(select  COUNT(*) from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ' and isCurrent=1 and e.isDeleted=0 GROUP BY IsActive) As 'Move_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Move_LowerCount'

--,(select  COUNT(IsActive) from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode  and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ' and isCurrent=1 and e.isDeleted=0 GROUP BY IsActive) As 'Move_LowerCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where (rt.RankDescription='Lower' OR rt.RankDescription='Upper') and (IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where (rt.RankDescription='Lower' OR rt.RankDescription='Upper') and (IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Move_TotalCount'

--,(select  COUNT(IsActive) from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode  and jh.EmployeeCode=e.SerialNumber where (rt.RankDescription='Lower' OR rt.RankDescription='Upper') and IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ' and isCurrent=1 and e.isDeleted=0 GROUP BY IsActive) As 'Move_TotalCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and (IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Arrive_UpperCount'

--,(select  COUNT(IsActive)  from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and isCurrent=1 and e.isDeleted=0 GROUP BY IsActive) As 'Arrive_UpperCount'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and (IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive)end As 'Arrive_LowerCount'

--,(select  COUNT(IsActive)  from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and  IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and isCurrent=1 and e.isDeleted=0 GROUP BY IsActive) As 'Arrive_LowerCount'


,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(IsActive),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')   from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where (rt.RankDescription='Lower' OR rt.RankDescription='Upper') and  IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and isCurrent=1 and e.isDeleted=0 and jh.IsDeleted=0 GROUP BY IsActive))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(IsActive),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh  
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where (rt.RankDescription='Lower' OR rt.RankDescription='Upper') and  IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and isCurrent=1 and e.isDeleted=0 and jh.isDeleted=0 GROUP BY IsActive)end  As 'Arrive_TotalCount'




,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and jh.IsDeleted=0 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0 and jh.IsCurrent=1) )is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and jh.IsDeleted=0 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0 and jh.IsCurrent=1)end As 'IncreaseUpper'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsDeleted=0 and jh.IsCurrent=1 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0) )is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsDeleted=0 and jh.IsCurrent=1 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0)end As 'IncreaseLower'


--,(select COUNT(*) from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsDeleted=0 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0) As 'IncreaseLower'

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription in ('Lower','Upper') and jh.IsDeleted=0 and jh.IsCurrent=1 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0) )is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription in ('Lower','Upper')and jh.IsDeleted=0 and jh.IsCurrent=1 and IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1) and e.IsDeleted=0)end As 'Increase_Count'

--,(select COUNT(*) from TB_JobHistory jh  
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode and jh.EmployeeCode=e.SerialNumber where rt.RankDescription in ('Lower','Upper') and  jh.IsDeleted=0  and jh.IsCurrent=1 and  IsActive='Active' and (e.JoinDate)>DATEADD(MONTH, DATEDIFF(MONTH, -1, GETDATE())-1, -1)  and e.IsDeleted=0) As 'Increase_Count'

--Remaining Upper 
,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 and IsActive  in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ')))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Upper' and jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 and IsActive  in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ'))end AS 'RemainUpper'


--Remaining Lower

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 And e.Gender in (N'ကျား',N'မ') and e.IsActive  in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ')))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 And e.Gender in (N'ကျား',N'မ') and e.IsActive  in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ'))end AS 'RemainLower'

--,(select COUNT(*) from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where rt.RankDescription='Lower' and jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 and IsActive in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ')) AS 'RemainLower'



--Remaining Total Count

,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 And e.Gender in (N'ကျား',N'မ') and e.IsActive  in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ')))is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 And e.Gender in (N'ကျား',N'မ') and e.IsActive  in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ'))end AS 'RemainCount'

--,(select COUNT(*) from  TB_Employee e  INNER JOIN TB_JobHistory jh  ON e.SerialNumber=jh.EmployeeCode
--INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode   and jh.EmployeeCode=e.SerialNumber where  jh.IsDeleted=0 and jh.IsCurrent=1 and e.IsDeleted=0 and IsActive in ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ')) AS 'RemainCount'


--from [TB_Employee]  emp where IsDeleted=0 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_CurrentRankDate_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_CurrentRankDate_Select]
      --@EmployeeCode nvarchar(50)
  AS
	Begin
	
    select jh.FromDate,jh.EmployeeCode  From TB_JobHistory jh inner join TB_Employee e on jh.EmployeeCode=e.SerialNumber 
	where jh.IsCurrent=1 and jh.IsDeleted=0 and e.IsDeleted=0 and e.IsActive='Active'
	--and jh.EmployeeCode=@EmployeeCode


	end

	--EXEC SP_CurrentRankDate_Select @EmployeeCode='0456'


GO
/****** Object:  StoredProcedure [dbo].[Sp_CurrentRankDate_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_CurrentRankDate_Update]
	-- Add the parameters for the stored procedure here
	 @EmployeeCode nvarchar(50)
	,@years decimal(18,0)
	,@months decimal(18,0)
	,@days decimal(18,0)
	,@Duration decimal(18,0)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
	update TB_JobHistory
	set  Job_Year=@years
		,Job_Month=@months
		,Job_Day=@days
		,Duration=@Duration
	where EmployeeCode=@EmployeeCode and IsCurrent=1

END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeadEmployee_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeadEmployee_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Name] 
	       ,[Father_Name]
		   ,(select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) As 'CurrentRank'
			--,(SELECT jh.DepartmentName FROM TB_Employee AS e, TB_JobHistory AS jh WHERE e.SerialNumber=jh.EmployeeCode AND e.EmployeeCode=emp.EmployeeCode AND jh.ToDate is null) AS 'Department'

			--Edited codes by OMWai on 24Aug2020
			--,(SELECT jp.DepartmentName from TB_JobHistory jp 
   --         INNER JOIN TB_Employee e ON e.SerialNumber=jp.EmployeeCode where e.IsDeleted=0 and e.SerialNumber=emp.SerialNumber and IsActive LIKE N'ကွယ်လွန်' and jp.IsCurrent=1 and jp.IsDeleted=0) AS 'Department'
		, case when (SELECT t.Township FROM TB_Employee AS e inner join TB_JobHistory AS jh on e.SerialNumber=jh.EmployeeCode, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and jh.IsDeleted=0 and  jh.ToDate is null and e.SerialNumber=emp.SerialNumber and IsActive LIKE N'ကွယ်လွန်' and e.IsDeleted=0) is null then '' else (SELECT t.Township FROM TB_Employee AS e inner join TB_JobHistory AS jh on e.SerialNumber=jh.EmployeeCode, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and jh.IsDeleted=0 and  jh.ToDate is null and e.SerialNumber=emp.SerialNumber and IsActive LIKE N'ကွယ်လွန်' and e.IsDeleted=0) end AS 'Department'


			,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
					--,case when(select convert (varchar(10), yb.YearlyBonusSalary) from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode ) is null then '' else (select convert (varchar(10), yb.YearlyBonusSalary) from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode )end  AS 'LatestSalary'
			,case when(select convert (varchar(10), yb.YearlyBonusSalary)  from TB_Employee As e join TB_YearlyBonus As yb On e.SerialNumber=yb.EmployeeCode where yb.EmployeeCode=e.SerialNumber   and e.IsDeleted=0 and e.SerialNumber=0002 and IsActive LIKE N'ကွယ်လွန်' and yb.IsDeleted=0)is null then '' else 
			(select convert (varchar(10), yb.YearlyBonusSalary)  from TB_Employee As e join TB_YearlyBonus As yb On e.SerialNumber=yb.EmployeeCode where yb.EmployeeCode=e.SerialNumber   and e.IsDeleted=0 and e.SerialNumber=@EmployeeCode and IsActive LIKE N'ကွယ်လွန်' and yb.IsDeleted=0) end  AS 'LatestSalary'
			
	    From TB_Employee emp 
		--INNER JOIN TB_YearlyBonus yb ON yb.EmployeeCode=emp.SerialNumber
	    Where SerialNumber=@EmployeeCode and IsActive LIKE N'%ကွယ်လွန်' and emp.IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DeleteTransfer]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_DeleteTransfer]
@CreatedBy int=null,
@TransferPkid int=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	Declare @EmployeeCode nvarchar(50)
	Declare @FromTownshipCode nvarchar(50)
	Declare @ToTownshipCode nvarchar(50)

	SET NOCOUNT ON;
UPDATE TB_Transfer
	SET
	IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE TransferPkid = @TransferPkid

  set @EmployeeCode =(select EmployeeCode from TB_Transfer where TransferPkid =@TransferPkid)
  set @FromTownshipCode =(select FromTownshipCode from TB_Transfer where TransferPkid =@TransferPkid)
  set @ToTownshipCode =(select ToTownshipCode from TB_Transfer where TransferPkid =@TransferPkid)

update TB_Disposal set IsDeleted=1 , CreatedBy=@CreatedBy where EmployeeCode=@EmployeeCode and DisposalTypeCode='101' and TransferId=@TransferPkid

if((select count(*) from TB_JobHistory where EmployeeCode=@EmployeeCode)=1)
begin
update TB_JobHistory set IsDeleted=1,IsCurrent=0 where EmployeeCode =@EmployeeCode and IsCurrent=1
end
else if((select count(*) from TB_JobHistory where EmployeeCode=@EmployeeCode)>1)
begin
update TB_JobHistory set IsDeleted=1,IsCurrent=0 where EmployeeCode =@EmployeeCode and IsCurrent=1
update TB_JobHistory set IsCurrent=1 where DepartmentCode =@FromTownshipCode and EmployeeCode =@EmployeeCode
end
update TB_Employee set Occupation=@FromTownshipCode,TownshipCode=@FromTownshipCode where EmployeeCode=@EmployeeCode

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Department_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Department_Delete]
	-- Add the parameters for the stored procedure here
	@DepartmentCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN
	DELETE FROM TB_Department
	WHERE DepartmentCode = @DepartmentCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Department_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Department_Save]
	-- Add the parameters for the stored procedure here
	@DepartmentPkid int=null
	, @DepartmentCode nvarchar(50)=null
	, @Department nvarchar(500)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
    IF (@DepartmentPkid = 0)
    BEGIN
    
	if((select max(DepartmentCode) AS DepartmentCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(DepartmentCode)+1))) + RTRIM(max(DepartmentCode)+1) AS DepartmentCode 
		from TB_Department
		) as A) is null)
	begin
		set @DepartmentCode ='000001'
	end
	else
	begin
		set @DepartmentCode = (select max(DepartmentCode) AS DepartmentCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(DepartmentCode)+1))) + RTRIM(max(DepartmentCode)+1) AS DepartmentCode 
		from TB_Department
		) as A)
	end

	INSERT INTO TB_Department(
	 [DepartmentCode]
	, [Department])
      VALUES
      (
       @DepartmentCode
      , @Department
	  )
	END
	ELSE
	BEGIN
	UPDATE TB_Department
	SET
	Department= @Department
	WHERE DepartmentCode = @DepartmentCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Department_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Department_Select]
	-- Add the parameters for the stored procedure here
	@Department nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	DepartmentPkid, DepartmentCode, Department FROM TB_Department where 
	(@Department is null or Department=@Department) 
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Disposal_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Disposal_Delete]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE TB_Disposal
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @EmployeeCode

	UPDATE TB_Employee
	SET IsActive='Active'
	,CreatedBy=@CreatedBy
	WHERE EmployeeCode=@EmployeeCode 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Disposal_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Disposal_Save]
	-- Add the parameters for the stored procedure here
	@id int=null,
	@EmployeeCode nvarchar(50)=null,
	@DisposalDate datetime=null,
	@DisposalTypeCode nvarchar(50)=null,
	@remark nvarchar(500)=null,
	@IsDeleted bit=null,
	@CreatedBy int=null,
	@UploadForTownship nvarchar(50)=null,
	@isTransfer bit,
	@TansferPkid int=null

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	If @id=0
	BEGIN
	Insert Into TB_Disposal(EmployeeCode,
	DisposalDate,
	DisposalTypeCode,
	Remark,
	IsDeleted,
	IsRecordEdited,
	CreatedDate,
	CreatedBy,
	UploadForTownship,
	TransferId)

	Values(@EmployeeCode,
	@DisposalDate,
	@DisposalTypeCode,
	@remark,
	@IsDeleted,
	1,
	CURRENT_TIMESTAMP,
	@CreatedBy,
	@UploadForTownship,
	@TansferPkid)

	if(@isTransfer=0)
	begin
		update TB_Employee set IsActive='InActive' where EmployeeCode=@EmployeeCode
	end
	
END
ELSE
BEGIN
    Update TB_Disposal set
	DisposalDate=@DisposalDate,
	DisposalTypeCode=@DisposalTypeCode,
	Remark=@remark,
	ModifiedDate=CURRENT_TIMESTAMP,
	IsRecordEdited=1
	where EmployeeCode=@EmployeeCode



END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Disposal_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Disposal_SelectByEmployeeCode]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@DisposalTypeCode nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(d.EmployeeCode,'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'EmployeeCode'
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
	  (@EmployeeCode is null or d.EmployeeCode=@EmployeeCode) AND
	  (@DisposalTypeCode is null or d.DisposalTypeCode=@DisposalTypeCode) AND
	   d.IsDeleted=0 and e.IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Disposal_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Disposal_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_Disposal 


END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Disposal_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Disposal_SelectList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TB_Disposal where IsDeleted=0 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_DisposalDelete_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_DisposalDelete_Update]
@serialnumber nvarchar(50)
as
Update [dbo].[TB_Disposal]
set IsDeleted=1
where EmployeeCode=@serialnumber
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalEmployee_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalEmployee_Select]


	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [EmployeePkid]
      ,emp.[EmployeeCode] 
	  ,case when(select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) is null then '' else (select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) end As 'CurrentRank'
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber'
	  ,[Name],[Father_Name],[Mother_Name],[Gender],[Religion]
      ,[Race]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([NRCNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'NRCNumber'
	  ,PlaceOfBirth AS 'PlaceOfBirthCode'
	  ,case when (select  et.EducationType  from TB_EducationType et,TB_Employee e where e.EducationTypeCode=et.EducationTypeCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0 and et.Active=1) is null then '' else (select  et.EducationType  from TB_EducationType et,TB_Employee e where e.EducationTypeCode=et.EducationTypeCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0 and et.Active=1) end AS 'EducationType'
	  ,[EducationTypeCode]
	  ,case when (SELECT  t.Township FROM TB_Employee AS e, TB_PlaceOfBirth AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.SerialNumber=emp.EmployeeCode and e.IsDeleted=0) is null then '' else (SELECT  t.Township FROM TB_Employee AS e, TB_PlaceOfBirth AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.SerialNumber=emp.EmployeeCode and e.IsDeleted=0) end AS 'PlaceOfBirth'
	  ,[Occupation]
	  ,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
      ,[EyeColor],[Height],[Mark],[OtherName]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
	  ,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=emp.SerialNumber and  e.IsDeleted=0 and jh.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=emp.SerialNumber and  e.IsDeleted=0 and jh.IsDeleted=0) end AS 'CurrentRankDate'
      ,emp.TownshipCode
	  ,tw.[Township]
	  ,case when (SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25)) 
      from TB_Employee e where e.EmployeeCode=emp.EmployeeCode) is null then '' else (SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25)) 
      from TB_Employee e where e.EmployeeCode=emp.EmployeeCode) end  AS 'Age'
	  ,[Address],[DearestPerson],[Ancestor],[IsActive],emp.[IsDeleted],emp.IsRecordEdited
      ,emp.[ModifiedDate],emp.[CreatedDate],emp.[CreatedBy]
  FROM [TB_Employee]  emp , [TB_CurrentJob_Township] As  tw  
  --INNER JOIN TB_JobPosting  jp ON emp.SerialNumber =jp.EmployeeCode
  --INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankTypeCode
  WHERE emp.IsDeleted=0 AND IsActive<>'Active' AND emp.TownshipCode = tw.TownshipCode
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@DisposalPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Disposal 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE DisposalPkid = @DisposalPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalType_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalType_Delete]
	-- Add the parameters for the stored procedure here
	@DisposalTypeCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_DisposalType
	SET
	Active = 0
	WHERE DisposalTypeCode = @DisposalTypeCode
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalType_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalType_Save]
	-- Add the parameters for the stored procedure here
	@id int,
   @DisposalType nvarchar(500),
   @DisposalTypeCode1 nvarchar(50),
   @UploadForTownship nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @DisposalTypeCode nvarchar(10)
	SET @DisposalTypeCode =(SELECT MAX(DisposalTypeCode) FROM TB_DisposalType) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_DisposalType](DisposalTypeCode,DisposalType,Active,IsRecordEdited,UploadForTownship)
	VALUES( @DisposalTypeCode, @DisposalType,1,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_DisposalType]
	SET DisposalType=@DisposalType,IsRecordEdited =1
	where DisposalTypeCode=@DisposalTypeCode1

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT DisposalTypePkid,DisposalTypeCode,DisposalType from TB_DisposalType where Active=1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalType_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalType_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_DisposalType 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisposalTypeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisposalTypeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@DisposalTypePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_DisposalType 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE DisposalTypePkid = @DisposalTypePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EducationType_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EducationType_Delete]
	-- Add the parameters for the stored procedure here
	@EducationTypeCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_EducationType
	SET
	Active = 0
	WHERE EducationTypeCode = @EducationTypeCode
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EducationType_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EducationType_Save]
	-- Add the parameters for the stored procedure here
	@id int,
   @EducationType nvarchar(500),
   @EducationTypeCode1 nvarchar(50),
   @UploadForTownship nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @EducationTypeCode nvarchar(10)
	SET @EducationTypeCode =(SELECT MAX(EducationTypeCode) FROM TB_EducationType) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_EducationType]( EducationTypeCode, EducationType,Active,IsRecordEdited,UploadForTownship)
	VALUES( @EducationTypeCode, @EducationType,1,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_EducationType]
	SET EducationType=@EducationType,IsRecordEdited=1
	where EducationTypeCode=@EducationTypeCode1

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EducationType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EducationType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT EducationTypeCode,EducationType,EducationTypePkid,Active from TB_EducationType where Active=1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EducationType_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EducationType_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_EducationType
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EducationTypeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EducationTypeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	  @EducationTypePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_EducationType 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE EducationTypePkid = @EducationTypePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Employee_Delete]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null
	,@CreatedBy int=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	declare @slr nvarchar(50)
		set @slr=(select SerialNumber from TB_Employee where EmployeeCode=@EmployeeCode and IsDeleted=0)

		--Update son&daughter
		UPDATE TB_SonAndDaughter
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update relationship
	UPDATE TB_Relationship
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--Update TrainingHistory
		UPDATE TB_TrainingHistory
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update Award
	UPDATE TB_Award
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--Update Punishment
		UPDATE TB_Punishment
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update IntKnowledge
	UPDATE TB_IntKnowledge
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--Update JobPosting
		UPDATE TB_JobPosting
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update JobHistory
	UPDATE TB_JobHistory
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update Age60Full
	UPDATE TB_Age60Full
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update LeaveEntitlement
	UPDATE TB_LeaveEntitlement
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update YearlyBonus
	UPDATE TB_YearlyBonus
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update Pension
	UPDATE TB_Pension
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	--update Disposal
	UPDATE TB_Disposal
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @slr

	UPDATE TB_Employee
	SET
	IsDeleted=1 
	, IsRecordEdited = 1
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE EmployeeCode = @EmployeeCode
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_Insert]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Employee_Insert]
	-- Add the parameters for the stored procedure here
	@EmployeePkid int
	,@originalcode nvarchar(50)
	, @EmployeeCode nvarchar(50)
	, @SerialNumber nvarchar(50)
	, @Name nvarchar(50)
	, @FatherName nvarchar(50)
	, @MotherName nvarchar(50)
	, @Gender nvarchar(50)
	, @Religion nvarchar(50)
	, @Race nvarchar(50)
	, @NRCNumber nvarchar(50)
	, @PlaceOfBirth nvarchar(50)
	, @Occupation nvarchar(50)
	, @DateOfBirth datetime
	, @EyeColor nvarchar(50)
	, @Height nvarchar(50)
	, @Mark nvarchar(50)
	, @OtherName nvarchar(50)
	, @JoinDate datetime
	, @TownshipCode nvarchar(50)
	, @Address nvarchar(200)
	, @DearestPerson nvarchar(500)
	, @Ancestor nvarchar(500)
	, @IsActive bit
	, @IsDeleted bit
	, @IsRecordEdited bit
	, @CreatedBy int ,
	@Propic nvarchar(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	If @EmployeePkid=0 
	BEGIN

	if((select max(EmployeeCode) AS EmployeeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(EmployeeCode)+1))) + RTRIM(max(EmployeeCode)+1) AS EmployeeCode 
		from TB_Employee
		) as A) is null)
	begin
		set @EmployeeCode ='000001'
	end
	else
	begin
		set @EmployeeCode = (select max(EmployeeCode) AS EmployeeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(EmployeeCode)+1))) + RTRIM(max(EmployeeCode)+1) AS EmployeeCode 
		from TB_Employee
		) as A)
	end

	INSERT INTO [dbo].[TB_Employee]
           ([EmployeeCode]
           ,[SerialNumber]
           ,[Name]
		   ,Father_Name
		   ,Mother_Name
           ,[Gender]
           ,[Religion]
           ,[Race]
           ,[NRCNumber]
           ,[PlaceOfBirth]
           ,[Occupation]
           ,[DateOfBirth]
           ,[EyeColor]
           ,[Height]
           ,[Mark]
           ,[OtherName]
           ,[JoinDate]
           ,[TownshipCode]
           ,[Address]
		   , DearestPerson
		   ,Ancestor
           ,[IsActive]
           ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy],ProfilePic)
     VALUES
           (@EmployeeCode
           ,@SerialNumber
           ,@Name
		   ,@FatherName
		   ,@MotherName
           ,@Gender
           ,@Religion
           ,@Race
           ,@NRCNumber
           ,@PlaceOfBirth
           ,@Occupation
           ,@DateOfBirth
           ,@EyeColor
           ,@Height
           ,@Mark
           ,@OtherName
           ,@JoinDate
           ,@TownshipCode
           ,@Address
		   ,@DearestPerson
		   ,@Ancestor
           ,@IsActive
           ,@IsDeleted
		   ,@IsRecordEdited
           ,CURRENT_TIMESTAMP
           ,@CreatedBy,@Propic)
	END
	ELSE
	BEGIN
	declare @slr nvarchar(50)
		set @slr=(select SerialNumber from TB_Employee where EmployeeCode=@originalcode and IsDeleted=1)

		--update son&daughter
		update TB_SonAndDaughter set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update relationship
		update TB_Relationship set EmployeeCode=@SerialNumber where EmployeeCode=@slr

	UPDATE [TB_Employee]
   SET [SerialNumber] = @SerialNumber
      ,[Name] = @Name
	  ,[Father_Name]=@FatherName
	  ,[Mother_Name]=@MotherName
      ,[Gender] = @Gender
      ,[Religion] = @Religion
      ,[Race] = @Race
      ,[NRCNumber] = @NRCNumber
      ,[PlaceOfBirth] = @PlaceOfBirth
      ,[Occupation] = @Occupation
      ,[DateOfBirth] = @DateOfBirth
      ,[EyeColor] = @EyeColor
      ,[Height] = @Height
      ,[Mark] = @Mark
      ,[OtherName] = @OtherName
      ,[JoinDate] = @JoinDate
      ,[TownshipCode] = @TownshipCode
      ,[Address] = @Address
	  ,[DearestPerson]=@DearestPerson
	  ,[Ancestor]=@Ancestor
      ,[IsActive] = @IsActive
      ,[IsDeleted] = @IsDeleted
	  ,[IsRecordEdited] = @IsRecordEdited
      ,[ModifiedDate] = CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
	  ,ProfilePic=@Propic
 WHERE EmployeeCode=@EmployeeCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Employee_Save]
	-- Add the parameters for the stored procedure here
	@EmployeePkid int
	, @EmployeeCode nvarchar(50)=null
	, @SerialNumber nvarchar(50)=null
	, @Name nvarchar(50)=null
	, @FatherName nvarchar(50)=null
	, @MotherName nvarchar(50)=null
	, @Gender nvarchar(50)=null
	, @Religion nvarchar(50)=null
	, @Race nvarchar(50)=null
	, @NRCNumber nvarchar(50)=null
	, @PlaceOfBirth nvarchar(50)=null
	, @Education nvarchar(50)=null
	, @Occupation nvarchar(50)=null
	, @DateOfBirth datetime=null
	, @EyeColor nvarchar(50)=null
	, @Height nvarchar(50)=null
	, @Mark nvarchar(50)=null
	, @OtherName nvarchar(50)=null
	, @JoinDate datetime=null
	, @TownshipCode nvarchar(50)=null
	, @Address nvarchar(200)=null
	, @DearestPerson nvarchar(500)=null
	, @Ancestor nvarchar(500)=null
	, @IsActive nvarchar(50)=null
	, @IsDeleted bit=null
	, @IsRecordEdited bit=null
	, @CreatedBy int=null
	,@UploadForTownship nvarchar(50)=null
	,@ProfilePic nvarchar(MAX)=null
	,@NrcPic nvarchar(MAX)=null
	,@Form66Pic nvarchar(MAX)=null
	,@Status nvarchar(50)=null
	,@RejectComment nvarchar(MAX)=null
	,@EditStatus nvarchar(20)=null
	,@EditComment nvarchar(MAX)=null
	,@DeleteStatus nvarchar(20)=null
	,@DegreePic nvarchar(MAX)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	If @EmployeePkid=0 
	BEGIN

	if((select max(EmployeeCode) AS EmployeeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(EmployeeCode)+1))) + RTRIM(max(EmployeeCode)+1) AS EmployeeCode 
		from TB_Employee
		) as A) is null)
	begin
		set @EmployeeCode ='000001'
	end
	else
	begin
		set @EmployeeCode = (select max(EmployeeCode) AS EmployeeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(EmployeeCode)+1))) + RTRIM(max(EmployeeCode)+1) AS EmployeeCode 
		from TB_Employee
		) as A)
	end

	INSERT INTO [dbo].[TB_Employee]
           ([EmployeeCode]
           ,[SerialNumber]
           ,[Name]
		   ,Father_Name
		   ,Mother_Name
           ,[Gender]
           ,[Religion]
           ,[Race]
           ,[NRCNumber]
           ,[PlaceOfBirth]
		   ,[EducationTypeCode]
		   --,[CurrentRank]
           ,[Occupation]
           ,[DateOfBirth]
           ,[EyeColor]
           ,[Height]
           ,[Mark]
           ,[OtherName]
           ,[JoinDate]
           ,[TownshipCode]
           ,[Address]
		   , DearestPerson
		   ,Ancestor
           ,[IsActive]
           ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship]
		   ,ProfilePic
		   ,NRCPic
		   ,Form66Pic
		   ,[Status]
		   ,RejectComment
		   ,EditRequest
		   ,EditComment
		   ,DeleteRequest
		   ,DegreePic)
     VALUES
           (@EmployeeCode
           ,@SerialNumber
           ,@Name
		   ,@FatherName
		   ,@MotherName
           ,@Gender
           ,@Religion
           ,@Race
           ,@NRCNumber
           ,@PlaceOfBirth
		   ,@Education
		   --,(SELECT jp.RankType  FROM TB_JobPosting as jp,TB_Employee as e WHERE e.SerialNumber=jp.EmployeeCode AND jp.IsCurrent=1 AND e.SerialNumber=@SerialNumber)
           ,@Occupation
           ,@DateOfBirth
           ,@EyeColor
           ,@Height
           ,@Mark
           ,@OtherName
           ,@JoinDate
           ,@TownshipCode
           ,@Address
		   ,@DearestPerson
		   ,@Ancestor
           ,@IsActive
           ,@IsDeleted
		   ,@IsRecordEdited
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship
		   ,@ProfilePic
		   ,@NrcPic
		   ,@Form66Pic
		   ,@Status
		   ,@RejectComment
		   ,@EditStatus
		   ,@EditComment
		   ,@DeleteStatus
		   ,@DegreePic)
	END
	ELSE
	BEGIN
	declare @slr nvarchar(50)
		set @slr=(select SerialNumber from TB_Employee where EmployeeCode=@EmployeeCode and IsDeleted=0)

		--update son&daughter
		update TB_SonAndDaughter set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update relationship
		update TB_Relationship set EmployeeCode=@SerialNumber where EmployeeCode=@slr


		--update TrainingHistory
		update TB_TrainingHistory set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update Award
		update TB_Award set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update Punishment
		update TB_Punishment set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update IntKnowledge
		update TB_IntKnowledge set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update JobPosting
		update TB_JobPosting set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update JobHistory
		update TB_JobHistory set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update Age60Full
		update TB_Age60Full set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update LeaveEntitlement
		update TB_LeaveEntitlement set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update YearlyBonus
		update TB_YearlyBonus set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update Pension
		update TB_Pension set EmployeeCode=@SerialNumber where EmployeeCode=@slr

		--update Disposal
		update TB_Disposal set EmployeeCode=@SerialNumber where EmployeeCode=@slr

	UPDATE [TB_Employee]
   SET [SerialNumber] = @SerialNumber
      ,[Name] = @Name
	  ,[Father_Name]=@FatherName
	  ,[Mother_Name]=@MotherName
      ,[Gender] = @Gender
      ,[Religion] = @Religion
      ,[Race] = @Race
      ,[NRCNumber] = @NRCNumber
      ,[PlaceOfBirth] = @PlaceOfBirth
	  ,[EducationTypeCode]=@Education
	  --,[CurrentRank]=(SELECT jp.RankType  FROM TB_JobPosting as jp,TB_Employee as e WHERE e.SerialNumber=jp.EmployeeCode AND jp.IsCurrent=1 AND e.SerialNumber=@SerialNumber)
      ,[Occupation] = @Occupation
      ,[DateOfBirth] = @DateOfBirth
      ,[EyeColor] = @EyeColor
      ,[Height] = @Height
      ,[Mark] = @Mark
      ,[OtherName] = @OtherName
      ,[JoinDate] = @JoinDate
      ,[TownshipCode] = @TownshipCode
      ,[Address] = @Address
	  ,[DearestPerson]=@DearestPerson
	  ,[Ancestor]=@Ancestor
      ,[IsActive] = @IsActive
      ,[IsDeleted] = @IsDeleted
	  ,[IsRecordEdited] = @IsRecordEdited
      ,[ModifiedDate] = CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
	  ,[ProfilePic]=@ProfilePic
	  ,[NRCPic]=@NrcPic
	  ,[Form66Pic]=@Form66Pic
	  ,[Status]=@Status
	  ,[RejectComment]=@RejectComment
	  ,[EditRequest] =@EditStatus
	  ,[EditComment]=@EditComment
	  ,[DeleteRequest] =@DeleteStatus
	  ,[DegreePic]=@DegreePic
 WHERE EmployeeCode=@EmployeeCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Employee_Select]

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
  Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
  Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
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
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Employee_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_Employee 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Employee_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Employee_SelectList]


	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from TB_Employee WHERE IsDeleted=0 
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EmployeeCount_ListByRankType]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EmployeeCount_ListByRankType]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select 
(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType in(N'ဦးညွန်မှုး',N'ညွှန်မှူး',N'ညွှန်ကြားရေးမှူးချုပ်',N'ဦးဆောင်ညွှန်ကြားရေးမှူး') and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Director_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ဦးညွန်မှုး',N'ညွှန်မှူး',N'ညွှန်ကြားရေးမှူးချုပ်',N'ဦးဆောင်ညွှန်ကြားရေးမှူး') and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Director_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ထွေ/ဂျာ',N'ဒု-ညွှန်ချုပ်',N'ဒု-ညွှန်ချုပ်',N'အထွေထွေမန်နေဂျာ') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'GM_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ထွေ/ဂျာ',N'ဒု-ညွှန်ချုပ်',N'ဒု-ညွှန်ချုပ်',N'အထွေထွေမန်နေဂျာ') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'GM_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ဒုထွေဂျာ',N'ဒု-ညွှန်မှူး',N'ဒု-ညွှန်မှူး',N'အထွေထွေမန်နေဂျာ(တာဝန်)',N'အထွေထွေမန်နေဂျာ(DGMတာဝန်)ပူးတွဲ',N'ဒုတိယအထွေထွေမန်နေဂျာ') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_GM_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ဒုထွေဂျာ',N'ဒု-ညွှန်မှူး',N'ဒု-ညွှန်မှူး',N'အထွေထွေမန်နေဂျာ(တာဝန်)',N'အထွေထွေမန်နေဂျာ(DGMတာဝန်)ပူးတွဲ',N'ဒုတိယအထွေထွေမန်နေဂျာ') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0)As 'Secondary_GM_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType In(N'လ/ထ ထွေဂျာ',N'လက်ထောက်အထွေထွေမန်နေဂျာ') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_GM_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'လ/ထ ထွေဂျာ',N'လက်ထောက်အထွေထွေမန်နေဂျာ') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_GM_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'မန်နေဂျာ',N'လ/ထညွှန်မှူး') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0 ) As 'Manager_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'မန်နေဂျာ',N'လ/ထညွှန်မှူး') and e.Gender=N'မ' and e.IsActive='Active' and e.IsDeleted=0 ) As 'Manager_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Researcher_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Researcher_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သုတေသနအရာရှိ(‌‌ဘောဂဗေဒ)'and e.Gender=N'ကျား'and e.IsActive='Active' and e.isDeleted=0) As 'GeneralResearcher_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သုတေသနအရာရှိ(‌‌ဘောဂဗေဒ)'and e.Gender=N'မ'and e.IsActive='Active' and e.isDeleted=0) As 'GeneralResearcher_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType In(N'လက်မန်',N'ဦးစီးအရာရှိ',N'လက်ထောက်မန်နေဂျာ') and e.Gender=N'ကျား' and e.IsActive='Active' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_manager_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'လက်မန်',N'ဦးစီးအရာရှိ',N'လက်ထောက်မန်နေဂျာ') and  e.Gender=N'မ' and e.IsActive='Active' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_manager_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ကြီးမှုး',N'စီမံအဆင့်(၁)',N'စာရင်းကိုင်(၁)',N'စက်မှုလက်ထောက်(၁)',N'ရုံးအုပ်',N'ကြီးကြပ်ရေးမှူး') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Supervisor_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ကြီးမှုး',N'စီမံအဆင့်(၁)',N'စာရင်းကိုင်(၁)',N'စက်မှုလက်ထောက်(၁)',N'ရုံးအုပ်',N'ကြီးကြပ်ရေးမှူး') and  e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Supervisor_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ဒုကြီးမှုး',N'အလုပ်ရုံစိတ်မှူး',N'စာရင်းကိုင်(၂)',N'ဌာနခွဲစာရေး',N'ဒုဦးစီးမှူး',N'စက်မှုလက်ထောက်(၂)',N'မော်ကွန်းထိန်းလက်ထောက်(၂)',N'ဒုတိယကြီးကြပ်ရေးမှူး') and e.Gender=N'ကျား'and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Supervisor_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ဒုကြီးမှုး',N'အလုပ်ရုံစိတ်မှူး',N'စာရင်းကိုင်(၂)',N'ဌာနခွဲစာရေး',N'ဒုဦးစီးမှူး',N'စက်မှုလက်ထောက်(၂)',N'မော်ကွန်းထိန်းလက်ထောက်(၂)',N'ဒုတိယကြီးကြပ်ရေးမှူး') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Supervisor_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Computer_Operator_MaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Computer_Operator_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'အကြီးတန်းစာရေး',N'ထုတ်/ကျွမ်း(၃)',N'လက်ထောက်ကြီးကြပ်ရေးမှူး',N'စာရင်းကိုင်(၃)',N'စာရင်းစစ်(၃)',N'ပညာသည်ထုတ်လုပ်ရေးအတန်း-၃',N'လ/ထ လဝကမှူး',N'မော်ကွန်းထိန်းလက်ထောက်(၃)',N'ပစ္စည်းထိန်း(၃)') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'SeniorClerk_MaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'အကြီးတန်းစာရေး',N'ထုတ်/ကျွမ်း(၃)',N'လက်ထောက်ကြီးကြပ်ရေးမှူး',N'စာရင်းကိုင်(၃)',N'စာရင်းစစ်(၃)',N'ပညာသည်ထုတ်လုပ်ရေးအတန်း-၃',N'လ/ထ လဝကမှူး',N'မော်ကွန်းထိန်းလက်ထောက်(၃)',N'ပစ္စည်းထိန်း(၃)') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'SeniorClerk_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ငွေကိုင် (၃)',N'ငွေကိုင်(၃)') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Casher3_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ငွေကိုင် (၃)',N'ငွေကိုင်(၃)') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Casher3_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အကြီးတန်းလက်နှိပ်စက်ရိုက်',N'အကြီးတန်းလက်နှိပ်စက်') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'SeniorTyping_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အကြီးတန်းလက်နှိပ်စက်ရိုက်',N'အကြီးတန်းလက်နှိပ်စက်') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'SeniorTyping_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'လက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Computer_Operator_MaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'လက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Computer_Operator_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အငယ်တန်းစာရေး',N'ထုတ်/ကျွမ်း(၄)',N'စာရင်းစစ်(၄)',N'ဒု-လက်ထောက်ကြီးကြပ်ရေးမှူး',N'ဒု-လက်ထောက်ဦးစီးမှူး',N'စာရင်းကိုင်-၄',N'မူလတန်းပြ',N'မြေတိုင်းစာရေး',N'ပစ္စည်းထိန်း(၄)',N'စစ်ဆေးရေးမှူး(၄)') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'JuniorClerk_MaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အငယ်တန်းစာရေး',N'ထုတ်/ကျွမ်း(၄)',N'စာရင်းစစ်(၄)',N'ဒု-လက်ထောက်ကြီးကြပ်ရေးမှူး',N'ဒု-လက်ထောက်ဦးစီးမှူး',N'စာရင်းကိုင်-၄',N'မူလတန်းပြ',N'မြေတိုင်းစာရေး',N'ပစ္စည်းထိန်း(၄)',N'စစ်ဆေးရေးမှူး(၄)') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'JuniorClerk_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ငွေကိုင်(၄)' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Casher4_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ငွေကိုင်(၄)' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Casher4_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ဒုလက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_Assistant_Computer_Operator_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ဒုလက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_Assistant_Computer_Operator_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အငယ်တန်းလက်နှိပ်စက်ရိုက်',N'အငယ်တန်းလက်နှိပ်စက်') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'JuniorTyping_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အငယ်တန်းလက်နှိပ်စက်ရိုက်',N'အငယ်တန်းလက်နှိပ်စက်') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'JuniorTyping_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ပုံနှိပ်ကျွမ်းကျင်(၅)',N'ထုတ်/ကျွမ်း(၅)') and e.Gender=N'ကျား'and e.IsActive='Active' and e.isDeleted=0) As 'Printer5_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType  IN (N'ပုံနှိပ်ကျွမ်းကျင်(၅)',N'ထုတ်/ကျွမ်း(၅)') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Printer5_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'စာတွဲထိန်း',N'အမှုတွဲထိန်း') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'One_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'စာတွဲထိန်း',N'အမှုတွဲထိန်း') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0)
 As 'One_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'စက်မောင်း(၅)' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'EngineDriver_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'စက်မောင်း(၅)' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'EngineDriver_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ယမ(၅)',N'ယာဉ်မောင်း(၅)') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Two_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ယမ(၅)',N'ယာဉ်မောင်း(၅)') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Two_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ရုံးအကူမှုး' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'OfficeAssistant_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ရုံးအကူမှုး' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'OfficeAssistant_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'ရုံးအကူ',N'အထွေထွေလုပ်သား',N'လုပ်သား',N'ရုံးအကူ') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_OfficeAssistant_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN (N'ရုံးအကူ',N'အထွေထွေလုပ်သား',N'လုပ်သား',N'ရုံးအကူ') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_OfficeAssistant_FemaleCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အစောင့်',N'အစောင့်') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Guard_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType IN(N'အစောင့်',N'အစောင့်') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Guard_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သန့်ရှင်းရေးအကူ' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Cleaner_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သန့်ရှင်းရေးအကူ' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Cleaner_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ယာယီနေ့စား'and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_MaleCount'
,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ယာယီနေ့စား'and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType NOT IN(N'ယာယီနေ့စား') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_MaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType NOT IN(N'ယာယီနေ့စား') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_FemaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType NOT IN(N'ယာယီနေ့စား')  And e.Gender in (N'ကျား',N'မ') and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_TotalCount'


,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ယာယီနေ့စား'  and e.IsActive='Active') As 'TemporyEmployee_TotalCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and (rt.RankType IN(N'ယာယီနေ့စား') OR rt.RankType NOT IN(N'ယာယီနေ့စား')) And e.Gender in (N'ကျား',N'မ') and e.IsActive='Active' and e.isDeleted=0) As 'TotalCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankType IN(N'ဦးညွန်မှုး',N'ညွှန်မှူး',N'ညွှန်ကြားရေးမှူးချုပ်',N'ဦးဆောင်ညွှန်ကြားရေးမှူး',N'ထွေ/ဂျာ',N'ဒု-ညွှန်ချုပ်',N'ဒု-ညွှန်ချုပ်',N'အထွေထွေမန်နေဂျာ',N'ဒုထွေဂျာ',N'ဒု-ညွှန်မှူး',N'ဒု-ညွှန်မှူး',N'အထွေထွေမန်နေဂျာ(တာဝန်)',N'အထွေထွေမန်နေဂျာ(DGMတာဝန်)ပူးတွဲ',N'ဒုတိယအထွေထွေမန်နေဂျာ',N'လ/ထ ထွေဂျာ',N'လက်ထောက်အထွေထွေမန်နေဂျာ',N'မန်နေဂျာ',N'လ/ထညွှန်မှူး',N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)',N'သုတေသနအရာရှိ(‌‌ဘောဂဗေဒ)',N'လက်မန်',N'ဦးစီးအရာရှိ',N'လက်ထောက်မန်နေဂျာ') And e.Gender in (N'ကျား',N'မ') and e.IsActive='Active' and e.isDeleted=0) As 'TotalUpperCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankType NOT IN(N'ဦးညွန်မှုး',N'ညွှန်မှူး',N'ညွှန်ကြားရေးမှူးချုပ်',N'ဦးဆောင်ညွှန်ကြားရေးမှူး',N'ထွေ/ဂျာ',N'ဒု-ညွှန်ချုပ်',N'ဒု-ညွှန်ချုပ်',N'အထွေထွေမန်နေဂျာ',N'ဒုထွေဂျာ',N'ဒု-ညွှန်မှူး',N'ဒု-ညွှန်မှူး',N'အထွေထွေမန်နေဂျာ(တာဝန်)',N'အထွေထွေမန်နေဂျာ(DGMတာဝန်)ပူးတွဲ',N'ဒုတိယအထွေထွေမန်နေဂျာ',N'လ/ထ ထွေဂျာ',N'လက်ထောက်အထွေထွေမန်နေဂျာ',N'မန်နေဂျာ',N'လ/ထညွှန်မှူး',N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)',N'သုတေသနအရာရှိ(‌‌ဘောဂဗေဒ)',N'လက်မန်',N'ဦးစီးအရာရှိ',N'လက်ထောက်မန်နေဂျာ',N'သန့်ရှင်းရေးအကူ') And e.Gender in (N'ကျား',N'မ')  and e.IsActive='Active' and e.isDeleted=0) As 'TotalLowerCount'


--select 
--	max(case when RankType = N'ဦးဆောင်ညွှန်ကြားရေးမှူး' then countByRankType end) 'ဦးဆောင်ညွှန်ကြားရေးမှူး',
--	max(case when RankType = N'အထွေထွေမန်နေဂျာ' then countByRankType end)  'အထွေထွေမန်နေဂျာ',
--	max(case when RankType = N'ဒုတိယအထွေထွေမန်နေဂျာ' then countByRankType end) 'ဒုတိယအထွေထွေမန်နေဂျာ',
--	max(case when RankType = N'လက်ထောက်အထွေထွေမန်နေဂျာ' then countByRankType end) 'လက်ထောက်အထွေထွေမန်နေဂျာ',
--	max(case when RankType = N'မန်နေဂျာ' then countByRankType end)  'မန်နေဂျာ',
--	max(case when RankType = N'လက်ထောက်မန်နေဂျာ' then countByRankType end) 'လက်ထောက်မန်နေဂျာ', 
--	max(case when RankType = N'ကြီးကြပ်ရေးမှူး' then countByRankType end) 'ကြီးကြပ်ရေးမှူး',
--	max(case when RankType = N'ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' then countByRankType end)  'ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး',
--	max(case when RankType = N'ဒုတိယကြီးကြပ်ရေးမှူး' then countByRankType end) 'ဒုတိယကြီးကြပ်ရေးမှူး',
--	max(case when RankType = N'ငွေကိုင်(၃)' then countByRankType end) 'ငွေကိုင်(၃)',
--	max(case when RankType = N'အကြီးတန်းစာရေး' then countByRankType end)  'အကြီးတန်းစာရေး',
--	max(case when RankType = N'အကြီးတန်းလက်နှိပ်စက်' then countByRankType end) 'အကြီးတန်းလက်နှိပ်စက်',
--	max(case when RankType = N'ဒုလက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' then countByRankType end) 'ဒုလက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး',
--	max(case when RankType = N'အငယ်တန်းစာရေး' then countByRankType end)  'အငယ်တန်းစာရေး',
--	max(case when RankType = N'အငယ်တန်းလက်နှိပ်စက်' then countByRankType end) 'အငယ်တန်းလက်နှိပ်စက်',
--	max(case when RankType = N'စက်မောင်း(၅)' then countByRankType end) 'စက်မောင်း(၅)',
--	max(case when RankType = N'စာတွဲထိန်း' then countByRankType end)  'စာတွဲထိန်း',
--	max(case when RankType = N'ပုံနှိပ်ကျွမ်းကျင်(၅)' then countByRankType end) 'ပုံနှိပ်ကျွမ်းကျင်(၅)',
--	max(case when RankType = N'ယာဉ်မောင်း(၅)' then countByRankType end) 'ယာဉ်မောင်း(၅)',
--	max(case when RankType = N'ရုံးအကူ' then countByRankType end)  'ရုံးအကူ',
--	max(case when RankType = N'သန့်ရှင်းရေးအကူ' then countByRankType end) 'သန့်ရှင်းရေးအကူ',
--	max(case when RankType = N'အစောင့်' then countByRankType end) 'အစောင့်'--,
--	--max(case when RankType = N'အထွေထွေမန်နေဂျာ' then countByRankType end)  'အထွေထွေမန်နေဂျာ',
--	--max(case when RankType = N'ဒုတိယအထွေထွေမန်နေဂျာ' then countByRankType end) 'ဒုတိယအထွေထွေမန်နေဂျာ'

--from (
--	select rt.RankType, count(rt.RankType) as countByRankType, rt.RankLevel as ColumnSeq 

--	from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 group by rt.RankType, rt.RankLevel)A

END
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeDecreaseList_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_EmployeeDecreaseList_Select]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select 
	[EmployeePkid]
	  ,case when(select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) is null then '' else (select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 
	   and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) end As 'CurrentRank'
	   ,SerialNumber
	   ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber_Myan'
	  ,[Name]
	  --,case when (select  et.EducationType  from TB_EducationType et,TB_Employee e where e.EducationTypeCode=et.EducationTypeCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0) is null then '' else (select  et.EducationType  from TB_EducationType et,TB_Employee e where e.EducationTypeCode=et.EducationTypeCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0) end AS 'EducationType'
	  --,[EducationTypeCode]
	  
	  --Edited codes by OMWai on 24Aug2020
	   --,case when (SELECT  t.Township FROM TB_Employee AS e, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.SerialNumber=emp.SerialNumber AND e.IsActive<>N'Active') is null then '' else (SELECT  t.Township FROM TB_Employee AS e, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.SerialNumber=emp.SerialNumber AND e.IsActive<>N'Active') end AS 'JobAddress'
	  --Edited codes by OMWai on 17Oct2022
	   ,case when (SELECT  t.Township FROM TB_Employee AS e inner join TB_JobHistory AS j on e.SerialNumber=j.EmployeeCode, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.SerialNumber=emp.SerialNumber AND e.IsActive<>N'Active' and j.IsCurrent=1 and e.IsDeleted=0 and j.IsDeleted=0 and j.ToDate=null) is null then '' else (SELECT  t.Township FROM TB_Employee AS e inner join TB_JobHistory AS j on e.SerialNumber=j.EmployeeCode, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.SerialNumber=emp.SerialNumber AND e.IsActive<>N'Active' and IsCurrent=1 and e.IsDeleted=0 and j.IsDeleted=0 and j.ToDate=null) end AS 'JobAddress'
	  ,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'

	    ,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=emp.SerialNumber and  e.IsDeleted=0 and jh.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate is null and jh.EmployeeCode=emp.SerialNumber and  e.IsDeleted=0  and jh.IsDeleted=0) end AS 'CurrentRankDate'

		 , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ပြောင်းရွှေ့ထွက်ခွါ' and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForTransfer'

		  , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'နုတ်ထွက်' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'နုတ်ထွက်' and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForResign'

		   , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive In(N'သက်ပြည့်ပင်စင်',N'နှစ်ပြည့်ပင်စင်',N'နာမကျန်းပင်စင်') and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive In(N'သက်ပြည့်ပင်စင်',N'နှစ်ပြည့်ပင်စင်',N'နာမကျန်းပင်စင်') and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForPension'

		   , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ထုတ်ပယ်' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ထုတ်ပယ်' and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForRemove'

		   , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0  and d.IsDeleted=0 and IsActive=N'ထုတ်ပစ်' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ထုတ်ပစ်' and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForDismiss'

		   , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ကွယ်လွန်' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ကွယ်လွန်' and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForDead'

		    , case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DisposalDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and e.EmployeeCode=emp.EmployeeCode) end AS 'EmployeeDecreaseDateForArrive'

		   ,case when (select remark from TB_Disposal d INNER JOIN TB_Employee e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select remark from TB_Disposal d INNER JOIN TB_Employee e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0  and d.IsDeleted=0 and e.EmployeeCode=emp.EmployeeCode) end As 'remark'
		      , case when (select Count(IsActive)  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and e.EmployeeCode=emp.EmployeeCode) is null then '' else (select Count(IsActive)  from TB_Disposal d INNER JOIN TB_Employee  e ON d.EmployeeCode=e.SerialNumber where e.IsDeleted=0 and d.IsDeleted=0 and IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ' and e.EmployeeCode=emp.EmployeeCode) end AS 'IsActive'
		
  FROM [TB_Employee]  emp   INNER JOIN TB_Disposal d ON emp.SerialNumber=d.EmployeeCode
  WHERE emp.IsDeleted=0 AND  d.IsDeleted=0 
  AND IsActive <>'Active' 
  Order By cast(emp.SerialNumber as int)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EmployeeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EmployeeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@EmployeePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Employee 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE EmployeePkid = @EmployeePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_EmployeeStatus_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_EmployeeStatus_Update] 
	-- Add the parameters for the stored procedure here
	@serialnumber nvarchar(50)
	,@IsActive nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
Update [dbo].[TB_Employee]
set IsActive=@IsActive
where SerialNumber=@serialnumber
   
END
GO
/****** Object:  StoredProcedure [dbo].[SP_EmployeeTotalCountByRankType]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_EmployeeTotalCountByRankType]
AS
BEGIN
	select 
		max(case when RankType = N'ဦးဆောင်ညွှန်ကြားရေးမှူး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Director_MaleCount',
		max(case when RankType = N'ဦးဆောင်ညွှန်ကြားရေးမှူး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Director_FemaleCount',
		max(case when RankType = N'အထွေထွေမန်နေဂျာ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'GM_MaleCount',
		max(case when RankType = N'အထွေထွေမန်နေဂျာ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'GM_FemaleCount',
		max(case when RankType = N'ဒုတိယအထွေထွေမန်နေဂျာ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Secondary_GM_MaleCount',
		max(case when RankType = N'ဒုတိယအထွေထွေမန်နေဂျာ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Secondary_GM_FemaleCount',
		max(case when RankType = N'လက်ထောက်အထွေထွေမန်နေဂျာ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Assistant_GM_MaleCount',
		max(case when RankType = N'လက်ထောက်အထွေထွေမန်နေဂျာ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Assistant_GM_FemaleCount',
		max(case when RankType = N'မန်နေဂျာ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'Manager_MaleCount',
		max(case when RankType = N'မန်နေဂျာ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'Manager_FemaleCount'

		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Researcher_MaleCount'
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Researcher_FemaleCount',

		max(case when RankType = N'လက်ထောက်မန်နေဂျာ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Assistant_manager_MaleCount', 
		max(case when RankType = N'လက်ထောက်မန်နေဂျာ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Assistant_manager_FemaleCount',
		max(case when RankType = N'ကြီးကြပ်ရေးမှူး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Supervisor_MaleCount',
		max(case when RankType = N'ကြီးကြပ်ရေးမှူး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Supervisor_FemaleCount',
		max(case when RankType = N'ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'Computer_Operator_MaleCount',
		max(case when RankType = N'ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'Computer_Operator_FemaleCount',
		max(case when RankType = N'ဒုတိယကြီးကြပ်ရေးမှူး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Assistant_Supervisor_MaleCount',
		max(case when RankType = N'ဒုတိယကြီးကြပ်ရေးမှူး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Assistant_Supervisor_FemaleCount',
		max(case when RankType = N'ငွေကိုင်(၃)' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Casher3_MaleCount',
		max(case when RankType = N'ငွေကိုင်(၃)' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Casher3_FemaleCount',
		max(case when RankType = N'အကြီးတန်းစာရေး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'SeniorClerk_MaleCount',
		max(case when RankType = N'အကြီးတန်းစာရေး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'SeniorClerk_FemaleCount',
		max(case when RankType = N'အကြီးတန်းလက်နှိပ်စက်' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'SeniorTyping_MaleCount',
		max(case when RankType = N'အကြီးတန်းလက်နှိပ်စက်' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'SeniorTyping_FemaleCount',
		max(case when RankType = N'ဒုလက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)	'Secondary_Assistant_Computer_Operator_MaleCount',
		max(case when RankType = N'ဒုလက်ထောက်ကွန်ပျူတာလုပ်ဆောင်ရေးမှူး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)	'Secondary_Assistant_Computer_Operator_FemaleCount',
		max(case when RankType = N'အငယ်တန်းစာရေး' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'JuniorClerk_MaleCount',
		max(case when RankType = N'အငယ်တန်းစာရေး' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'JuniorClerk_FemaleCount',
		max(case when RankType = N'အငယ်တန်းလက်နှိပ်စက်' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'JuniorTyping_MaleCount',
		max(case when RankType = N'အငယ်တန်းလက်နှိပ်စက်' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'JuniorTyping_FemaleCount',
		max(case when RankType = N'စက်မောင်း(၅)' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'EngineDriver_MaleCount',
		max(case when RankType = N'စက်မောင်း(၅)' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'EngineDriver_FemaleCount',
		max(case when RankType = N'စာတွဲထိန်း' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'RecordMaintain_MaleCount',
		max(case when RankType = N'စာတွဲထိန်း' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'RecordMaintain_FemaleCount',
		max(case when RankType = N'ပုံနှိပ်ကျွမ်းကျင်(၅)' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Printer5_MaleCount',
		max(case when RankType = N'ပုံနှိပ်ကျွမ်းကျင်(၅)' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Printer5_FemaleCount',
		max(case when RankType = N'ယာဉ်မောင်း(၅)' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Driver5_MaleCount',
		max(case when RankType = N'ယာဉ်မောင်း(၅)' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Driver5_FemaleCount'

		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ရုံးအကူမှုး' and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'OfficeAssistant_MaleCount'
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ရုံးအကူမှုး' and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'OfficeAssistant_FemaleCount',


		max(case when RankType = N'ရုံးအကူ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end)  'Secondary_OfficeAssistant_MaleCount',
		max(case when RankType = N'ရုံးအကူ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end)  'Secondary_OfficeAssistant_FemaleCount',
		max(case when RankType = N'သန့်ရှင်းရေးအကူ' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Cleaner_MaleCount',
		max(case when RankType = N'သန့်ရှင်းရေးအကူ' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Cleaner_FemaleCount',
		max(case when RankType = N'အစောင့်' and Gender=N'ကျား' and countByRankType>0 then countByRankType else 0 end) 'Guard_MaleCount',
		max(case when RankType = N'အစောင့်' and Gender=N'မ' and countByRankType>0 then countByRankType else 0 end) 'Guard_FemaleCount',

		(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count		(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON	e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and	 rt.RankType=N'ယာယီနေ့စား'and	 e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_MaleCount'
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count		(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON		e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankType=N'ယာယီနေ့စား'and		e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_FemaleCount'
		
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count		(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON		e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType NOT IN		(N'ယာယီနေ့စား') and e.Gender=N'ကျား' and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_MaleCount'
		
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count		(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON		e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType NOT IN		(N'ယာယီနေ့စား') and e.Gender=N'မ' and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_FemaleCount'
		
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType NOT IN(N'ယာယီနေ့စား')  And e.Gender in (N'ကျား',N'မ') and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_TotalCount'


		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count		(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON		e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and rt.RankType=N'ယာယီနေ့စား'	  and	e.IsActive='Active') As 'TemporyEmployee_TotalCount'
		
		,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count		(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Employee e INNER JOIN TB_JobHistory jh ON		e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and (rt.RankType IN  (N'ယာယီနေ့စား')  OR rt.RankType NOT IN(N'ယာယီနေ့စား')) And e.Gender in (N'ကျား',N'မ') and e.IsActive='Active' and e.isDeleted=0) As 'TotalCount'
		
		,(select count(e.EmployeePkid) from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankDescription='Upper' And e.IsActive='Active' and e.isDeleted=0) 'TotalUpperCount'
		,(select count(e.EmployeePkid) from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankDescription='Lower' And e.IsActive='Active' and e.isDeleted=0) 'TotalLowerCount'--,
	--max(case when RankType = N'အထွေထွေမန်နေဂျာ' then countByRankType end)  'အထွေထွေမန်နေဂျာ',
	--max(case when RankType = N'ဒုတိယအထွေထွေမန်နေဂျာ' then countByRankType end) 'ဒုတိယအထွေထွေမန်နေဂျာ'

from (
	select rt.RankType, e.Gender, count(e.Gender) as countByRankType, rt.RankLevel as ColumnSeq 

	from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and e.IsActive='Active' and e.IsDeleted=0 group by rt.RankType, e.Gender, rt.RankLevel, rt.RankDescription)A
END
GO
/****** Object:  StoredProcedure [dbo].[SP_FinancialYear_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_FinancialYear_SelectForOnlineCheck]
AS
BEGIN
	Select 
	 FinancialYearPkid
	 , FinancialStartDate
	 , FinancialEndDate
	 , FinancialYear
	 , IsActive 
	 , IsDeleted
	 , IsUploaded
	 , CreatedBy
	 , CreatedDate 
	from TB_FinancialYear where IsDeleted=0
	Order by FinancialEndDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAccount]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetAccount]
	-- Add the parameters for the stored procedure here
	@StateDivisionCode nvarchar(50)=null,
	@TownshipCode nvarchar(50)=null,
	@UsernameOrEmail nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	if(@StateDivisionCode is null)
	begin
	set @StateDivisionCode=''
	end
	if(@TownshipCode is null)
	begin
	 set @TownshipCode=''
	end

	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select ul.*,st.StateDivision,td.TownName from TB_UserLogin ul join TB_StateDivision st on ul.StateDivisionId=st.StateDivisionCode
	left join TB_TownAndDivision td on td.TownCode=ul.TownshipId
	where (@StateDivisionCode='' or ul.StateDivisionId=@StateDivisionCode)
	and (@TownshipCode='' or ul.TownshipId=@TownshipCode)
	and (@UsernameOrEmail is null or ul.UsernameOrEmail=@UsernameOrEmail)
	--and ul.[Status]='Enable'

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetAwardForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetAwardForAdmin]
	-- Add the parameters for the stored procedure here
	 @DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT 
	  [AwardPkid]
	,aw.[EmployeeCode]
	,aw.[BranchCode]
	,aw.[DepartmentCode]
	,aw.[RankTypecode]
	,case when (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) is null then ''  else (REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) end AS 'AwardDate'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[AwardYear],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'AwardYear'
	--,(Select at.AwardType from TB_AwardType As at,TB_Award As a Where at.AwardTypeCode=a.AwardTypeCode) As 'AwardType'
	,at.AwardType As 'AwardType'
	,aw.[AwardTypeCode]
	,aw.[Reason]
	,aw.[IsDeleted]
	,aw.[ModifiedDate]
	,aw.[CreatedDate]
	,aw.[CreatedBy]
	,emp.[Name],div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
	FROM [dbo].[TB_Award] As aw
	INNER JOIN TB_AwardType at ON at.AwardTypeCode=aw.AwardTypeCode
    join TB_Employee emp on emp.EmployeeCode=aw.EmployeeCode
	left join TB_CurrentJob_Township tw on emp.TownshipCode=tw.TownshipCode
	left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
	left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
	left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
	WHERE
	(@DivisionCode is null or div.StateDivisionCode=@DivisionCode) AND
	 (@TownshipCode is null or tw.TownshipCode=@TownshipCode) AND
	 aw.IsDeleted=0  
	 order by aw.CreatedDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetCurrentJobExperience]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Zun Pwint Phyu
-- Create date: 2023, Feb 17
-- Description:	Calculate Current job Experience
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetCurrentJobExperience]
	@EmployeeCode nvarchar(50)=null,
	@StateDivisionCode nvarchar(50)=null,
	@TownshipCode nvarchar(50)=null
AS
BEGIN
    DECLARE @getmm INT
	DECLARE @getdd INT
	Create table #temp(SerialNumber nvarchar(50),JEYear int,JEMonth int,JEDay int,JEJoinDate DateTime,JEEndDate DateTime,EmployeeName nvarchar(50),NRC nvarchar(50),RankType nvarchar(50),Department nvarchar(500))

	SET NOCOUNT ON;

    -- Insert statements for procedure here
insert into #temp select distinct emp.SerialNumber, DATEDIFF(Year,jh.FromDate,GETDATE()) as year,DATEDIFF(Month,jh.FromDate,GETDATE()) as [Month],DATEDIFF(Day,jh.FromDate,GETDATE()) as [Day]
,jh.FromDate ,GETDATE(),emp.[Name],emp.NRCNumber,rt.RankType,ct.Township
 from TB_JobHistory jh join TB_Employee emp on emp.EmployeeCode=jh.EmployeeCode 
join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
join TB_CurrentJob_Township ct on ct.TownshipCode=emp.Occupation
left join TB_StateDivision div on div.StateDivisionCode=ct.StateDivisionID
left join TB_TownAndDivision td on td.TownCode=ct.UploadForTownship
where emp.IsActive='Active' and jh.IsCurrent =1  and jh.IsDeleted=0 and emp.IsDeleted=0 
and (@EmployeeCode is null or emp.EmployeeCode=@EmployeeCode) and
(@StateDivisionCode is null or div.StateDivisionCode=@StateDivisionCode) AND
 (@TownshipCode is null or ct.TownshipCode=@TownshipCode) 

Declare @serialNumber nvarchar(50)
DECLARE db_cursor CURSOR FOR 
SELECT SerialNumber  from #temp

OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @serialNumber  

WHILE @@FETCH_STATUS = 0  
BEGIN  
set @getmm=ABS(DATEDIFF(Month, DATEADD(Year, (select JEYear from #temp where SerialNumber=@serialNumber), (select JEJoinDate from #temp where SerialNumber=@serialNumber)), (select JEEndDate from #temp where SerialNumber=@serialNumber)))
 SET @getdd = ABS(DATEDIFF(DAY, DATEADD(Month, DATEDIFF(Month, DATEADD(Year, (select JEYear from #temp where SerialNumber=@serialNumber), (select JEJoinDate from #temp where SerialNumber=@serialNumber)), (select JEEndDate from #temp where SerialNumber=@serialNumber)), DATEADD(yy, (select JEYear from #temp where SerialNumber=@serialNumber), (select JEJoinDate from #temp where SerialNumber=@serialNumber))), (select JEEndDate from #temp where SerialNumber=@serialNumber)))

  update #temp set JEMonth=@getmm ,JEDay=@getdd where SerialNumber =@serialNumber 
  FETCH NEXT FROM db_cursor INTO @serialNumber 
END 

CLOSE db_cursor  
DEALLOCATE db_cursor

select EmployeeName,SerialNumber,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),JEJoinDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS JEJoinDate,NRC,RankType,Department,Convert(varchar(10),JEYear) + N'နှစ် ' As JExpYear , Convert(varchar(10),JEMonth) + N'လ ' As JExpMonth , Convert(varchar(10),JEDay) + N'ရက်' as JExpDay from #temp 
  drop table #temp
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetCurrentJobPosting]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_GetCurrentJobPosting] 
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
 
  And jp.IsDeleted=0 And jp.IsCurrent=1
   END
END




GO
/****** Object:  StoredProcedure [dbo].[SP_GetDisposalForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetDisposalForAdmin]
 @DivisionCode nvarchar(50)=null,
 @TownshipCode nvarchar(50)=null
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
	   d.IsDeleted=0 and e.IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmpCountByStateDivision]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetEmpCountByStateDivision]
	-- Add the parameters for the stored procedure here
	@StateDivisionCode nvarchar(50)=null
AS
BEGIN
	Create Table #temp1 (StateDivisionCode nvarchar(50),TownshipCode nvarchar(50))
	Create Table #temp2 (StateDivision nvarchar(50),StateDivisionCode nvarchar(50),EmployeeCount int,TownshipCount int,UpperRankCount int,LowerRankCount int)
	Create Table #temp3 (StateDivisionCode nvarchar(50),TownshipCount int)
	Create Table #temp4 (StateDivisionCode nvarchar(50),UpperRankCount int,LowerRankCount int)

	SET NOCOUNT ON;
	insert into #temp1(StateDivisionCode,TownshipCode) 
	select div.StateDivisionCode,tw.TownshipCode from TB_Employee emp  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
	Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
	Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
	Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	where (@StateDivisionCode is null or tw.StateDivisionID=@StateDivisionCode) and emp.IsActive='Active'
	  group by div.StateDivisionCode,tw.TownshipCode

	insert into #temp3(StateDivisionCode,TownshipCount)
	select StateDivisionCode,Count(TownshipCode) from #temp1 group by StateDivisionCode

	insert into #temp2 (StateDivision,StateDivisionCode,EmployeeCount)
	select div.StateDivision,div.StateDivisionCode, count(emp.EmployeeCode) from TB_Employee emp  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
	Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
	Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
	Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	where (@StateDivisionCode is null or tw.StateDivisionID=@StateDivisionCode) and emp.IsActive='Active'
	group by div.StateDivision,div.StateDivisionCode

	insert into #temp4 (StateDivisionCode,UpperRankCount)
	select div.StateDivisionCode, count(rt.RankTypePkid) As UpperRankCount from TB_Employee emp  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
	Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
	Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code and rt.RankDescription='Upper'
	Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	where (@StateDivisionCode is null or tw.StateDivisionID=@StateDivisionCode) and emp.IsActive='Active'
	group by div.StateDivision,div.StateDivisionCode

	if((select count(*) from #temp4)>0)
	begin
	DECLARE 
    @stdivisionCode nvarchar(50) 
	DECLARE c_db CURSOR
	FOR SELECT 
        StateDivisionCode
    FROM #temp4;

	OPEN c_db;

	FETCH NEXT FROM c_db INTO 
		@stdivisionCode;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		update #temp4 set LowerRankCount=(select count(rt.RankTypePkid) As LowerRankCount from TB_Employee emp  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
	Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
	Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code and rt.RankDescription='Lower'
	Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	left join #temp4 t4 on t4.StateDivisionCode=div.StateDivisionCode
    where  emp.IsActive='Active' and t4.StateDivisionCode=@stdivisionCode
	group by div.StateDivision,div.StateDivisionCode) where #temp4.StateDivisionCode=@stdivisionCode


    FETCH NEXT FROM c_db INTO 
        @stdivisionCode;
	END;

	CLOSE c_db;

	DEALLOCATE c_db;	
	end

	DECLARE 
    @divisionCode nvarchar(50) 
	DECLARE cursor_db CURSOR
	FOR SELECT 
        StateDivisionCode
    FROM #temp3;

	OPEN cursor_db;

	FETCH NEXT FROM cursor_db INTO 
		@divisionCode;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		update #temp2 set TownshipCount=(select TownshipCount from #temp3 where StateDivisionCode=@divisionCode),UpperRankCount=(select UpperRankCount from #temp4 where StateDivisionCode=@divisionCode),LowerRankCount=(select LowerRankCount from #temp4 where StateDivisionCode=@divisionCode) where StateDivisionCode=@divisionCode


    FETCH NEXT FROM cursor_db INTO 
        @divisionCode;
	END;

	CLOSE cursor_db;

	DEALLOCATE cursor_db;

	select * from #temp2

	drop table #temp1
	drop table #temp2
	drop table #temp3
	drop table #temp4

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeeForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetEmployeeForAdmin]
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
GO
/****** Object:  StoredProcedure [dbo].[SP_GetEmployeeInfo]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetEmployeeInfo]
	-- Add the parameters for the stored procedure here
 @SerialNumber nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select emp.Name,emp.DateOfBirth,edu.EducationType,town.Township,town.TownshipCode,emp.joindate,jhis.FromDate,emp.Father_Name,rt.RankType,emp.[Status],emp.EmployeeCode from TB_Employee emp 
	join TB_EducationType edu on emp.EducationTypeCode=edu.EducationTypeCode
	join TB_CurrentJob_Township town on town.TownshipCode=emp.Occupation
	left join TB_JobHistory jhis on jhis.EmployeeCode=emp.EmployeeCode and jhis.IsCurrent=1 and jhis.IsDeleted=0
	left join TB_RankType rt on rt.RankTypeCode=jhis.RankType_Code and jhis.IsCurrent=1 and jhis.IsDeleted=0
	where emp.SerialNumber=@SerialNumber
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetIntKnowledgeForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetIntKnowledgeForAdmin]
	-- Add the parameters for the stored procedure here
	@DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null
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
	TB_IntKnowledge.IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetJobPosting]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Zun Pwint Phyu
-- Create date: 2023 Jan,23
-- Description: join Current Job Township 
-- =============================================
Create PROCEDURE [dbo].[Sp_GetJobPosting] 
	-- Add the parameters for the stored procedure here
     @EmployeeCode nvarchar(50)=null,
	 @FromDate datetime=null,
	 @ToDate datetime=null
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
	  ,case when (SELECT top(1) t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.UploadForTownship=t.TownshipCode and t.TownshipCode=jp.UploadForTownship and jh.IsDeleted=0 and t.Active=1) is null then '' else (SELECT top(1)  t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.UploadForTownship=t.TownshipCode and t.TownshipCode=jp.UploadForTownship and jh.IsDeleted=0 and t.Active=1) end AS 'Department_Name'
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
		 ,emp.[Name]
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  join TB_Employee emp on emp.EmployeeCode=jp.EmployeeCode

  WHERE 
  (@EmployeeCode is null or jp.EmployeeCode=@EmployeeCode) 
  And (@FromDate is null Or Convert(date,jp.FromDate)>=Convert(date,@FromDate))
  And (@ToDate is null Or Convert(date,jp.ToDate)<=Convert(date,@ToDate))
  And jp.IsDeleted=0
   END
END




GO
/****** Object:  StoredProcedure [dbo].[SP_GetLeaveEntitlementForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetLeaveEntitlementForAdmin]
	 @DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null
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
  TB_LeaveEntitlement.IsDeleted=0
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPensionCount]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetPensionCount]
	@StateDivisionCode nvarchar(50)=null
AS
BEGIN
	Create Table #temp1 (StateDivisionCode nvarchar(50),TownshipCode nvarchar(50))
	Create Table #temp2 (StateDivision nvarchar(50),StateDivisionCode nvarchar(50),EmployeeCount int,TownshipCount int)
	Create Table #temp3 (StateDivisionCode nvarchar(50),TownshipCount int)

	SET NOCOUNT ON;
	insert into #temp1(StateDivisionCode,TownshipCode) 
	select div.StateDivisionCode,tw.TownshipCode from TB_Pension pen join 
	 TB_Employee emp on pen.EmployeeCode=emp.EmployeeCode
	  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
	Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
	Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
	Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	where (@StateDivisionCode is null or tw.StateDivisionID=@StateDivisionCode)
	  group by div.StateDivisionCode,tw.TownshipCode

	insert into #temp3(StateDivisionCode,TownshipCount)
	select StateDivisionCode,Count(TownshipCode) from #temp1 group by StateDivisionCode

	insert into #temp2 (StateDivision,StateDivisionCode,EmployeeCount)
	select div.StateDivision,div.StateDivisionCode, count(emp.EmployeeCode) from TB_Pension pen join 
	 TB_Employee emp on pen.EmployeeCode=emp.EmployeeCode
	inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
	Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
	Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
	Left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	where (@StateDivisionCode is null or tw.StateDivisionID=@StateDivisionCode)
	group by div.StateDivision,div.StateDivisionCode

	DECLARE 
    @divisionCode nvarchar(50) 
	DECLARE cursor_db CURSOR
	FOR SELECT 
        StateDivisionCode
    FROM #temp3;

	OPEN cursor_db;

	FETCH NEXT FROM cursor_db INTO 
		@divisionCode;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		update #temp2 set TownshipCount=(select TownshipCount from #temp3 where StateDivisionCode=@divisionCode) where StateDivisionCode=@divisionCode

    FETCH NEXT FROM cursor_db INTO 
        @divisionCode;
	END;

	CLOSE cursor_db;

	DEALLOCATE cursor_db;

	select * from #temp2

	drop table #temp1
	drop table #temp2
	drop table #temp3
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetPunishmentForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetPunishmentForAdmin]
	-- Add the parameters for the stored procedure here
	@DivisionCode nvarchar(50)=null,
	@TownshipCode nvarchar(50)=null
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
	 p.IsDeleted=0 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetRequestingEmployee]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetRequestingEmployee] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

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
	  ,edt.EducationType
	  --,case when [EducationTypeCode] is null then '' else [EducationTypeCode] end 'EducationTypeCode'
	  ,edt.EducationTypeCode
	  ,case when (SELECT top(1) t.Township FROM TB_Employee AS e, TB_PlaceOfBirth AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0) is null then '' else (SELECT top(1) t.Township FROM TB_Employee AS e, TB_PlaceOfBirth AS t WHERE e.PlaceOfBirth=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode and e.IsDeleted=0) end AS 'PlaceOfBirthName'
	  ,[Occupation]
	  ,case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
      ,[EyeColor],[Height],[Mark],[OtherName]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
	    ,case when ((Select  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh 
		Where e.SerialNumber=jh.EmployeeCode and jh.ToDate = null and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1 AND  e.IsDeleted=0 and jh.IsDeleted=0)) is null then '' else (Select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),jh.FromDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from  TB_Employee e ,TB_JobHistory jh Where e.SerialNumber=jh.EmployeeCode and jh.ToDate = null and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1 AND e.IsDeleted=0 and jh.IsDeleted=0) end AS 'CurrentRankDate'
      ,emp.TownshipCode
	  ,tw.[Township]
	  ,(SELECT CONVERT(NVARCHAR(20),FLOOR((CAST (GetDate() AS INTEGER) - CAST(DateOfBirth AS INTEGER)) / 365.25)))  AS 'Age'
	  ,[Address],[DearestPerson],[Ancestor],[IsActive],emp.[IsDeleted],emp.IsRecordEdited
      ,emp.[ModifiedDate],emp.[CreatedDate],emp.[CreatedBy],emp.EditRequest ,emp.EditComment,emp.DeleteRequest
  FROM [TB_Employee]  emp 
  inner join  [TB_CurrentJob_Township] tw ON emp.TownshipCode=tw.TownshipCode 
  Left JOIN TB_JobHistory  jp ON emp.EmployeeCode =jp.EmployeeCode And jp.IsDeleted=0 AND jp.IsCurrent=1
  Left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code
    Left join TB_EducationType edt on edt.EducationTypeCode=emp.EducationTypeCode

  WHERE 
   emp.IsDeleted=0 AND (IsActive IN ('Active',N'ပြောင်းရွှေ့ရောက်ရှိ')) 
   and (emp.EditRequest='Requesting' or emp.DeleteRequest='Requesting')
   Order By cast (emp.SerialNumber as int)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTotalJobExperience]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Zun Pwint Phyu
-- Create date: 2023, Feb 17
-- Description:	Calculate Total job Experience
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetTotalJobExperience]
	@EmployeeCode nvarchar(50)=null,
	@StateDivisionCode nvarchar(50)=null,
	@TownshipCode nvarchar(50)=null
AS
BEGIN
    DECLARE @getmm INT
	DECLARE @getdd INT
	Create table #temp(SerialNumber nvarchar(50),JEYear int,JEMonth int,JEDay int,JEJoinDate DateTime,JEEndDate DateTime,EmployeeName nvarchar(50),NRC nvarchar(50),RankType nvarchar(50),Department nvarchar(500))

	SET NOCOUNT ON;

    -- Insert statements for procedure here
insert into #temp select distinct emp.SerialNumber, DATEDIFF(Year,emp.JoinDate,GETDATE()) as [year],DATEDIFF(Month,emp.JoinDate,GETDATE()) as [Month],DATEDIFF(Day,emp.JoinDate,GETDATE()) as [Day]
,emp.JoinDate ,GetDate(),emp.[Name],emp.NRCNumber,rt.RankType,ct.Township
 from TB_JobHistory jh join TB_Employee emp on emp.EmployeeCode=jh.EmployeeCode 
join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
join TB_CurrentJob_Township ct on ct.TownshipCode=emp.Occupation
left join TB_StateDivision div on div.StateDivisionCode=ct.StateDivisionID
left join TB_TownAndDivision td on td.TownCode=ct.UploadForTownship
where emp.IsActive='Active' and jh.IsDeleted =0 and jh.IsCurrent=1 and emp.IsDeleted =0
and (@EmployeeCode is null or emp.EmployeeCode =@EmployeeCode) and
(@StateDivisionCode is null or div.StateDivisionCode=@StateDivisionCode) AND
 (@TownshipCode is null or ct.TownshipCode=@TownshipCode) 

Declare @serialNumber nvarchar(50)
DECLARE db_cursor CURSOR FOR 
SELECT SerialNumber  from #temp

OPEN db_cursor  
FETCH NEXT FROM db_cursor INTO @serialNumber  

WHILE @@FETCH_STATUS = 0  
BEGIN  
set @getmm=ABS(DATEDIFF(Month, DATEADD(Year, (select JEYear from #temp where SerialNumber=@serialNumber), (select JEJoinDate from #temp where SerialNumber=@serialNumber)), (select JEEndDate from #temp where SerialNumber=@serialNumber)))
 SET @getdd = ABS(DATEDIFF(DAY, DATEADD(Month, DATEDIFF(Month, DATEADD(Year, (select JEYear from #temp where SerialNumber=@serialNumber), (select JEJoinDate from #temp where SerialNumber=@serialNumber)), (select JEEndDate from #temp where SerialNumber=@serialNumber)), DATEADD(yy, (select JEYear from #temp where SerialNumber=@serialNumber), (select JEJoinDate from #temp where SerialNumber=@serialNumber))), (select JEEndDate from #temp where SerialNumber=@serialNumber)))

  update #temp set JEMonth=@getmm ,JEDay=@getdd where SerialNumber =@serialNumber 
  FETCH NEXT FROM db_cursor INTO @serialNumber 
END 

CLOSE db_cursor  
DEALLOCATE db_cursor

 select EmployeeName,SerialNumber,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),JEJoinDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS JEJoinDate,NRC,RankType,Department,Convert(varchar(10),JEYear) + N'နှစ် ' As JExpYear , Convert(varchar(10),JEMonth) + N'လ ' As JExpMonth , Convert(varchar(10),JEDay) + N'ရက်' as JExpDay from #temp 
  drop table #temp
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_GetTrainingHistoryForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_GetTrainingHistoryForAdmin]
	-- Add the parameters for the stored procedure here
	 @DivisionCode nvarchar(50)=null,
	 @TownshipCode nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	TrainingHistoryPkid
	,TB_TrainingHistory.[EmployeeCode]
	,TB_TrainingHistory.[BranchCode]
	,TB_TrainingHistory.[DepartmentCode]
	,TB_TrainingHistory.[RankTypecode]
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[StartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[StartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'StartDate'
	--,[StartDate]
	--,[EndDate]
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[EndDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[EndDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end  AS 'EndDate'
	,[TrainingTitle]
	,[SchoolName]
	,[Location]
	,case when TB_TrainingHistory.[Remark] is null then '' else TB_TrainingHistory.[Remark] end As 'Remark'
	,TB_TrainingHistory.[IsDeleted]
	,TB_TrainingHistory.[ModifiedDate]
	,TB_TrainingHistory.[CreatedDate]
	,TB_TrainingHistory.[CreatedBy]
	,emp.[Name],div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
	FROM [dbo].[TB_TrainingHistory] join
	TB_Employee emp on emp.EmployeeCode=TB_TrainingHistory.EmployeeCode
	left join TB_CurrentJob_Township tw on emp.TownshipCode=tw.TownshipCode
	left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
	left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
	left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
	WHERE
	 (@DivisionCode is null or div.StateDivisionCode=@DivisionCode) AND
	 (@TownshipCode is null or tw.TownshipCode=@TownshipCode) AND
	 TB_TrainingHistory.IsDeleted=0  
	 order by TB_TrainingHistory.CreatedDate DESC
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTransferForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetTransferForAdmin]
 @DivisionCode nvarchar(50)=null,
 @TownshipCode nvarchar(50)=null
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
tr.IsDeleted=0 and emp.IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetTransferForDetail]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetTransferForDetail]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50),
	@FromTownshipCode nvarchar(50)=null,
	@ToTownshipCode nvarchar(50)=null,
	@TransferPkid int=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   select tr.*,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),tr.TransferDate,103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  AS 'TransferDateStr'
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
(@FromTownshipCode is null or ft.TownshipCode=@FromTownshipCode) AND
(@ToTownshipCode is null or tt.TownshipCode=@ToTownshipCode) AND
(@TransferPkid is null or tr.TransferPkid=@TransferPkid) AND
tr.EmployeeCode=@EmployeeCode And
tr.IsDeleted=0 and emp.IsDeleted=0

END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetYearlyBonusForAdmin]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_GetYearlyBonusForAdmin]
 @DivisionCode nvarchar(50)=null,
 @TownshipCode nvarchar(50)=null
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

   TB_YearlyBonus.IsDeleted=0 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_IntKnowledge_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_IntKnowledge_Delete]
	-- Add the parameters for the stored procedure here
	@IntKnowledgePkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_IntKnowledge
	SET
	 IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE IntKnowledgePkid = @IntKnowledgePkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_IntKnowledge_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_IntKnowledge_Save]
	-- Add the parameters for the stored procedure here
	 @id int=null
	,@pkid nvarchar(50)=null
	,@EmployeeCode nvarchar(50)=null
	,@FromDate datetime=null
	,@ToDate datetime=null
	,@CountryName nvarchar(50)=null
	,@Description nvarchar(500)=null
	,@IsDeleted bit=null
	,@CreatedBy int =null
	,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	If @id=0 
	BEGIN
	INSERT INTO [dbo].[TB_IntKnowledge]
           ([EmployeeCode]
           ,[BranchCode]
           ,[DepartmentCode]
		   ,[RankTypeCode]
           ,[FromDate]
           ,[ToDate]
           ,[CountryName]
           ,[Description]
           ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (@EmployeeCode
           ,''
           ,''
		   ,''
		   ,@FromDate
           ,@ToDate
           ,@CountryName
           ,@Description
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [TB_IntKnowledge]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      ,[FromDate] = @FromDate
      ,[ToDate] = @ToDate
      ,[CountryName] = @CountryName
      ,[Description] = @Description
      ,[IsDeleted] = @IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] = CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
	  ,[UploadForTownship]=@UploadForTownship
 WHERE IntKnowledgePkid=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_IntKnowledge_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_IntKnowledge_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@FromDate datetime=null,
	@ToDate datetime=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
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
	(@EmployeeCode is null or TB_IntKnowledge.EmployeeCode=@EmployeeCode) AND
	(@FromDate is null or Convert(date,TB_IntKnowledge.FromDate)>=Convert(date,@FromDate)) AND
	(@ToDate is null or Convert(date,TB_IntKnowledge.ToDate)<=Convert(date,@ToDate)) AND
	TB_IntKnowledge.IsDeleted=0
END


GO
/****** Object:  StoredProcedure [dbo].[Sp_IntKnowledge_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_IntKnowledge_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_IntKnowledge 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_IntKnowledgeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_IntKnowledgeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@IntKnowledgePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_IntKnowledge 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE IntKnowledgePkid = @IntKnowledgePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[SP_JobExperience_SearchByPersonInfo]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_JobExperience_SearchByPersonInfo]
	-- Add the parameters for the stored procedure here
	@searchval nvarchar(Max)
AS
BEGIN
declare @searchData nvarchar(Max)
set @searchData=N'select * from(
	SELECT  [EmployeePkid]
	       , SerialNumber
	       , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],''0'',N''၀''),''1'',N''၁''),''2'',N''၂''),''3'',N''၃''),''4'',N''၄''),''5'',N''၅''),''6'',N''၆''),''7'',N''၇''),''8'',N''၈''),''9'',N''၉'') AS ''SerialNumber_Myan''
		   , [Name]
		   , [NRCNumber]
		   , rt.RankType as ''RankType'' 
		   , t.Township AS ''DepartmentName''
		   , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),''0'',N''၀''),''1'',N''၁''),''2'',N''၂''),''3'',N''၃''),''4'',N''၄''),''5'',N''၅''),''6'',N''၆''),''7'',N''၇''),''8'',N''၈''),''9'',N''၉'') AS ''JoinDate''
		   , jh.FromDate as ''FromDate''
		   , jh.Job_Year as ''Job_Year''
		   , jh.Job_Month as ''Job_Month''
		   , jh.Job_Day as ''Job_Day''
		   , case when (jh.Job_Year) is null then ''0'' else (jh.Job_Year) end As ''Current_JobYear'' 
		   , (Select DATEDIFF(year,MIN(h.FromDate),GETDATE()) From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as ''Total_JobYear''
		   , (Select datediff(month,MIN(h.FromDate),GETDATE())-(datediff(year,MIN(h.FromDate),GETDATE())*12) From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as ''Total_JobMonth''
		   , (Select datepart(d,MIN(h.FromDate))-datepart(d,GETDATE()) From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as ''Total_JobDay''
		   , jh.IsCurrent as ''IsCurrent''
			 FROM TB_Employee emp  INNER JOIN TB_JobHistory jh ON emp.SerialNumber=jh.EmployeeCode 
			 inner join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code 
			 inner join TB_CurrentJob_Township t on t.TownshipCode=jh.DepartmentName 
	where emp.IsDeleted=0 and (emp.IsActive=''Active'' or emp.IsActive=N''ပြောင်းရွှေ့ရောက်ရှိ'') and jh.IsDeleted=0 and jh.IsCurrent=1) As A'
	--order by cast(emp.SerialNumber as int)
	EXEC (@searchData+@searchval) 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_JobExperience_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_JobExperience_Select]
as
SELECT  [EmployeePkid]
	       ,SerialNumber
	       , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber_Myan'
		   ,[Name]
		   ,[NRCNumber]
		   ,case when ((select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber)) is null then '' else (select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) end As 'CurrentRank'
			 --,case when ((select jh.DepartmentName from TB_JobHistory jh
		  --  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode where jh.IsDeleted=0 and  jh.EmployeeCode=emp.SerialNumber and e.EmployeeCode=emp.EmployeeCode and jh.ToDate is null)) is null then '' else (select jh.DepartmentName from TB_JobHistory jh
		  --  INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode where jh.IsDeleted=0 and  jh.EmployeeCode=emp.SerialNumber and e.EmployeeCode=emp.EmployeeCode and jh.ToDate is null) end As 'DepartmentName'
		  ,case when (SELECT  t.Township FROM TB_JobHistory AS jh INNER JOIN TB_CurrentJob_Township AS t ON jh.DepartmentName=t.TownshipCode  where jh.IsDeleted=0 and t.Active=1 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) is null then '' else (SELECT  top(1)  t.Township FROM TB_JobHistory AS jh INNER JOIN TB_CurrentJob_Township AS t ON jh.DepartmentName=t.TownshipCode where jh.IsDeleted=0 and t.Active=1 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'DepartmentName'

			 , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
			 --,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
			,case when (select CONVERT(nvarchar(10), FromDate, 103) from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) is null then '' else (select CONVERT(nvarchar(10), FromDate, 103) from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end As 'FromDate'
			 , case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Year)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1)is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Year)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'Job_Year'
			  , case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Month)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1)is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Month)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'Job_Month'
			   , case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Day)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1)is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Day)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'Job_Day'
		   --,case when (select CONVERT(varchar(10),jh.Job_Year) from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) is null then '' else (select CONVERT(varchar(10),jh.Job_Year) from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end As 'Current_JobYear'
			 FROM TB_Employee emp  INNER JOIN TB_JobHistory jh ON emp.SerialNumber=jh.EmployeeCode
	where emp.IsDeleted=0 and (emp.IsActive='Active' or emp.IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and jh.IsCurrent=1 and jh.IsDeleted=0 and emp.IsDeleted=0

	  order by cast(emp.SerialNumber as int)
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobExperience_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobExperience_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_JobExperience 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobExperience_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_JobExperience_SelectList]
as
SELECT  [EmployeePkid]
	       ,SerialNumber
	       , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber_Myan'
		   ,[Name]
		   ,[NRCNumber]
		   ,case when ((select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber)) is null then '' else (select rt.RankType from TB_JobHistory jp 
            INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) end As 'CurrentRank'
			 ,case when ((select jh.DepartmentName from TB_JobHistory jh
		    INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode where jh.IsDeleted=0 and  jh.EmployeeCode=emp.SerialNumber and e.EmployeeCode=emp.EmployeeCode and jh.ToDate is null)) is null then '' else (select jh.DepartmentName from TB_JobHistory jh
		    INNER JOIN TB_Employee e ON e.SerialNumber=jh.EmployeeCode where jh.IsDeleted=0 and  jh.EmployeeCode=emp.SerialNumber and e.EmployeeCode=emp.EmployeeCode and jh.ToDate is null) end As 'DepartmentName'
			 , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
			 --,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
			,case when (select FromDate from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) is null then '' else (select FromDate from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end As 'FromDate'
			 , case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Year)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1)is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Year)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'Job_Year'
			  , case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Month)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1)is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Month)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'Job_Month'
			   , case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Day)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1)is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE((CONVERT(NVARCHAR(20),jh.Job_Day)),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end AS 'jh.Job_Day'
		   ,case when (select CONVERT(varchar(10),jh.Job_Year) from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) is null then '' else (select CONVERT(varchar(10),jh.Job_Year) from TB_JobHistory jh where jh.IsDeleted=0 and jh.EmployeeCode=emp.SerialNumber and jh.IsCurrent=1) end As 'Current_JobYear'
			 FROM TB_Employee emp   

	where emp.IsDeleted=0 and emp.IsActive='Active' 

	  order by cast(emp.SerialNumber as int)
GO
/****** Object:  StoredProcedure [dbo].[SP_JobExperience_SelectListForPerson]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_JobExperience_SelectListForPerson]
	
AS
BEGIN
  SELECT  [EmployeePkid]
	       , SerialNumber
	       , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber_Myan'
		   , [Name]
		   , [NRCNumber]
		   , rt.RankType as 'RankType' 
		   , t.Township AS 'DepartmentName'
		   , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate'
		   , jh.FromDate as 'FromDate'
		   , jh.Job_Year as 'Job_Year'
		   , jh.Job_Month as 'Job_Month'
		   , jh.Job_Day as 'Job_Day'
		   , case when (jh.Job_Year) is null then '0' else (jh.Job_Year) end As 'Current_JobYear' 
		   , (Select DATEDIFF(DAY,MIN(h.FromDate),GETDATE())/365 From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as 'Total_JobYear'
		   --, (Select datediff(month,MIN(h.FromDate),GETDATE())-(datediff(year,MIN(h.FromDate),GETDATE())*12) From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as 'Total_JobMonth'
		   ,  (Select (DateDiff(Day,CONVERT(varchar, year(getdate()))+'-'+CONVERT(varchar,DATEPART(MONTH,MIN(h.FromDate)))+'-'+CONVERT(varchar,DATEPART(DAY,MIN(h.FromDate))),getdate()))/30 From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as 'Total_JobMonth'

		   --, (Select datepart(d,GETDATE())-datepart(d,MIN(h.FromDate)) From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as 'Total_JobDay'
		   , (Select (case when  month(GETDATE())=month(CONVERT(varchar, year(getdate()))+'-'+CONVERT(varchar,DATEPART(MONTH,MIN(h.FromDate)))+'-'+CONVERT(varchar,DATEPART(DAY,MIN(h.FromDate)))) then (DATEDIFF(d, CONVERT(varchar, year(getdate()))+'-'+CONVERT(varchar,DATEPART(MONTH,MIN(h.FromDate)))+'-'+CONVERT(varchar,DATEPART(DAY,MIN(h.FromDate))), GETDATE())%365)%30 else (DATEDIFF(d, CONVERT(varchar, year(getdate()))+'-'+CONVERT(varchar,DATEPART(MONTH,MIN(h.FromDate)))+'-'+CONVERT(varchar,DATEPART(DAY,MIN(h.FromDate))), GETDATE())%365)%30-1 end) as 'Total_JobDay' From TB_Employee e inner join TB_JobHistory h on e.SerialNumber=h.EmployeeCode where e.IsDeleted=0 and h.IsDeleted=0 and e.SerialNumber=emp.SerialNumber)  as 'Total_JobDay'		  

		   , jh.IsCurrent as 'IsCurrent'
			 FROM TB_Employee emp  INNER JOIN TB_JobHistory jh ON emp.SerialNumber=jh.EmployeeCode 
			 inner join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code 
			 inner join TB_CurrentJob_Township t on t.TownshipCode=jh.DepartmentName 
	where emp.IsDeleted=0 and (emp.IsActive='Active' or emp.IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and jh.IsDeleted=0 --and jh.IsCurrent=1
	order by cast(emp.SerialNumber as int)
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_JobExperienceList_SelectByCurrentRank]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_JobExperienceList_SelectByCurrentRank]
AS
BEGIN
	select JH.JobHistoryPkid, EMP.SerialNumber, JH.AllTRC, JH.CurrentRankLevel, 
	EMP.Name, EMP.NRCNumber, EMP.JoinDate, JH.FromDate, JH.ToDate, JH.Township, JH.RankType AS CurrentRank, JH.Job_Year, JH.Job_Month, JH.Job_Day 
	from (
		select B.JobHistoryPkid, B.EmployeeCode, A.RankType_Code AS CurrentRTC, B.RankType_Code AS AllTRC
		, rtt.RankLevel AS RT_RankLevel, A.RankLevel AS CurrentRankLevel, rtt.RankType  
		, B.FromDate, B.ToDate, jt.Township, B.Job_Year, B.Job_Month, B.Job_Day  
		from TB_JobHistory AS B
		inner join TB_RankType AS rtt on B.RankType_Code=rtt.RankTypeCode 
		inner join 
		(select jh.EmployeeCode, jh.RankType_Code, rt.RankDescription, rt.RankLevel, jh.IsCurrent --, rt.RankType    
		from TB_JobHistory as jh inner join TB_RankType as rt 
		on jh.RankType_Code = rt.RankTypeCode 
		where jh.JobHistoryPkid in (select jh.JobHistoryPkid 
		from TB_JobHistory as jh inner join TB_RankType as rt 
		on jh.RankType_Code = rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0) 
	--and jh.EmployeeCode='0001'
	) AS A on A.EmployeeCode=B.EmployeeCode 
	inner join TB_CurrentJob_Township AS jt on B.DepartmentName = jt.TownshipCode 
	where B.IsDeleted=0  
	group by B.JobHistoryPkid, B.EmployeeCode, A.RankType_Code, B.RankType_Code, rtt.RankLevel, A.RankLevel, rtt.RankType,
	B.FromDate, B.ToDate, jt.Township, B.Job_Year, B.Job_Month, B.Job_Day
	having rtt.RankLevel in (A.RankLevel)
	) AS JH inner join TB_Employee AS EMP 
	on JH.EmployeeCode = EMP.SerialNumber 
	where EMP.IsDeleted=0 
order by JH.EmployeeCode
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobHistory_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobHistory_Delete]
	-- Add the parameters for the stored procedure here
	 @JobHistoryPkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_JobHistory
	SET
	IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE JobHistoryPkid = @JobHistoryPkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobHistory_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobHistory_Save]
	-- Add the parameters for the stored procedure here
	@id int
	,@pkid nvarchar(50)
	,@EmployeeCode nvarchar(50)
   ,@DepartmentName nvarchar(100)
   ,@RankType nvarchar(50)
   ,@FromDate datetime
   ,@ToDate datetime
   ,@Duration decimal
   ,@Remark nvarchar(500)
   ,@IsDeleted bit
   ,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	If @id=0 
	BEGIN
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TB_JobHistory]
	([EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,[DepartmentName]
	,[RankType_Code]
	,[FromDate]
	,[ToDate]
	,[Duration]
	,[Remark]
	,[IsDeleted]
	,[CreatedDate]
	,[CreatedBy])
	VALUES
	(@EmployeeCode
	,''
	,''
	,''
	,@DepartmentName
	,@RankType
	,@FromDate
	,@ToDate
	,@Duration
	,@Remark
	,@IsDeleted
	,CURRENT_TIMESTAMP
	,@CreatedBy)

END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_JobHistory]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      ,[DepartmentName]=@DepartmentName
	  ,[RankType_Code]=@RankType
	  ,[FromDate]=@FromDate
	  ,[ToDate] = @ToDate
	  ,[Duration]=@Duration
	  ,[Remark]=@Remark
      ,[IsDeleted]=@IsDeleted
      ,[ModifiedDate] =CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE  JobHistoryPkid=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobHistory_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobHistory_Select] 
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT JobHistoryPkid
      ,[EmployeeCode]
	  ,BranchCode
	  ,DepartmentCode
	  ,RankTypeCode
	  ,DepartmentName
	  ,RankType_Code
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ToDate'
	  ,Remark
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_JobHistory] 
  WHERE IsDeleted=0 AND EmployeeCode=@EmployeeCode
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobHistory_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobHistory_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_JobHistory 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobHistoryInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobHistoryInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@JobHistoryPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_JobHistory 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE JobHistoryPkid = @JobHistoryPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobPosting_Delete]
	-- Add the parameters for the stored procedure here
	 @JobPostingPkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_JobHistory
	SET
	IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE JobHistoryPkid = @JobPostingPkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobPosting_Save]
	-- Add the parameters for the stored procedure here
	 @id int=null
	,@pkid nvarchar(50)=null
	,@EmployeeCode nvarchar(50)=null
    ,@DepartmentCode nvarchar(50)=null
    ,@RankType nvarchar(50)=null
    ,@FromDate datetime=null
    ,@ToDate datetime=null
   --,@Duration decimal(18,2)
    ,@years decimal(18,0)=null
    ,@months decimal(18,0)=null
    ,@days decimal(18,0)=null
    ,@Duration decimal(18,0)=null
    ,@Remark nvarchar(500)=null
    ,@IsCurrent bit=null
    ,@IsDeleted bit=null
    ,@CreatedBy int=null
	,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	
	SET NOCOUNT ON;

	If  @IsCurrent=1
	BEGIN
	UPDATE [dbo].TB_Employee
	set TownshipCode=@DepartmentCode,Occupation=@DepartmentCode
	where SerialNumber=@EmployeeCode 

	if((select count(*) from TB_JobHistory where EmployeeCode=@EmployeeCode)>0)
	begin
	update TB_JobHistory set IsCurrent=0 where EmployeeCode=@EmployeeCode
	end
	END 


	If @id=0 
	BEGIN
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TB_JobHistory]
	([EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,[DepartmentName]
	,[RankType_Code]
	,[FromDate]
	,[ToDate]
	--,[Duration]
	,[Job_Year]
	,[Job_Month]
	,[Job_Day]
	,Duration
	,[Remark]
	,[IsCurrent]
	,[IsDeleted]
	,[IsRecordEdited]
	,[CreatedDate]
	,[CreatedBy]
	,[UploadForTownship])
	VALUES
	(@EmployeeCode
	,''
	,@DepartmentCode
	,''
	,@DepartmentCode
	,@RankType
	,@FromDate
	,@ToDate
	--,@Duration
	,@years
	,@months
	 ,@days
	 ,DATEDIFF(DAY,@FromDate,@ToDate)
	--,DIFFERENCE(@FromDate,@ToDate)
	,@Remark
	,@IsCurrent
	,@IsDeleted
	,1
	,CURRENT_TIMESTAMP
	,@CreatedBy
	,@UploadForTownship)

END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_JobHistory]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      ,[DepartmentName]=@DepartmentCode
	  ,[RankType_Code]=@RankType
	  ,[FromDate]=@FromDate
	  ,[ToDate] = @ToDate
	  --,[Duration] =DIFFERENCE(@FromDate,@ToDate)
	  --,[Duration]=@Duration
	  ,[Job_Year]=@years
	  ,[Job_Month]=@months
	  ,[Job_Day]=@days
	  ,[Duration]=@Duration
	  ,[Remark]=@Remark
	  ,[IsCurrent]=@IsCurrent
      ,[IsDeleted]=@IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] =CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE  JobHistoryPkid=@pkid
	END

	
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobPosting_Select] 
	-- Add the parameters for the stored procedure here
	@id int
	,@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	If(@id = 0)
	BEGIN
   SELECT JobHistoryPkid
      ,[EmployeeCode]
	  --,BranchCode
	  --,DepartmentCode
	  --,[RankTypeCode]
	  ,DepartmentName
	  ,rt.RankType as 'RankType'
	  ,[RankType_Code]
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'ToDate'
	  ,Duration
	  ,Remark
	  ,IsCurrent
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  WHERE IsDeleted=0 AND EmployeeCode=@EmployeeCode
   END
ELSE IF(@id = 1)
    BEGIN
	   SELECT JobHistoryPkid
      ,[EmployeeCode]
	  --,BranchCode
	  --,DepartmentCode
	  --,RankTypeCode
	  ,DepartmentName
	  ,rt.RankType as 'RankType'
	  ,[RankType_Code]
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ToDate'
	  ,Duration
	  ,Remark
	  ,IsCurrent
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  where ToDate is null AND EmployeeCode=@EmployeeCode AND IsDeleted=0
  END
ELSE
 BEGIN
	   SELECT JobHistoryPkid
      ,[EmployeeCode]
	  --,BranchCode
	  --,DepartmentCode
	  --,RankTypeCode
	  ,DepartmentName
	  ,rt.RankType as 'RankType'
	  ,[RankType_Code]
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'ToDate'
	  ,Duration
	  ,Remark
	  ,IsCurrent
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  where  IsDeleted=0
  END
END



--EXEC Sp_JobPosting_Select @EmployeeCode='00032'
GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobPosting_SelectByEmployeeCode] 
	-- Add the parameters for the stored procedure here@DivisionCode nvarchar(50)=null,
     @EmployeeCode nvarchar(50)=null,
	 @FromDate datetime=null,
	 @ToDate datetime=null
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
  And (@FromDate is null Or Convert(date,jp.FromDate)>=Convert(date,@FromDate))
  And (@ToDate is null Or Convert(date,jp.ToDate)<=Convert(date,@ToDate))

 
  And jp.IsDeleted=0
   END
END




GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_SelectByToDateNull]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobPosting_SelectByToDateNull] 
	-- Add the parameters for the stored procedure here

	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    BEGIN
	   SELECT JobHistoryPkid
      ,[EmployeeCode]
	  --,BranchCode
	  --,DepartmentCode
	  --,RankTypeCode
	  ,DepartmentName
	,case when (SELECT top(1) t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and t.TownshipCode=jp.DepartmentName and jh.IsDeleted=0 and t.Active=1) is null then '' else (SELECT top(1)  t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and t.TownshipCode=jp.DepartmentName and jh.IsDeleted=0 and t.Active=1) end AS 'Department_Name'
	  ,rt.RankType as 'RankType'
	  ,[RankType_Code]
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else 
	  REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')end AS 'ToDate'
	  --,CONVERT(NVARCHAR(20),Duration) + N' ရက်' As 'Duration'
	  --, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([Duration],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Duration'
	    ,CONVERT(NVARCHAR(20),Job_Year) As 'Job_Year'
	   ,CONVERT(NVARCHAR(20),Job_Month) As 'Job_Month'
	   ,CONVERT(NVARCHAR(20),Job_Day) As 'Job_Day'
	  ,Remark
	  ,IsCurrent
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  where ToDate is null AND EmployeeCode=@EmployeeCode AND IsDeleted=0
  END

END




GO
/****** Object:  StoredProcedure [dbo].[Sp_JobPosting_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_JobPosting_SelectList] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
 BEGIN
	   SELECT JobHistoryPkid
      ,[EmployeeCode]
	  --,BranchCode
	  --,DepartmentCode
	  --,RankTypeCode
	  ,DepartmentName
	  ,case when (SELECT top(1) t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and t.TownshipCode=jp.DepartmentName and jh.IsDeleted=0 and t.Active=1) is null then '' else (SELECT top(1)  t.Township FROM TB_JobHistory AS jh, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and t.TownshipCode=jp.DepartmentName and jh.IsDeleted=0 and t.Active=1) end AS 'Department_Name'
	  ,rt.RankType as 'RankType'
	  ,[RankType_Code]
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[FromDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'FromDate'
	  ,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[ToDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'ToDate'
	  --,CONVERT(NVARCHAR(20),Duration) As 'Duration'
	  --, REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([Duration],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Duration'
	   ,CONVERT(NVARCHAR(20),Job_Year) As 'Job_Year'
	   ,CONVERT(NVARCHAR(20),Job_Month) As 'Job_Month'
	   ,CONVERT(NVARCHAR(20),Job_Day) As 'Job_Day'
	  ,Remark
	  ,IsCurrent
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_JobHistory] jp
  INNER JOIN TB_RankType rt ON jp.RankType_Code=rt.RankTypeCode
  where  IsDeleted=0
  END
END



--EXEC Sp_JobPosting_Select @EmployeeCode='00032'
GO
/****** Object:  StoredProcedure [dbo].[Sp_LeaveEntitlement_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LeaveEntitlement_Delete]
	-- Add the parameters for the stored procedure here
	 @LeaveEntitlementPkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_LeaveEntitlement
	SET
	  IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE LeaveEntitlementPkid = @LeaveEntitlementPkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_LeaveEntitlement_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LeaveEntitlement_Save]
	-- Add the parameters for the stored procedure here
	@id int
	,@pkid nvarchar(50)
	,@EmployeeCode nvarchar(50)
	,@ApprovedDate datetime
	,@ApprovedNo nvarchar(50)
	,@StartDate datetime
	,@EndDate datetime
	,@Period nvarchar(50)
	,@LeaveTypeCode nvarchar(50)
	,@IsDeleted bit
	,@CreatedBy int
	,@UploadForTownship nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		If @id=0 
	BEGIN
	INSERT INTO [dbo].[TB_LeaveEntitlement]
           ([BranchCode]
           ,[DepartmentCode]
		   ,[RankTypeCode]
		   ,[EmployeeCode]
           ,[ApprovedDate]
           ,[ApprovedNo]
           ,[StartDate]
           ,[EndDate]
           ,[Period]
		   ,[LeaveTypeCode]
		   ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (''
           ,''
           ,''
		   ,@EmployeeCode
		   ,@ApprovedDate
           ,@ApprovedNo
           ,@StartDate
           ,@EndDate
		   ,@Period
		   ,@LeaveTypeCode
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [TB_LeaveEntitlement]
   SET  [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
	  ,[EmployeeCode]=@EmployeeCode
      ,[ApprovedDate] = @ApprovedDate
      ,[ApprovedNo] = @ApprovedNo
      ,[StartDate] = @StartDate
      ,[EndDate] = @EndDate
	  ,[Period]=@Period
	  ,[LeaveTypeCode]=@LeaveTypeCode
      ,[IsDeleted] = @IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] = CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE LeaveEntitlementPkid=@pkid
	END
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_LeaveEntitlement_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LeaveEntitlement_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@FromDate datetime=null,
	@ToDate datetime=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT [LeaveEntitlementPkid]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(
	  TB_LeaveEntitlement.[EmployeeCode],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'EmployeeCode'
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
  (@EmployeeCode is null or TB_LeaveEntitlement.EmployeeCode=@EmployeeCode) AND
  (@FromDate is null or Convert(date,TB_LeaveEntitlement.StartDate)>=Convert(date,@FromDate))AND
  (@ToDate is null or Convert(date,TB_LeaveEntitlement.EndDate)<=Convert(date,@ToDate))AND
  TB_LeaveEntitlement.IsDeleted=0
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_LeaveEntitlement_Select_List]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_LeaveEntitlement_Select_List]
as
select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE    (emp. [SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber',
	   emp.Name
		 ,case when(select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) is null then '' else (select rt.RankType from TB_JobHistory jp 
       INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) end As 'CurrentRank',
	   emp.TownshipCode
	  ,tw.[Township]
	   ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[StartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'StartDate'
	  ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[EndDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'EndDate'
	  --,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[Period],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'Period'
	  ,[Period]
	  ,[LeaveTypeCode]
	  ,case when le.[UploadForTownship] is null then '' else le.[UploadForTownship] end As 'UploadForTownship' 
	  
from [TB_Employee] emp,[TB_LeaveEntitlement] le,[TB_CurrentJob_Township] tw
  --INNER JOIN TB_JobPosting  jp ON emp.SerialNumber =jp.EmployeeCode
  --INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankTypeCode
  WHERE emp.SerialNumber=le.EmployeeCode AND emp.IsDeleted='0' AND (emp.IsActive='Active' or emp.IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') and emp.TownshipCode=tw.TownshipCode
    order by cast(emp.SerialNumber as int)
GO
/****** Object:  StoredProcedure [dbo].[Sp_LeaveEntitlement_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LeaveEntitlement_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_LeaveEntitlement 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_LeaveEntitlementInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LeaveEntitlementInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@LeaveEntitlementPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_LeaveEntitlement 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE LeaveEntitlementPkid = @LeaveEntitlementPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ListByRankType_EmployeeCount]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Sp_ListByRankType_EmployeeCount]
as
 select 
(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=100 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Director_MaleCount',

 (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=100 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Director_FemaleCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=101 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'GM_MaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=101 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'GM_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=102 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_GM_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=102 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_GM_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=103 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_GM_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=103 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_GM_FemaleCount'
  
  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=104 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Manager_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=104 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Manager_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=105 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_manager_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=105 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_manager_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=106 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Supervisor_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=106 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Supervisor_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=107 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Supervisor_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=107 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Supervisor_FemaleCount'
  
   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=108 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Casher2_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=108 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Casher2_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=109 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Computer_Operator_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=109 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Computer_Operator_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=110 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'SeniorClerk_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=110 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'SeniorClerk_FemaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=112 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Casher3_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=112 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Casher3_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=113 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Computer_Operator_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=113 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Assistant_Computer_Operator_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=114 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'JuniorClerk_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=114 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'JuniorClerk_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=115 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Casher4_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=115 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Casher4_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=116 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_Assistant_Computer_Operator_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=116 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_Assistant_Computer_Operator_FemaleCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=117 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Printer5_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=117 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Printer5_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=118 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'One_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=118 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'One_FemaleCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=119 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'EngineDriver_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=119 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'EngineDriver_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=120 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Two_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=120 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Two_FemaleCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=121 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'OfficeAssistant_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=121 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'OfficeAssistant_FemaleCount'

    ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count
 (*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=122 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_OfficeAssistant_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=122 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Secondary_OfficeAssistant_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count
 (*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=123 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Guard_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=123 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Guard_FemaleCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count
 (*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=124 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Cleaner_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=124 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Cleaner_FemaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count
 (*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=125 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_MaleCount'

   ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and ert.RankTypeCode=125 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_FemaleCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and not ert.RankTypeCode=125 and e.Gender=N'ကျား'  and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_MaleCount'

,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and not ert.RankTypeCode=125 and e.Gender=N'မ'  and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_FemaleCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and not ert.RankTypeCode=125   and e.IsActive='Active' and e.isDeleted=0) As 'Permanent_TotalCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and  ert.RankTypeCode=125   and e.IsActive='Active' and e.isDeleted=0) As 'TemporyEmployee_TotalCount'

  ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode JOIN TB_EmployeeRankType ert ON ert.RankTypeCode=rt.EmployeeRankTypeCode 
 where jh.IsCurrent=1 and jh.IsDeleted=0   and not ert.RankTypeCode=125   and e.IsActive='Active' and e.isDeleted=0) As 'TotalCount'

 --,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankType IN(N'ဦးညွန်မှုး',N'ညွှန်မှူး',N'ညွှန်ကြားရေးမှူးချုပ်',N'ဦးဆောင်ညွှန်ကြားရေးမှူး',N'ထွေ/ဂျာ',N'ဒု-ညွှန်ချုပ်',N'ဒု-ညွှန်ချုပ်',N'အထွေထွေမန်နေဂျာ',N'ဒုထွေဂျာ',N'ဒု-ညွှန်မှူး',N'ဒု-ညွှန်မှူး',N'အထွေထွေမန်နေဂျာ(တာဝန်)',N'အထွေထွေမန်နေဂျာ(DGMတာဝန်)ပူးတွဲ',N'ဒုတိယအထွေထွေမန်နေဂျာ',N'လ/ထ ထွေဂျာ',N'လက်ထောက်အထွေထွေမန်နေဂျာ',N'မန်နေဂျာ',N'လ/ထညွှန်မှူး',N'သုတေသနမှုး(‌‌ဘောဂဗေဒ)',N'သုတေသနအရာရှိ(‌‌ဘောဂဗေဒ)',N'လက်မန်',N'ဦးစီးအရာရှိ',N'လက်ထောက်မန်နေဂျာ') and e.IsActive='Active' and e.isDeleted=0) As 'TotalUpperCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankDescription='Upper' and e.IsActive='Active' and e.isDeleted=0) As 'TotalUpperCount'

 ,(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') from TB_Employee e INNER JOIN TB_JobHistory jh ON e.SerialNumber=jh.EmployeeCode INNER JOIN TB_RankType rt ON jh.RankType_Code=rt.RankTypeCode  where jh.IsCurrent=1 and jh.IsDeleted=0 and  rt.RankDescription='Lower' and e.IsActive='Active' and e.isDeleted=0) As 'TotalLowerCount'
GO
/****** Object:  StoredProcedure [dbo].[Sp_Login_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Login_Update]
	-- Add the parameters for the stored procedure here
	@UserPkid int
	, @LoginTime datetime 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
    
	BEGIN
	UPDATE TB_User
	SET
	LoginTime = @LoginTime 
	, LogoutTime = NULL
	WHERE UserPkid = @UserPkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Logout_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Logout_Update]
	-- Add the parameters for the stored procedure here
	@UserPkid int
	, @LogoutTime datetime 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
    
	BEGIN
	UPDATE TB_User
	SET
	LogoutTime = @LogoutTime 
	WHERE UserPkid = @UserPkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_NRCMiddleName_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_NRCMiddleName_Select]
	-- Add the parameters for the stored procedure here
	@NRCNo_Myan nvarchar(50)
	,@NRCNo_E int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select NRCPkid,REPLACE(NRCMyanmarCode,@NRCNo_Myan,N'') As 'NRCName' from TB_NRC where NRCNumber=@NRCNo_E
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Pension_Delete]
	-- Add the parameters for the stored procedure here
	@pkid nvarchar(50)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_Pension
	SET
	  IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE PensionPkid = @pkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Pension_Save]
	-- Add the parameters for the stored procedure here
	  @pkid int
	 ,@OriginalEmployeeNo nvarchar(50)=null
	 ,@EmployeeCode nvarchar(50)=null
	 ,@Name nvarchar(50)=null
     ,@FatherName nvarchar(50)=null
	 ,@RankType nvarchar(50)=null
	 ,@Department nvarchar(100)=null
	 ,@DateOfBirth datetime=null
	 ,@PensionReportNo nvarchar(50)=null
	 ,@PensionDate datetime=null
	 ,@PensionType nvarchar(50)=null
	 ,@LatestSalary nvarchar(50)=null
	 ,@MonthlyPension nvarchar(50)=null
	 ,@Saving nvarchar(50)=null
	 ,@PensionStartDate datetime=null
	 ,@PensionBank nvarchar(50)=null
	 ,@Remark nvarchar(50)=null
	 ,@IsDeleted bit=null
	 ,@CreatedBy int =null
	 ,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	IF @pkid=0
	BEGIN
	INSERT INTO [dbo].[TB_Pension]
          ( [BranchCode]
           ,[DepartmentCode]
           ,[RankTypeCode]
		   ,[EmployeeCode]
           ,[Name]
           ,[FatherName]
           ,[RankType]
           ,[Department]
           ,[DateOfBirth]
           ,[PensionReportNo]
           ,[PensionDate]
           ,[PensionTypeCode]
           ,[LatestSalary]
           ,[MonthlyPension]
		   ,[Saving]
		   ,[PensionStartDate]
		   ,[PensionBank]
		   ,[Remark]
           ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (''
           ,''
           ,''
		   ,@EmployeeCode
		   ,@Name
		   ,@FatherName
           ,@RankType
           ,@Department
           ,@DateOfBirth
           ,@PensionReportNo
           ,@PensionDate
           ,@PensionType
           ,@LatestSalary
           ,@MonthlyPension
		   ,@Saving
		   ,@PensionStartDate
		   ,@PensionBank
		   ,@Remark
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	
	UPDATE [dbo].[TB_Pension]
   SET  [BranchCode]=''
     ,[DepartmentCode]=''
     ,[RankTypeCode]=''
	 ,[EmployeeCode]=@EmployeeCode
     ,[Name]=@Name
     ,[FatherName]=@FatherName
	 ,[RankType]=@RankType
	 ,[Department]=@Department
	 ,[DateOfBirth]=@DateOfBirth
	 ,[PensionReportNo]=@PensionReportNo
	 ,[PensionDate]=@PensionDate
	 ,[PensionTypeCode]=@PensionType
	 ,[LatestSalary]=@LatestSalary
	 ,[MonthlyPension]=@MonthlyPension
	 ,[Saving]=@Saving
	 ,[PensionStartDate]=@PensionStartDate
	 ,[PensionBank]=@PensionBank
	 ,[Remark]=@Remark
	 ,[IsDeleted]=@IsDeleted
	 ,[IsRecordEdited]=1
	 ,[ModifiedDate]=CURRENT_TIMESTAMP
	 ,[CreatedBy]=@CreatedBy
 WHERE EmployeeCode=@EmployeeCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Pension_Select]
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
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Pension_SelectByEmployeeCode]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Name] 
			, [Father_Name]
			, (select rt.RankType from TB_JobHistory jp 
             INNER JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber) As 'CurrentRank'

			--, (SELECT jh.DepartmentName FROM TB_Employee AS e, TB_JobHistory AS jh WHERE e.SerialNumber=jh.EmployeeCode AND e.EmployeeCode=emp.EmployeeCode AND jh.IsDeleted=0 and e.IsDeleted=0 and jh.ToDate is null) AS 'Department'

			, case when (SELECT t.Township FROM TB_Employee AS e inner join TB_JobHistory AS jh on e.SerialNumber=jh.EmployeeCode, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and jh.IsDeleted=0 and  jh.ToDate is null and e.SerialNumber=emp.SerialNumber and e.IsDeleted=0) is null then '' else (SELECT t.Township FROM TB_Employee AS e inner join TB_JobHistory AS jh on e.SerialNumber=jh.EmployeeCode, TB_CurrentJob_Township AS t WHERE jh.DepartmentName=t.TownshipCode and jh.IsDeleted=0 and  jh.ToDate is null and e.SerialNumber=emp.SerialNumber and e.IsDeleted=0) end AS 'Department'

			, case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
			, case when(select yb.YearlyBonusSalary from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode and e.IsDeleted=0 and yb.IsDeleted=0 ) is null then '' else (select yb.YearlyBonusSalary from TB_Employee As e , TB_YearlyBonus As yb where yb.EmployeeCode=e.SerialNumber AND e.employeeCode=emp.employeeCode and e.IsDeleted=0 and yb.IsDeleted=0 )end  AS 'LatestSalary'
			
	    From TB_Employee emp 
		--INNER JOIN TB_YearlyBonus yb ON yb.EmployeeCode=emp.SerialNumber
	    Where SerialNumber=@EmployeeCode and IsActive LIKE N'%ပင်စင်' and IsDeleted=0
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Pension_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Pension_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_Pension 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PensionInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PensionInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@PensionPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Pension 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE PensionPkid = @PensionPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[SP_PensionList_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_PensionList_SelectByEmployeeCode]
@EmployeeCode nvarchar(50)
as
 select * from TB_Pension where EmployeeCode=@EmployeeCode and IsDeleted=0
GO
/****** Object:  StoredProcedure [dbo].[Sp_PensionType_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PensionType_Delete] 
-- Add the parameters for the stored procedure here
	@PensionTypePkid NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_PensionType
	SET
	Active = 0
	WHERE PensionTypePkid = @PensionTypePkid
	END

END

GO
/****** Object:  StoredProcedure [dbo].[Sp_PensionType_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PensionType_Save]
	-- Add the parameters for the stored procedure here
	@id int,
   @PensionType nvarchar(500),
   @PensionTypeCode nvarchar(50),
   @UploadForTownship nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--DECLARE @PensionTypeCode nvarchar(10)
	--SET @PensionTypeCode =(SELECT MAX(PensionTypeCode) FROM TB_PensionType) + 1
	IF(@id=0)
    BEGIN


	if((select max(PensionTypeCode) AS PensionTypeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(PensionTypeCode)+1))) + RTRIM(max(PensionTypeCode)+1) AS PensionTypeCode 
		from TB_PensionType
		) as A) is null)
	begin
		set @PensionTypeCode ='000001'
	end
	else
	begin
		set @PensionTypeCode = (select max(PensionTypeCode) AS PensionTypeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(PensionTypeCode)+1))) + RTRIM(max(PensionTypeCode)+1) AS PensionTypeCode 
		from TB_PensionType
		) as A)
	end


	INSERT INTO [TB_PensionType](PensionTypeCode,PensionType,Active,IsRecordEdited,UploadForTownship)
	VALUES( @PensionTypeCode, @PensionType,1,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_PensionType]
	SET PensionType=@PensionType,IsRecordEdited=1
	where PensionTypeCode=@PensionTypeCode

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PensionType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PensionType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT PensionTypePkid,PensionTypeCode,PensionType
	 from TB_PensionType
	where Active=1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PensionType_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PensionType_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_PensionType 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PensionTypeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PensionTypeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@PensionTypePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_PensionType 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE PensionTypePkid = @PensionTypePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PlaceOfBirth_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PlaceOfBirth_Save]
	-- Add the parameters for the stored procedure here
   @id int,
   @Township nvarchar(500),
   @Townshipcode1 nvarchar(50),
   @UploadForTownship nvarchar(50)
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @TownshipCode nvarchar(10)
	SET @TownshipCode =(SELECT MAX(TownshipCode) FROM TB_PlaceOfBirth) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_PlaceOfBirth](TownshipCode, Township,Active,IsRecordEdited,UploadForTownship)
	VALUES( @TownshipCode, @Township,1,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_PlaceOfBirth]
	SET Township=@Township, IsRecordEdited=1
	where TownshipCode=@Townshipcode1

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PlaceOfBirth_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PlaceOfBirth_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	TSP.TownshipPkid,TSP.TownshipCode, TSP.Township, TSP.Active 
	FROM TB_PlaceOfBirth TSP
	where Active=1
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PlaceOfBirth_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PlaceOfBirth_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_PlaceOfBirth 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PLaceOfBirthInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PLaceOfBirthInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	  @TownshipPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_PlaceOfBirth 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE TownshipPkid = @TownshipPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Punishment_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Punishment_Delete] 
	-- Add the parameters for the stored procedure here
		@pkid nvarchar(5)
	   ,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

  
	UPDATE TB_Punishment
	SET
	IsDeleted=1 
	,ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
WHERE PunishmentPkid = @pkid
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Punishment_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Punishment_Save]
	-- Add the parameters for the stored procedure here
	 @id int=null
	,@pkid nvarchar(50)=null
	,@EmployeeCode nvarchar(50)=null
	,@OrderDate datetime=null
	,@OrderNo nvarchar(50)=null
	,@CrimeYear nvarchar(50)=null
	,@PunishmentTypeCode nvarchar(500)=null
	,@Description nvarchar(800)=null
	,@IsDeleted bit=null
	,@CreatedBy int =null
	,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
	If @id=0 
	BEGIN
	INSERT INTO [dbo].[TB_Punishment]
           ([EmployeeCode]
           ,[BranchCode]
           ,[DepartmentCode]
		   ,[RankTypeCode]
		   ,[OrderDate]
           ,[OrderNo]
           ,[CrimeYear]
           ,[PunishmentTypeCode]
           ,[Description]
           ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (@EmployeeCode
           ,''
           ,''
		   ,''
		   ,@OrderDate
		   ,@OrderNo
           ,@CrimeYear
           ,@PunishmentTypeCode
           ,@Description
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [TB_Punishment]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
	  ,[OrderDate]=@OrderDate
      ,[OrderNo] = @OrderNo
      ,[CrimeYear] = @CrimeYear
      ,[PunishmentTypeCode] = @PunishmentTypeCode
      ,[Description] = @Description
      ,[IsDeleted] = @IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] = CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE PunishmentPkid=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Punishment_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Punishment_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
If(@EmployeeCode !='a')
	BEGIN
	SELECT 
	 PunishmentPkid
	,[EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	--,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(30),[OrderNo],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'OrderNo'
	,OrderNo
	,CrimeYear
	--,(select pt.PunishmentType from TB_PunishmentType As pt,TB_Punishment As p where p.PunishmentTypeCode=pt.PunishmentTypeCode) AS 'PunishmentType'
	,pt.PunishmentType As 'PunishmentType'
	,p.[PunishmentTypeCode]
	,Description
	,[IsDeleted]
	,[ModifiedDate]
	,[CreatedDate]
	,[CreatedBy]
	FROM [dbo].[TB_Punishment] p
	INNER JOIN TB_PunishmentType pt ON pt.PunishmentTypeCode=p.PunishmentTypeCode
	WHERE IsDeleted=0 AND EmployeeCode=@EmployeeCode
  END
ELSE
   BEGIN
   SELECT 
	 PunishmentPkid
	,[EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	--,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(30),[OrderNo],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'OrderNo'
	,OrderNo
	,CrimeYear
	--,(select pt.PunishmentType from TB_PunishmentType As pt,TB_Punishment As p where p.PunishmentTypeCode=pt.PunishmentTypeCode) AS 'PunishmentType'
	,pt.PunishmentType As 'PunishmentType'
	,p.[PunishmentTypeCode]
	,Description
	,[IsDeleted]
	,[ModifiedDate]
	,[CreatedDate]
	,[CreatedBy]
	FROM [dbo].[TB_Punishment] p
	INNER JOIN TB_PunishmentType pt ON pt.PunishmentTypeCode=p.PunishmentTypeCode
	WHERE IsDeleted=0
  END
  END


--EXEC Sp_Punishment_Select @EmployeeCode='00078'
GO
/****** Object:  StoredProcedure [dbo].[Sp_Punishment_SelectByEmployeeCode]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Punishment_SelectByEmployeeCode]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@PunishmentTypeCode nvarchar(500)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	BEGIN
	SELECT 
	 PunishmentPkid
	,p.[EmployeeCode]
	,p.[BranchCode]
	,p.[DepartmentCode]
	,p.[RankTypecode]
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
	(@EmployeeCode is null or p.EmployeeCode=@EmployeeCode) AND
	(@PunishmentTypeCode is null or p.PunishmentTypeCode=@PunishmentTypeCode) AND
	 p.IsDeleted=0 
  END
  END



GO
/****** Object:  StoredProcedure [dbo].[Sp_Punishment_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Punishment_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   --SELECT PunishmentPkid,
	   --EmployeeCode,
	   --case when OrderDate is null then '' else OrderDate end As 'OrderDate',
	   --OrderNo,
	   --CrimeYear,
	   --PunishmentTypeCode,
	   --Description,IsDeleted,
	   --IsRecordEdited,ModifiedDate,CreatedDate,
	   --CreatedBy
	   --FROM TB_Punishment 

	   select * from TB_Punishment
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Punishment_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Punishment_SelectList]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

   BEGIN
   SELECT 
	 PunishmentPkid
	,[EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(30),[OrderNo],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'OrderNo'
	,CrimeYear
	--,(select pt.PunishmentType from TB_PunishmentType As pt,TB_Punishment As p where p.PunishmentTypeCode=pt.PunishmentTypeCode) AS 'PunishmentType'
	,pt.PunishmentType As 'PunishmentType'
	,p.[PunishmentTypeCode]
	,Description
	,[IsDeleted]
	,[ModifiedDate]
	,[CreatedDate]
	,[CreatedBy]
	FROM [dbo].[TB_Punishment] p
	INNER JOIN TB_PunishmentType pt ON pt.PunishmentTypeCode=p.PunishmentTypeCode
	WHERE IsDeleted=0
  END
  END



GO
/****** Object:  StoredProcedure [dbo].[Sp_PunishmentInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PunishmentInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@PunishmentPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Punishment 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE PunishmentPkid = @PunishmentPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PunishmentType_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PunishmentType_Delete] 
-- Add the parameters for the stored procedure here
	@PunishmentTypeCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_PunishmentType
	SET
	Active = 0
	WHERE PunishmentTypeCode = @PunishmentTypeCode
	END

END

GO
/****** Object:  StoredProcedure [dbo].[Sp_PunishmentType_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PunishmentType_Save]
	-- Add the parameters for the stored procedure here
   @id int,
   @YearlyPunishmentTypeCode nvarchar(50),
   @PunishmentType nvarchar(500),
   @PunishmentCode1 nvarchar(50),
   @UploadForTownship nvarchar(50)
   
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @PunishmentCode nvarchar(10)
	SET @PunishmentCode =(SELECT MAX(PunishmentTypeCode) FROM TB_PunishmentType) + 1
	IF(@id=0)
   BEGIN
	INSERT INTO [TB_PunishmentType](YearlyPunishmentTypeCode,PunishmentTypeCode, PunishmentType,Active,IsRecordEdited,UploadForTownship)
	VALUES( @YearlyPunishmentTypeCode,@PunishmentCode, @PunishmentType,1,1,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [dbo].[TB_PunishmentType]
	SET PunishmentType=@PunishmentType,IsRecordEdited=1
	,YearlyPunishmentTypeCode=@YearlyPunishmentTypeCode
	where PunishmentTypeCode=@PunishmentCode1

END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PunishmentType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PunishmentType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT PunishmentTypePkid,PunishmentTypeCode,ypt.YearlyPunishmentTypeCode As 'YearlyPunishmentTypeCode',PunishmentType,YearlyPunishmentType
	 from TB_PunishmentType pt INNER JOIN TB_YearlyPunishmentType ypt ON pt.YearlyPunishmentTypeCode=ypt.YearlyPunishmentTypeCode
	where Active=1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PunishmentType_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PunishmentType_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_PunishmentType 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_PunishmentTypeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_PunishmentTypeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@PunishmentTypePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_PunishmentType 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE PunishmentTypePkid = @PunishmentTypePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RankType_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RankType_Delete]
	-- Add the parameters for the stored procedure here
	@RankTypeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	BEGIN
	DELETE FROM TB_RankType
	WHERE RankTypeCode = @RankTypeCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RankType_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_RankType_Save]
	-- Add the parameters for the stored procedure here
	 @RankTypePkid int
	,@EmployeeRankType nvarchar(10)
	,@RankTypeCode nvarchar(50)
	,@CurrentRank nvarchar(500)
	,@RankLevel int
	,@RankType nvarchar(50)
	,@UploadForTownship nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here
    IF (@RankTypePkid = 0)
    BEGIN
    
	if((select max(RankTypeCode) AS RankTypeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(RankTypeCode)+1))) + RTRIM(max(RankTypeCode)+1) AS RankTypeCode 
		from TB_RankType
		) as A) is null)
	begin
		set @RankTypeCode ='000001'
	end
	else
	begin
		set @RankTypeCode = (select max(RankTypeCode) AS RankTypeCode 
		from 
		(
		select REPLICATE('0',6-LEN(RTRIM(max(RankTypeCode)+1))) + RTRIM(max(RankTypeCode)+1) AS RankTypeCode 
		from TB_RankType
		) as A)
	end

	INSERT INTO TB_RankType(
	[EmployeeRankTypeCode],
	 [RankTypeCode]
	, [RankType]
	,[RankLevel]
	,[RankDescription]
	,[IsRecordEdited]
	,[UploadForTownship])
      VALUES
      (
	  @EmployeeRankType,
       @RankTypeCode
      , @CurrentRank
	  ,@RankLevel
	  ,@RankType
	  ,1
	  ,@UploadForTownship
	  )
	END
	ELSE
	BEGIN
	UPDATE TB_RankType
	SET
	EmployeeRankTypeCode=@EmployeeRankType,
	RankType=@CurrentRank
	,RankLevel=@RankLevel
	,RankDescription=@RankType
	,IsRecordEdited=1
	WHERE RankTypeCode = @RankTypeCode
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RankType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RankType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT Distinct
	rt.RankTypePkid, rt.RankTypeCode,ert.RankTypeCode as EmployeeRankTypeCode,ert.RankType as EmployeeRankType
	,rt.RankType as RankType
	,rt.RankLevel
	 , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([RankLevel],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'RankLevel_Myan'
	 ,REPLACE(REPLACE(RankDescription,'Upper',N'အရာထမ်း'),'Lower',N'အမှုထမ်း') As 'RankDescription' FROM TB_RankType rt,TB_EmployeeRankType ert
	 where rt.EmployeeRankTypeCode=ert.RankTypeCode
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RankType_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RankType_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_RankType 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RankTypeInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RankTypeInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@RankTypePkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_RankType 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE RankTypePkid = @RankTypePkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Region_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Region_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	REG.RegionPkid, REG.TownshipID, TSP.Township, REG.RegionCode, REG.Region 
	FROM TB_Region REG
	LEFT JOIN TB_Township TSP
	ON TSP.TownshipCode = REG.TownshipID
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RelationShip_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RelationShip_Delete]
	-- Add the parameters for the stored procedure here
	@RelationshipPkid nvarchar(50)=null
	,@CreatedBy int=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_Relationship
	SET
	IsDeleted=1 
	, ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
	WHERE RelationshipPkid = @RelationshipPkid
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RelationShip_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RelationShip_Save] 
     @id int
	,@pkid int=null
	,@EmployeeCode nvarchar(50)=null
   ,@RelationName nvarchar(50)=null
   ,@RelationDOB  datetime=null
   ,@RelationOccupation nvarchar(50)=null
   ,@RelationAddress nvarchar(200)=null
   ,@RelationFatherName nvarchar(50)=null
   ,@RelationMotherName nvarchar(50)=null
   ,@IsDeleted bit=null
   ,@CreatedBy int=null
   ,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	
    -- Insert statements for procedure here
	If @id=0 
	BEGIN
	INSERT INTO [dbo].[TB_Relationship]
	([EmployeeCode],
	 [BranchCode],
	 [DepartmentCode],
	 [RankTypeCode],
	 [RelationName],
	 [RelationDOB],
	 [RelationType],
	 [RelationOccupation],
	 [RelationAddress],
	 [RelationFatherName],
	 [RelationMotherName],
	 [IsDeleted],
	 [IsRecordEdited],
	 [CreatedDate],
	 [CreatedBy],
	 [UploadForTownship])
 VALUES
           (@EmployeeCode
		   ,''
		   ,''
           ,''
           ,@RelationName
           ,@RelationDOB
		   ,''
           ,@RelationOccupation
           ,@RelationAddress
		   ,@RelationFatherName
		   ,@RelationMotherName
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_Relationship]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      , [RelationName]=@RelationName
      ,[RelationDOB]=@RelationDOB
      ,[RelationType]=''
      ,[RelationOccupation]=@RelationOccupation
      , [RelationAddress]=@RelationAddress
      ,[RelationFatherName]=@RelationFatherName
      , [RelationMotherName]=@RelationMotherName
      ,[IsDeleted]=@IsDeleted
	  , [IsRecordEdited]=1
      ,[ModifiedDate] =CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE EmployeeCode=@EmployeeCode
 AND [IsDeleted]=@IsDeleted
AND RelationshipPkid=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RelationShip_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RelationShip_Select] 
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT RelationshipPkid
      ,[EmployeeCode]
	  ,BranchCode
	  ,DepartmentCode
	  ,RankTypeCode
	  ,RelationName
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[RelationDOB],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'RelationDOB'
	  ,RelationType
	  ,RelationOccupation
	  ,RelationAddress
	  ,RelationFatherName
	  ,RelationMotherName
	  ,IsDeleted
	  ,ModifiedDate
	  ,CreatedDate
	  ,CreatedBy
	 
  FROM [TB_Relationship] 
  WHERE IsDeleted=0 AND EmployeeCode=@EmployeeCode
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Relationship_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Relationship_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_Relationship 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_RelationshipInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_RelationshipInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@RelationshipPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Relationship 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE RelationshipPkid = @RelationshipPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SaveAccount]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SaveAccount]
	-- Add the parameters for the stored procedure here
	@UserPkid int
	,@Name nvarchar(50)
	, @UsernameOrEmail nvarchar(50)
	, @Password nvarchar(50)
	, @AccountType nvarchar(50)
	, @Department nvarchar(50)
	, @Office nvarchar(50)
	, @StateDivisionId nvarchar(50)
	, @TownshipId nvarchar(50)=null
	,@Status nvarchar(15)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	if(@TownshipId is null)
	begin
	set @TownshipId=''
	end

     IF (@UserPkid = 0)
    BEGIN
    
	INSERT INTO TB_UserLogin(
	[Name],
	UsernameOrEmail
	, Password
	, AccountType
	, Department
	, Office
	,StateDivisionId
	,TownshipId
	,[Status]
	)
      VALUES
      (
	  @Name
      ,@UsernameOrEmail
      , @Password
      , @AccountType
	  ,@Department
	  ,@Office
	  ,@StateDivisionId
	  ,@TownshipId
	  ,'Enable' 
    )

	END
	ELSE
	BEGIN
	UPDATE TB_UserLogin
	SET
	[Name]=@Name,
	UsernameOrEmail=@UsernameOrEmail,
	Password = @Password,
	AccountType=@AccountType,
	Department=@Department,
	Office=@Office,
	StateDivisionId=@StateDivisionId,
	TownshipId=@TownshipId,
	[Status]=@Status,
	 ModifiedDate = CURRENT_TIMESTAMP
	WHERE UserPkid = @UserPkid
	END
	
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SaveTransfer]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_SaveTransfer]
	-- Add the parameters for the stored procedure here
	@TransferPkid int,
	@EmployeeCode nvarchar(50),
	@RankTypeCode nvarchar(50)=null,
	@FromTownshipCode nvarchar(50),
	@ToTownshipCode nvarchar(50),
	@TransferDate datetime,
	@CreatedBy int,
	@IsDeleted bit,
	@Remark nvarchar(MAX)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	If @TransferPkid=0 
	BEGIN
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TB_Transfer]
	([EmployeeCode]
	,RankTypeCode
	,FromTownshipCode
	,ToTownshipCode
	,TransferDate
	,CreatedBy
	,CreatedDate
	,IsDeleted
	,Remark)
	VALUES
	(@EmployeeCode
	 ,@RankTypeCode
	 ,@FromTownshipCode
	 ,@ToTownshipCode
	 ,@TransferDate
	 ,@CreatedBy
	 ,GETDATE()
	 ,@IsDeleted
	 ,@Remark)

END
Else
begin
  Update TB_Transfer set
  EmployeeCode=@EmployeeCode,
  RankTypeCode=@RankTypeCode,
  FromTownshipCode=@FromTownshipCode,
  ToTownshipCode=@ToTownshipCode,
  TransferDate=@TransferDate,
  ModifiedBy=@CreatedBy,
  ModifiedDate =GETDATE (),
  IsDeleted=@IsDeleted,
  Remark=@Remark where TransferPkid=@TransferPkid
end

update TB_Employee set Occupation=@ToTownshipCode,TownshipCode=@ToTownshipCode where EmployeeCode=@EmployeeCode

END
GO
/****** Object:  StoredProcedure [dbo].[SP_SelectEmployeeRankType]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_SelectEmployeeRankType]
as
select RankTypeCode,RankType
from TB_EmployeeRankType
GO
/****** Object:  StoredProcedure [dbo].[Sp_SonAndDaughter_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SonAndDaughter_Delete]
	-- Add the parameters for the stored procedure here
	@pkid nvarchar(5)=null
	,@CreatedBy int=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_SonAndDaughter
	SET
	IsDeleted=1 
	, CreatedBy=@CreatedBy
WHERE SonAndDaughterPkid = @pkid
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SonAndDaughter_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SonAndDaughter_Save] 
	-- Add the parameters for the stored procedure here
	@id int
	,@pkid nvarchar(50)=null
	,@EmployeeCode nvarchar(50)=null
   ,@SonAndDaughterName nvarchar(50)=null
   ,@SonAndDaughterDOB  datetime=null
   ,@SonAndDaughterOccupation nvarchar(50)=null
   ,@SonAndDaughterAddress nvarchar(200)=null
   ,@IsDeleted bit=null
   ,@CreatedBy int=null
   ,@UploadForTownship nvarchar(50)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	If @id=0 
	BEGIN
	INSERT INTO [dbo].[TB_SonAndDaughter]
           ([EmployeeCode]
           ,[SonAndDaughterName]
		   ,[SonAndDaughterDOB]
		   ,[SonAndDaughterOccupation]
		   ,[SonAndDaughterAddress]
		   ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (@EmployeeCode
           ,@SonAndDaughterName
		   ,@SonAndDaughterDOB
		   ,@SonAndDaughterOccupation
		   ,@SonAndDaughterAddress
		   ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_SonAndDaughter]
   SET [EmployeeCode]=@EmployeeCode
      , [SonAndDaughterName]=@SonAndDaughterName
	  , [SonAndDaughterDOB]=@SonAndDaughterDOB
	  , [SonAndDaughterOccupation]=@SonAndDaughterOccupation
      , [SonAndDaughterAddress]=@SonAndDaughterAddress
      , [IsDeleted]=@IsDeleted
	  ,[IsRecordEdited]=1
      ,[CreatedBy] = @CreatedBy
 WHERE EmployeeCode=@EmployeeCode
 AND [SonAndDaughterPkid]=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SonAndDaughter_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SonAndDaughter_Select] 
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

   SELECT SonAndDaughterPkid
      ,[EmployeeCode]
	  ,[SonAndDaughterName]
	  , REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[SonAndDaughterDOB],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SonAndDaughterDOB'
	  ,SonAndDaughterOccupation
	  ,SonAndDaughterAddress
  FROM [TB_SonAndDaughter] 
  WHERE IsDeleted=0 AND EmployeeCode=@EmployeeCode
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SonAndDaughter_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SonAndDaughter_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_SonAndDaughter 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SonAndDaughterInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SonAndDaughterInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@SonAndDaughterPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_SonAndDaughter 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE SonAndDaughterPkid = @SonAndDaughterPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_StateDivision_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_StateDivision_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	*
	FROM TB_StateDivision
	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_StateDivisionName_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_StateDivisionName_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT StateDivisionPkid,StateDivisionCode,StateDivision from TB_StateDivision_SetUp
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Testing]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Testing] 
as select * from TB_NRC where NRCNumber=2
GO
/****** Object:  StoredProcedure [dbo].[Sp_Township_SelectByStateDivisionID]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Township_SelectByStateDivisionID]
	
	@StateDivisionID  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select TownshipCode,Township from TB_Township_SetUp where StateDivisionID=@StateDivisionID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Township_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Township_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_Township 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_TownshipDefault_Update]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TownshipDefault_Update]
	-- Add the parameters for the stored procedure here
	@TownshipCode NVARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	--BEGIN
	--UPDATE TB_Township
	--SET
	--Active = 0 
	--END

	BEGIN
	UPDATE TB_PlaceOfBirth
	SET
	Active = 0
	WHERE TownshipCode = @TownshipCode
	END

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_TownshipInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TownshipInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	  @TownshipPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_Township 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE TownshipPkid = @TownshipPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[SP_TownshipName_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_TownshipName_Select] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT        TSP.TownshipPkid, TSP.TownshipCode, TSP.Township, TSP.Active
FROM            dbo.TB_PlaceOfBirth AS TSP Where TSP.Active = 1
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_TrainingHistory_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TrainingHistory_Delete]
	-- Add the parameters for the stored procedure here
	@pkid nvarchar(5)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_TrainingHistory
	SET
	IsDeleted=1 
	,ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
WHERE TrainingHistoryPkid = @pkid
	
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_TrainingHistory_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TrainingHistory_Save]
	-- Add the parameters for the stored procedure here
	@id int=null
	,@pkid nvarchar(50)=null
	,@EmployeeCode nvarchar(50)=null
   ,@StartDate datetime=null
   ,@EndDate datetime=null
   ,@TrainingTitle nvarchar(200)=null
   ,@SchoolName nvarchar(200)=null
   ,@Location nvarchar(50)=null
   ,@Remark nvarchar(500)=null
   ,@IsDeleted bit=null
   ,@CreatedBy int=null
   ,@UploadForTownship nvarchar(50)=null
   ,@CertificatePic nvarchar(MAX)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	If @id=0 
	BEGIN
    -- Insert statements for procedure here
	INSERT INTO [dbo].[TB_TrainingHistory]
	([EmployeeCode]
	,[BranchCode]
	,[DepartmentCode]
	,[RankTypecode]
	,[StartDate]
	,[EndDate]
	,[TrainingTitle]
	,[SchoolName]
	,[Location]
	,[Remark]
	,[IsDeleted]
	,[IsRecordEdited]
	,[CreatedDate]
	,[CreatedBy]
	,[UploadForTownship]
	,[CertificatePic])
	VALUES
	(@EmployeeCode
	,''
	,''
	,''
	,@StartDate
	,@EndDate
	,@TrainingTitle
	,@SchoolName
	,@Location
	,@Remark
	,@IsDeleted
	,1
	,CURRENT_TIMESTAMP
	,@CreatedBy
	,@UploadForTownship
	,@CertificatePic)

END
	ELSE
	BEGIN
	UPDATE  [dbo].[TB_TrainingHistory]
   SET [EmployeeCode]=@EmployeeCode
      , [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
      ,[StartDate]=@StartDate
	  ,[EndDate]=@EndDate
	  ,[TrainingTitle]=@TrainingTitle
	  ,SchoolName = @SchoolName
	  ,[Location] = @Location
	  ,[Remark]=@Remark
      ,[IsDeleted]=@IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] =CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
	  ,[CertificatePic] =@CertificatePic
 WHERE EmployeeCode=@EmployeeCode
 AND [IsDeleted]=@IsDeleted
AND TrainingHistoryPkid=@pkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_TrainingHistory_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Zun Pwint Phyu
-- Modified date: 2023 Jan 01
-- Description:	I want to get Employee Name so TrainginHistory table join with Employee 
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TrainingHistory_Select]
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@SchoolName nvarchar(200)=null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT 
	TrainingHistoryPkid
	,TB_TrainingHistory.[EmployeeCode]
	,TB_TrainingHistory.[BranchCode]
	,TB_TrainingHistory.[DepartmentCode]
	,TB_TrainingHistory.[RankTypecode]
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[StartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[StartDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'StartDate'
	--,[StartDate]
	--,[EndDate]
	,case when REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[EndDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[EndDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end  AS 'EndDate'
	,[TrainingTitle]
	,[SchoolName]
	,[Location]
	,case when TB_TrainingHistory.[Remark] is null then '' else TB_TrainingHistory.[Remark] end As 'Remark'
	,TB_TrainingHistory.[IsDeleted]
	,TB_TrainingHistory.[ModifiedDate]
	,TB_TrainingHistory.[CreatedDate]
	,TB_TrainingHistory.[CreatedBy]
	,emp.[Name],div.StateDivision,td.TownName As Township,tw.Township As Department,rt.RankType
	FROM [dbo].[TB_TrainingHistory] join
	TB_Employee emp on emp.EmployeeCode=TB_TrainingHistory.EmployeeCode
	left join TB_CurrentJob_Township tw on emp.TownshipCode=tw.TownshipCode
	left join TB_StateDivision div on div.StateDivisionCode=tw.StateDivisionID
	left join TB_TownAndDivision td on td.TownCode=tw.UploadForTownship
	left join TB_JobHistory jh on jh.EmployeeCode=emp.EmployeeCode and jh.IsCurrent=1
	left join TB_RankType rt on rt.RankTypeCode=jh.RankType_Code
	WHERE
	 (@SchoolName is null or TB_TrainingHistory.SchoolName=@SchoolName) AND
	 (@EmployeeCode is null or TB_TrainingHistory.EmployeeCode=@EmployeeCode) AND
	 TB_TrainingHistory.IsDeleted=0  
END

--exec Sp_TrainingHistory_Select @EmployeeCode='00019'
GO
/****** Object:  StoredProcedure [dbo].[Sp_TrainingHistory_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TrainingHistory_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_TrainingHistory 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_TrainingHistoryInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_TrainingHistoryInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@TrainingHistoryPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_TrainingHistory 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE TrainingHistoryPkid = @TrainingHistoryPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_User_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_User_Delete]
	-- Add the parameters for the stored procedure here
	@UserPkid int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
    
	BEGIN
	UPDATE TB_User
	SET
	ModifiedDate=CURRENT_TIMESTAMP
	,IsActive = 0
	WHERE UserPkid = @UserPkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_User_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_User_Save]
	-- Add the parameters for the stored procedure here
	@UserPkid int
	, @Username nvarchar(50)
	, @Password nvarchar(50)
	, @DepartmentCode nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
    -- Insert statements for procedure here
    IF (@UserPkid = 0)
    BEGIN
    
	INSERT INTO TB_User(
	[Username]
	, [Password]
	, [DepartmentCode]
	, [CreatedDate]
	, [IsActive])
      VALUES
      (
      @Username
      , @Password
      , @DepartmentCode 
      , CURRENT_TIMESTAMP
      , 1)

	END
	ELSE
	BEGIN
	UPDATE TB_User
	SET
	Password = @Password, ModifiedDate = CURRENT_TIMESTAMP
	WHERE UserPkid = @UserPkid
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_User_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_User_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT
	US.UserPkid, US.Username, US.Password, DEPT.DepartmentCode, DEPT.Department, US.LoginTime, US.LogoutTime, US.ModifiedDate, CONVERT(nvarchar(10), CONVERT(date, US.CreatedDate, 103), 120) AS CreatedDate, US.IsActive  
	FROM TB_User US
	LEFT JOIN TB_Department DEPT
	ON DEPT.DepartmentCode = US.DepartmentCode 
	WHERE US.IsActive=1
	
END

--0+rqOW+8uaP8XmSipHMr9I7Z1w/eWTexnO7sIgg8E84=
GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyBonus_Delete]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyBonus_Delete]
	-- Add the parameters for the stored procedure here
	@pkid nvarchar(5)
	,@CreatedBy int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	

    -- Insert statements for procedure here

	UPDATE TB_YearlyBonus
	SET
	IsDeleted=1 
	,ModifiedDate=CURRENT_TIMESTAMP
	, CreatedBy=@CreatedBy
WHERE YearlyBonusPkid = @pkid
	
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyBonus_Save]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyBonus_Save]
	-- Add the parameters for the stored procedure here
	 @id int
	,@pkid nvarchar(50)
	,@EmployeeCode nvarchar(50)
	,@ApprovedDate datetime
	,@ApprovedNo nvarchar(50)
	,@YearlyBonusCount nvarchar(50)
	,@YearlyBonusSalary nvarchar(50)
	,@YearlyBonusDate datetime
	,@IsDeleted bit
	,@CreatedBy int
	,@UploadForTownship nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
		If @id=0 
	BEGIN
	INSERT INTO [dbo].[TB_YearlyBonus]
           ([BranchCode]
           ,[DepartmentCode]
		   ,[RankTypeCode]
		   ,[EmployeeCode]
           ,[ApprovedDate]
           ,[ApprovedNo]
           ,[YearlyBonusCount]
           ,[YearlyBonusSalary]
           ,[YearlyBonusDate]
		   ,[IsDeleted]
		   ,[IsRecordEdited]
           ,[CreatedDate]
           ,[CreatedBy]
		   ,[UploadForTownship])
     VALUES
           (''
           ,''
           ,''
		   ,@EmployeeCode
		   ,@ApprovedDate
           ,@ApprovedNo
           ,@YearlyBonusCount
           ,@YearlyBonusSalary
		   ,@YearlyBonusDate
           ,@IsDeleted
		   ,1
           ,CURRENT_TIMESTAMP
           ,@CreatedBy
		   ,@UploadForTownship)
	END
	ELSE
	BEGIN
	UPDATE [TB_YearlyBonus]
   SET  [BranchCode]=''
	  , [DepartmentCode]=''
	  , [RankTypeCode]=''
	  ,[EmployeeCode]=@EmployeeCode
      ,[ApprovedDate] = @ApprovedDate
      ,[ApprovedNo] = @ApprovedNo
      ,[YearlyBonusCount] = @YearlyBonusCount
      ,[YearlyBonusSalary] = @YearlyBonusSalary
	  ,[YearlyBonusDate]=@YearlyBonusDate
      ,[IsDeleted] = @IsDeleted
	  ,[IsRecordEdited]=1
      ,[ModifiedDate] = CURRENT_TIMESTAMP
      ,[CreatedBy] = @CreatedBy
 WHERE YearlyBonusPkid=@pkid
	END
END

GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyBonus_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyBonus_Select] 
	-- Add the parameters for the stored procedure here
	@EmployeeCode nvarchar(50)=null,
	@ApprovedDate datetime=null
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
  (@EmployeeCode is null or  TB_YearlyBonus.EmployeeCode=@EmployeeCode) AND
  (@ApprovedDate is null or Convert(date,TB_YearlyBonus.ApprovedDate)=Convert(date,@ApprovedDate))AND
  
   TB_YearlyBonus.IsDeleted=0 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyBonus_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyBonus_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_YearlyBonus 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyBonusInformation_UpdateUploadedRecord]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyBonusInformation_UpdateUploadedRecord]
	-- Add the parameters for the stored procedure here
	@YearlyBonusPkid int
	, @IsRecordEdited bit

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE TB_YearlyBonus 
	SET
		IsRecordEdited = @IsRecordEdited
		WHERE YearlyBonusPkid = @YearlyBonusPkid
	 
	 END
GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyPunishment_SelectList]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE  PROCEDURE [dbo].[Sp_YearlyPunishment_SelectList]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	SELECT 
	--DISTINCT CrimeYear,
	emp.EmployeePkid,
	REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([SerialNumber],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'SerialNumber'
	,sd.StateDivision As 'StateDivision',
	--,tw.Township As 'Township'

	emp.Name As 'Name'
	,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE([CrimeYear],'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'CrimeYear',
	ypt.YearlyPunishmentType as 'YearlyPunishmentType'
	,case when ( select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[OrderDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) is null then  '' else
	 ( select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[OrderDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')) end AS 'OrderDate'
	   --,
	   --,case when p.OrderDate is null then '' else CONVERT(VARCHAR(12),p.OrderDate,103) end AS 'OrderDate'

	 ,case when(select rt.RankType from TB_JobHistory jp 
       left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0) is null then '' else (select rt.RankType from TB_JobHistory jp 
       left JOIN TB_RankType rt ON rt.RankTypeCode=jp.RankType_Code where jp.IsDeleted=0 AND jp.IsCurrent=1 and jp.EmployeeCode=emp.SerialNumber and emp.IsDeleted=0 ) end As 'CurrentRank'
	   ,case when (SELECT t.Township FROM TB_Employee AS e, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode) is null then '' else (SELECT t.Township FROM TB_Employee AS e, TB_CurrentJob_Township AS t WHERE e.TownshipCode=t.TownshipCode AND e.EmployeeCode=emp.EmployeeCode) end AS 'JobAddress'
	    ,REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[JoinDate],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') AS 'JoinDate',
	   case when DateOfBirth is null then '' else REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR(10),[DateOfBirth],103),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉') end AS 'DateOfBirth'
	   ,emp.NRCNumber AS 'NRCNumber'
	   --, '' AS TextWarning, '' AS StopYearlyBonus, '' AS StableCurrentRank, 
    --                     '' AS DecreaseSalary, '' AS DecreaseCurrentRank, '' AS PaymentForLosing, '' AS TemporaryStopFromDuty, '' AS Remove, '' AS Dismiss
	--,case when(select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p  INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode   
	--where ypt.YearlyPunishmentTypeCode='100' and  p.IsDeleted=0 and pt.Active=1 and p.EmployeeCode=emp.SerialNumber Group By ypt.YearlyPunishmentTypeCode) is null then '' else  (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode
	--where ypt.YearlyPunishmentTypeCode='100' and  p.IsDeleted=0 and pt.Active=1 and p.EmployeeCode=emp.SerialNumber Group By ypt.YearlyPunishmentTypeCode) End As 'TextWarning'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  
	--where ypt.YearlyPunishmentTypeCode='101' and  p.IsDeleted=0 and pt.Active=1 and p.EmployeeCode=emp.SerialNumber Group By ypt.YearlyPunishmentTypeCode) is null then '' else  (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  
	--where ypt.YearlyPunishmentTypeCode='101' and  p.IsDeleted=0 and pt.Active=1 and p.EmployeeCode=emp.SerialNumber Group By ypt.YearlyPunishmentTypeCode) end  As 'StopYearlyBonus'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  
	--where ypt.YearlyPunishmentTypeCode='102' and  p.IsDeleted=0 and pt.Active=1 and p.EmployeeCode=emp.SerialNumber Group By ypt.YearlyPunishmentTypeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(*),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p  INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode 
	--where ypt.YearlyPunishmentTypeCode='102' and  p.IsDeleted=0 and pt.Active=1 and p.EmployeeCode=emp.SerialNumber Group By ypt.YearlyPunishmentTypeCode) end As 'StableCurrentRank'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p  INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='103' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) is null then '' else  (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode   INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='103' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) end As 'DecreaseSalary'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p   INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='104' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='104' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) end As 'DecreaseCurrentRank'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p   INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='105' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='105' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) end As 'PaymentForLosing'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='106' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p   INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='106' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) end As 'TemporaryStopFromDuty'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='107' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode   INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='107' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) end As 'Remove'

	--,case when (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p  INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode  INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='108' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) is null then '' else (select REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Count(pt.PunishmentType),'0',N'၀'),'1',N'၁'),'2',N'၂'),'3',N'၃'),'4',N'၄'),'5',N'၅'),'6',N'၆'),'7',N'၇'),'8',N'၈'),'9',N'၉')  from TB_Punishment p INNER JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode   INNER JOIN TB_Employee emp ON emp.SerialNumber=p.EmployeeCode
	--where ypt.YearlyPunishmentTypeCode='108' and  p.IsDeleted=0 and pt.Active=1 and emp.IsDeleted=0 and p.EmployeeCode=emp.SerialNumber group by ypt.YearlyPunishmentTypeCode) end  As 'Dismiss'

	FROM [TB_Employee]  emp left JOIN [TB_CurrentJob_Township] tw  ON emp.TownshipCode = tw.TownshipCode INNER JOIN [TB_StateDivision_SetUp] As sd ON  sd.StateDivisionCode=tw.StateDivisionID left JOIN TB_Punishment p ON p.EmployeeCode=emp.SerialNumber JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode left JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode 
	WHERE emp.IsDeleted=0 AND (IsActive='Active' or IsActive=N'ပြောင်းရွှေ့ရောက်ရှိ') AND p.IsDeleted=0 
	 
	 --Group By emp.SerialNumber
	                                                                                                  
END




GO
/****** Object:  StoredProcedure [dbo].[SP_YearlyPunishment_Testing]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_YearlyPunishment_Testing] 
as 
select YearlyPunishmentType,p.EmployeeCode ,p.CrimeYear,emp.Name
	FROM [TB_Employee]  emp INNER JOIN [TB_Township]   tw  ON emp.TownshipCode = tw.TownshipCode INNER JOIN [TB_StateDivision] As sd ON  sd.StateDivisionCode=tw.StateDivisionID INNER JOIN TB_Punishment p ON p.EmployeeCode=emp.SerialNumber JOIN TB_PunishmentType pt ON p.PunishmentTypeCode=pt.PunishmentTypeCode INNER JOIN TB_YearlyPunishmentType ypt ON ypt.YearlyPunishmentTypeCode=pt.YearlyPunishmentTypeCode 
	WHERE emp.IsDeleted=0 AND IsActive='Active' AND p.IsDeleted=0 
GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyPunishmentType_Select]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyPunishmentType_Select]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT YearlyPunishmentTypeCode,YearlyPunishmentType from TB_YearlyPunishmentType
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_YearlyPunishmentType_SelectForOnlineCheck]    Script Date: 28/02/2023 11:13:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_YearlyPunishmentType_SelectForOnlineCheck]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	   SELECT * FROM TB_YearlyPunishmentType 
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Employee"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Age60Full'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Age60Full'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Employee"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AwardList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_AwardList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_CurrentJob_Township"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CurrentJobTownshipInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_CurrentJobTownshipInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_DisposalType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 224
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_DisposalType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_DisposalType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_EducationType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EducationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EducationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EmployeeDecreaseList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_EmployeeDecreaseList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_IntKnowledge"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_IntKnowledgeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_IntKnowledgeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[15] 4[5] 2[24] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -384
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Employee"
            Begin Extent = 
               Top = 390
               Left = 38
               Bottom = 520
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 15
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_JobExperienceList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_JobExperienceList'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_JobHistory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_JobPosting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_JobPosting'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_LeaveEntitlement"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_LeaveEntitlement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_LeaveEntitlement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_LeaveType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 211
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_LeaveType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_LeaveType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_NRCName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_NRCName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Pension"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Pension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_Pension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_PensionType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_PlaceOfBirth"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PlaceOfBirthInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_PlaceOfBirthInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Employee"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ProfileSelect'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_ProfileSelect'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_RankType_Select'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_RankType_Select'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_StateDivision_SetUp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_StateDivisionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_StateDivisionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_YearlyBonus"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_YearlyBonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_YearlyBonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 13
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_YearlyPunishment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vw_YearlyPunishment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Award"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Award"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAwardInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAwardInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_AwardType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAwardType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwAwardType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Branch"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBranch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwBranch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_CurrentJob_Township"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCurrentJobTownship'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwCurrentJobTownship'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDeadEmployee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDeadEmployee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Department"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDepartment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDepartment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Disposal"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDisposalInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDisposalInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_DisposalType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDisposalTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwDisposalTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_EducationType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEducationTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEducationTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Employee"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 26
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEmployee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEmployee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Employee"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEmployeeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwEmployeeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[6] 4[5] 2[34] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "emp"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "jh"
            Begin Extent = 
               Top = 6
               Left = 272
               Bottom = 136
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 6
               Left = 506
               Bottom = 136
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "t"
            Begin Extent = 
               Top = 6
               Left = 765
               Bottom = 136
               Right = 987
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 18
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[9] 2[24] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "jh"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 234
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "emp"
            Begin Extent = 
               Top = 6
               Left = 272
               Bottom = 136
               Right = 468
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "rt"
            Begin Extent = 
               Top = 6
               Left = 506
               Bottom = 136
               Right = 727
            End
            DisplayFlags = 280
            TopColumn = 4
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1905
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobExperienceListSelectByCurrentRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobExperienceListSelectByCurrentRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_JobHistory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobHistoryInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwJobHistoryInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_LeaveEntitlement"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwLeaveEntitlement_Select_List'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwLeaveEntitlement_Select_List'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_LeaveEntitlement"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwLeaveEntitlementOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwLeaveEntitlementOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Pension"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPensionInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPensionInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Pension"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPensionOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPensionOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_PensionType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPensionTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPensionTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_PlaceOfBirth"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPlaceOfBirth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPlaceOfBirth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Punishment"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Punishment"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 245
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishmentInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishmentInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishmentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishmentType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_PunishmentType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishmentTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwPunishmentTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "rt"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ert"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 119
               Right = 416
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwRankType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwRankType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_RankType"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwRankTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwRankTypeInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_Relationship"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 241
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwRelationInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwRelationInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_SonAndDaughter"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 280
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwSonAndDaughterInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwSonAndDaughterInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_StateDivision"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 119
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwStateDivision'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwStateDivision'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_TrainingHistory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTrainingHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTrainingHistory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_TrainingHistory"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTrainingHistoryInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwTrainingHistoryInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "US"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 218
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DEPT"
            Begin Extent = 
               Top = 6
               Left = 256
               Bottom = 119
               Right = 436
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TB_YearlyBonus"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 225
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwYearlyBonusInformationOnlineCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vwYearlyBonusInformationOnlineCheck'
GO
