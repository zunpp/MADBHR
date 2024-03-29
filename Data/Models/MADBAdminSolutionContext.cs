﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace MADBHR_Data.Models
{
    public partial class MADBAdminSolutionContext : DbContext
    {
        public MADBAdminSolutionContext()
        {
        }

        public MADBAdminSolutionContext(DbContextOptions<MADBAdminSolutionContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Nlogs> Nlogs { get; set; }
        public virtual DbSet<TbAccountDetail> TbAccountDetail { get; set; }
        public virtual DbSet<TbAccountDetailTransaction> TbAccountDetailTransaction { get; set; }
        public virtual DbSet<TbAccountSummary> TbAccountSummary { get; set; }
        public virtual DbSet<TbAge60Full> TbAge60Full { get; set; }
        public virtual DbSet<TbAge60Full1> TbAge60Full1 { get; set; }
        public virtual DbSet<TbAward> TbAward { get; set; }
        public virtual DbSet<TbAwardType> TbAwardType { get; set; }
        public virtual DbSet<TbBranch> TbBranch { get; set; }
        public virtual DbSet<TbCurrentJobTownship> TbCurrentJobTownship { get; set; }
        public virtual DbSet<TbDateSettingForRsdinterest> TbDateSettingForRsdinterest { get; set; }
        public virtual DbSet<TbDepartment> TbDepartment { get; set; }
        public virtual DbSet<TbDisposal> TbDisposal { get; set; }
        public virtual DbSet<TbDisposalType> TbDisposalType { get; set; }
        public virtual DbSet<TbEducation> TbEducation { get; set; }
        public virtual DbSet<TbEducationType> TbEducationType { get; set; }
        public virtual DbSet<TbEmployee> TbEmployee { get; set; }
        public virtual DbSet<TbEmployeeRankType> TbEmployeeRankType { get; set; }
        public virtual DbSet<TbExamResult> TbExamResult { get; set; }
        public virtual DbSet<TbFine> TbFine { get; set; }
        public virtual DbSet<TbForm7> TbForm7 { get; set; }
        public virtual DbSet<TbHonour> TbHonour { get; set; }
        public virtual DbSet<TbHonourType> TbHonourType { get; set; }
        public virtual DbSet<TbIntKnowledge> TbIntKnowledge { get; set; }
        public virtual DbSet<TbInterest> TbInterest { get; set; }
        public virtual DbSet<TbItemAndLoanPrice> TbItemAndLoanPrice { get; set; }
        public virtual DbSet<TbJicaloanMaster> TbJicaloanMaster { get; set; }
        public virtual DbSet<TbJicaloanReturnTransactionDetail> TbJicaloanReturnTransactionDetail { get; set; }
        public virtual DbSet<TbJobExperience> TbJobExperience { get; set; }
        public virtual DbSet<TbJobHistory> TbJobHistory { get; set; }
        public virtual DbSet<TbJobPosting> TbJobPosting { get; set; }
        public virtual DbSet<TbJoinAccount> TbJoinAccount { get; set; }
        public virtual DbSet<TbLeaveApplication> TbLeaveApplication { get; set; }
        public virtual DbSet<TbLeaveEntitlement> TbLeaveEntitlement { get; set; }
        public virtual DbSet<TbLeaveType> TbLeaveType { get; set; }
        public virtual DbSet<TbLoanGroup> TbLoanGroup { get; set; }
        public virtual DbSet<TbLoanInterestRate> TbLoanInterestRate { get; set; }
        public virtual DbSet<TbLoanMaster> TbLoanMaster { get; set; }
        public virtual DbSet<TbLoanProposal> TbLoanProposal { get; set; }
        public virtual DbSet<TbLoanReturnTransactionDetail> TbLoanReturnTransactionDetail { get; set; }
        public virtual DbSet<TbLoanTransaction> TbLoanTransaction { get; set; }
        public virtual DbSet<TbMachine> TbMachine { get; set; }
        public virtual DbSet<TbMeb2sloanMaster> TbMeb2sloanMaster { get; set; }
        public virtual DbSet<TbMeb2sloanReturnTransactionDetail> TbMeb2sloanReturnTransactionDetail { get; set; }
        public virtual DbSet<TbMeb2spersonalInformation> TbMeb2spersonalInformation { get; set; }
        public virtual DbSet<TbMessageBox> TbMessageBox { get; set; }
        public virtual DbSet<TbMessageContent> TbMessageContent { get; set; }
        public virtual DbSet<TbMoeInterestTransaction> TbMoeInterestTransaction { get; set; }
        public virtual DbSet<TbMoeKyoInterestTransaction> TbMoeKyoInterestTransaction { get; set; }
        public virtual DbSet<TbNrc> TbNrc { get; set; }
        public virtual DbSet<TbPension> TbPension { get; set; }
        public virtual DbSet<TbPensionType> TbPensionType { get; set; }
        public virtual DbSet<TbPersonalInformation> TbPersonalInformation { get; set; }
        public virtual DbSet<TbPlaceOfBirth> TbPlaceOfBirth { get; set; }
        public virtual DbSet<TbPunishment> TbPunishment { get; set; }
        public virtual DbSet<TbPunishmentType> TbPunishmentType { get; set; }
        public virtual DbSet<TbRank> TbRank { get; set; }
        public virtual DbSet<TbRankType> TbRankType { get; set; }
        public virtual DbSet<TbRegion> TbRegion { get; set; }
        public virtual DbSet<TbRegionSetUp> TbRegionSetUp { get; set; }
        public virtual DbSet<TbRelationship> TbRelationship { get; set; }
        public virtual DbSet<TbSalary> TbSalary { get; set; }
        public virtual DbSet<TbSaungInterestTransaction> TbSaungInterestTransaction { get; set; }
        public virtual DbSet<TbSavingMaster> TbSavingMaster { get; set; }
        public virtual DbSet<TbSkills> TbSkills { get; set; }
        public virtual DbSet<TbSonAndDaughter> TbSonAndDaughter { get; set; }
        public virtual DbSet<TbStaff> TbStaff { get; set; }
        public virtual DbSet<TbStateDivision> TbStateDivision { get; set; }
        public virtual DbSet<TbStateDivisionSetUp> TbStateDivisionSetUp { get; set; }
        public virtual DbSet<TbStatedivi> TbStatedivi { get; set; }
        public virtual DbSet<TbSubjects> TbSubjects { get; set; }
        public virtual DbSet<TbTownAndDivision> TbTownAndDivision { get; set; }
        public virtual DbSet<TbTownship> TbTownship { get; set; }
        public virtual DbSet<TbTownshipSetup> TbTownshipSetup { get; set; }
        public virtual DbSet<TbTrainingHistory> TbTrainingHistory { get; set; }
        public virtual DbSet<TbTrainingType> TbTrainingType { get; set; }
        public virtual DbSet<TbTransaction> TbTransaction { get; set; }
        public virtual DbSet<TbTransfer> TbTransfer { get; set; }
        public virtual DbSet<TbUser> TbUser { get; set; }
        public virtual DbSet<TbUserLogin> TbUserLogin { get; set; }
        public virtual DbSet<TbVillage> TbVillage { get; set; }
        public virtual DbSet<TbYearlyBonus> TbYearlyBonus { get; set; }
        public virtual DbSet<TbYearlyPunishmentType> TbYearlyPunishmentType { get; set; }
        public virtual DbSet<VwAccountDetailTransaction> VwAccountDetailTransaction { get; set; }
        public virtual DbSet<VwAccountDetailTransactionForBalancingChecking> VwAccountDetailTransactionForBalancingChecking { get; set; }
        public virtual DbSet<VwAccountDetailTransactionOnlineCheck> VwAccountDetailTransactionOnlineCheck { get; set; }
        public virtual DbSet<VwAccountDetailTransactionPassBookSelectByAccNo> VwAccountDetailTransactionPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwAccountSummaryOnlineCheck> VwAccountSummaryOnlineCheck { get; set; }
        public virtual DbSet<VwAge60Full> VwAge60Full { get; set; }
        public virtual DbSet<VwAward> VwAward { get; set; }
        public virtual DbSet<VwAwardInformationOnlineCheck> VwAwardInformationOnlineCheck { get; set; }
        public virtual DbSet<VwAwardList> VwAwardList { get; set; }
        public virtual DbSet<VwAwardType> VwAwardType { get; set; }
        public virtual DbSet<VwBranch> VwBranch { get; set; }
        public virtual DbSet<VwCurrentJobTownship> VwCurrentJobTownship { get; set; }
        public virtual DbSet<VwCurrentJobTownshipInformationOnlineCheck> VwCurrentJobTownshipInformationOnlineCheck { get; set; }
        public virtual DbSet<VwCustomerAccountDetail> VwCustomerAccountDetail { get; set; }
        public virtual DbSet<VwCustomerForm7Detail> VwCustomerForm7Detail { get; set; }
        public virtual DbSet<VwDateSettingForRsdinterest> VwDateSettingForRsdinterest { get; set; }
        public virtual DbSet<VwDeadEmployee> VwDeadEmployee { get; set; }
        public virtual DbSet<VwDebtPeopleTransactionDetail> VwDebtPeopleTransactionDetail { get; set; }
        public virtual DbSet<VwDepartment> VwDepartment { get; set; }
        public virtual DbSet<VwDisposalInformationOnlineCheck> VwDisposalInformationOnlineCheck { get; set; }
        public virtual DbSet<VwDisposalType> VwDisposalType { get; set; }
        public virtual DbSet<VwDisposalTypeInformationOnlineCheck> VwDisposalTypeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwEducationType> VwEducationType { get; set; }
        public virtual DbSet<VwEducationTypeInformationOnlineCheck> VwEducationTypeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwEmployee> VwEmployee { get; set; }
        public virtual DbSet<VwEmployeeDecreaseList> VwEmployeeDecreaseList { get; set; }
        public virtual DbSet<VwEmployeeInformationOnlineCheck> VwEmployeeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwFine> VwFine { get; set; }
        public virtual DbSet<VwForm7OnlineCheck> VwForm7OnlineCheck { get; set; }
        public virtual DbSet<VwGetRegionSelectList> VwGetRegionSelectList { get; set; }
        public virtual DbSet<VwIntKnowledgeInformationOnlineCheck> VwIntKnowledgeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwInterest> VwInterest { get; set; }
        public virtual DbSet<VwJicacustomerAccountDetail> VwJicacustomerAccountDetail { get; set; }
        public virtual DbSet<VwJicadebtPeopleTransactionDetail> VwJicadebtPeopleTransactionDetail { get; set; }
        public virtual DbSet<VwJicaloanMaster> VwJicaloanMaster { get; set; }
        public virtual DbSet<VwJicaloanMasterForBalancingChecking> VwJicaloanMasterForBalancingChecking { get; set; }
        public virtual DbSet<VwJicaloanMasterOnlineCheck> VwJicaloanMasterOnlineCheck { get; set; }
        public virtual DbSet<VwJicaloanMasterPassBookSelectByAccNo> VwJicaloanMasterPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwJicaloanReturnTransPeopleGroupByRegion> VwJicaloanReturnTransPeopleGroupByRegion { get; set; }
        public virtual DbSet<VwJicaloanReturnTransactionDetail> VwJicaloanReturnTransactionDetail { get; set; }
        public virtual DbSet<VwJicaloanReturnTransactionDetailOnlineCheck> VwJicaloanReturnTransactionDetailOnlineCheck { get; set; }
        public virtual DbSet<VwJicaloanReturnTransactionDetailPassBookSelectByAccNo> VwJicaloanReturnTransactionDetailPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwJicaloanReturnTransactionGroupByRegion> VwJicaloanReturnTransactionGroupByRegion { get; set; }
        public virtual DbSet<VwJicans7> VwJicans7 { get; set; }
        public virtual DbSet<VwJobExperience> VwJobExperience { get; set; }
        public virtual DbSet<VwJobExperienceList> VwJobExperienceList { get; set; }
        public virtual DbSet<VwJobExperienceListSelectByCurrentRank> VwJobExperienceListSelectByCurrentRank { get; set; }
        public virtual DbSet<VwJobHistoryInformationOnlineCheck> VwJobHistoryInformationOnlineCheck { get; set; }
        public virtual DbSet<VwJobPosting> VwJobPosting { get; set; }
        public virtual DbSet<VwLeaveEntitlement> VwLeaveEntitlement { get; set; }
        public virtual DbSet<VwLeaveEntitlementOnlineCheck> VwLeaveEntitlementOnlineCheck { get; set; }
        public virtual DbSet<VwLeaveEntitlementSelectList> VwLeaveEntitlementSelectList { get; set; }
        public virtual DbSet<VwLeaveType> VwLeaveType { get; set; }
        public virtual DbSet<VwLoanInterestDetailTransaction> VwLoanInterestDetailTransaction { get; set; }
        public virtual DbSet<VwLoanMaster> VwLoanMaster { get; set; }
        public virtual DbSet<VwLoanMasterOnlineCheck> VwLoanMasterOnlineCheck { get; set; }
        public virtual DbSet<VwLoanMasterPassBookSelectByAccNo> VwLoanMasterPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwLoanProposal> VwLoanProposal { get; set; }
        public virtual DbSet<VwLoanReturnDateList> VwLoanReturnDateList { get; set; }
        public virtual DbSet<VwLoanReturnTransPeopleGroupByRegion> VwLoanReturnTransPeopleGroupByRegion { get; set; }
        public virtual DbSet<VwLoanReturnTransactionDetail> VwLoanReturnTransactionDetail { get; set; }
        public virtual DbSet<VwLoanReturnTransactionDetailOnlineCheck> VwLoanReturnTransactionDetailOnlineCheck { get; set; }
        public virtual DbSet<VwLoanReturnTransactionDetailPassBookSelectByAccNo> VwLoanReturnTransactionDetailPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwLoanReturnTransactionGroupByRegion> VwLoanReturnTransactionGroupByRegion { get; set; }
        public virtual DbSet<VwMachine> VwMachine { get; set; }
        public virtual DbSet<VwMeb2sloanMaster> VwMeb2sloanMaster { get; set; }
        public virtual DbSet<VwMeb2sloanMasterForBalancingChecking> VwMeb2sloanMasterForBalancingChecking { get; set; }
        public virtual DbSet<VwMeb2sloanMasterForBalancingCheckingWithSaving> VwMeb2sloanMasterForBalancingCheckingWithSaving { get; set; }
        public virtual DbSet<VwMeb2sloanMasterOnlineCheck> VwMeb2sloanMasterOnlineCheck { get; set; }
        public virtual DbSet<VwMeb2sloanMasterPassBookSelectByAccNo> VwMeb2sloanMasterPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwMeb2sloanMasterWithSaving> VwMeb2sloanMasterWithSaving { get; set; }
        public virtual DbSet<VwMeb2sloanReturnTransactionDetail> VwMeb2sloanReturnTransactionDetail { get; set; }
        public virtual DbSet<VwMeb2sloanReturnTransactionDetailOnlineCheck> VwMeb2sloanReturnTransactionDetailOnlineCheck { get; set; }
        public virtual DbSet<VwMeb2sloanReturnTransactionDetailPassBookSelectByAccNo> VwMeb2sloanReturnTransactionDetailPassBookSelectByAccNo { get; set; }
        public virtual DbSet<VwMeb2sloanReturnTransactionDetailWithSaving> VwMeb2sloanReturnTransactionDetailWithSaving { get; set; }
        public virtual DbSet<VwMeb2smemberDetail> VwMeb2smemberDetail { get; set; }
        public virtual DbSet<VwMeb2spersonalInformationOnlineCheck> VwMeb2spersonalInformationOnlineCheck { get; set; }
        public virtual DbSet<VwMebtslns10> VwMebtslns10 { get; set; }
        public virtual DbSet<VwMebtslns10withSaving> VwMebtslns10withSaving { get; set; }
        public virtual DbSet<VwNrcname> VwNrcname { get; set; }
        public virtual DbSet<VwPassBookFrontSelectByAccNo> VwPassBookFrontSelectByAccNo { get; set; }
        public virtual DbSet<VwPension> VwPension { get; set; }
        public virtual DbSet<VwPensionInformationOnlineCheck> VwPensionInformationOnlineCheck { get; set; }
        public virtual DbSet<VwPensionOnlineCheck> VwPensionOnlineCheck { get; set; }
        public virtual DbSet<VwPensionType> VwPensionType { get; set; }
        public virtual DbSet<VwPensionTypeInformationOnlineCheck> VwPensionTypeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwPersonalInformationOnlineCheck> VwPersonalInformationOnlineCheck { get; set; }
        public virtual DbSet<VwPlaceOfBirth> VwPlaceOfBirth { get; set; }
        public virtual DbSet<VwPlaceOfBirthInformationOnlineCheck> VwPlaceOfBirthInformationOnlineCheck { get; set; }
        public virtual DbSet<VwProfileSelect> VwProfileSelect { get; set; }
        public virtual DbSet<VwPunishment> VwPunishment { get; set; }
        public virtual DbSet<VwPunishmentInformationOnlineCheck> VwPunishmentInformationOnlineCheck { get; set; }
        public virtual DbSet<VwPunishmentType> VwPunishmentType { get; set; }
        public virtual DbSet<VwPunishmentTypeInformationOnlineCheck> VwPunishmentTypeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwRankType> VwRankType { get; set; }
        public virtual DbSet<VwRankTypeInformationOnlineCheck> VwRankTypeInformationOnlineCheck { get; set; }
        public virtual DbSet<VwRankTypeSelect> VwRankTypeSelect { get; set; }
        public virtual DbSet<VwRegion> VwRegion { get; set; }
        public virtual DbSet<VwRelationInformationOnlineCheck> VwRelationInformationOnlineCheck { get; set; }
        public virtual DbSet<VwSonAndDaughterInformationOnlineCheck> VwSonAndDaughterInformationOnlineCheck { get; set; }
        public virtual DbSet<VwStateDivision> VwStateDivision { get; set; }
        public virtual DbSet<VwStateDivisionName> VwStateDivisionName { get; set; }
        public virtual DbSet<VwTownship> VwTownship { get; set; }
        public virtual DbSet<VwTrainingHistory> VwTrainingHistory { get; set; }
        public virtual DbSet<VwTrainingHistoryInformationOnlineCheck> VwTrainingHistoryInformationOnlineCheck { get; set; }
        public virtual DbSet<VwUser> VwUser { get; set; }
        public virtual DbSet<VwVillage> VwVillage { get; set; }
        public virtual DbSet<VwYearlyBonus> VwYearlyBonus { get; set; }
        public virtual DbSet<VwYearlyBonusInformationOnlineCheck> VwYearlyBonusInformationOnlineCheck { get; set; }
        public virtual DbSet<VwYearlyPunishment> VwYearlyPunishment { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
//#warning To protect potentially sensitive information in your connection string, you should move it out of source code. See http://go.microsoft.com/fwlink/?LinkId=723263 for guidance on storing connection strings.
//                optionsBuilder.UseSqlServer("Server=localhost; Database=MADBAdminSolution; User Id=sa; Password=admin@123;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Nlogs>(entity =>
            {
                entity.ToTable("NLogs");

                entity.Property(e => e.CallSite).HasMaxLength(255);

                entity.Property(e => e.Exception).HasMaxLength(255);

                entity.Property(e => e.Level).HasMaxLength(50);

                entity.Property(e => e.Logged).HasColumnType("datetime");
            });

            modelBuilder.Entity<TbAccountDetail>(entity =>
            {
                entity.HasKey(e => e.AccountDetailPkid);

                entity.ToTable("TB_AccountDetail");

                entity.Property(e => e.BasedAmount).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.ExtraAmount).HasMaxLength(50);

                entity.Property(e => e.FineInterestInKyat).HasMaxLength(50);

                entity.Property(e => e.InterestInKyat).HasMaxLength(50);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.OtherAmount).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalAmount).HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbAccountDetailTransaction>(entity =>
            {
                entity.HasKey(e => e.AccountDetailPkid);

                entity.ToTable("TB_AccountDetailTransaction");

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Amount).HasMaxLength(50);

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.Source).HasMaxLength(50);

                entity.Property(e => e.TotalBalance).HasMaxLength(50);

                entity.Property(e => e.TransactionDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionType).HasMaxLength(50);
            });

            modelBuilder.Entity<TbAccountSummary>(entity =>
            {
                entity.HasKey(e => e.AccountSummaryPkid);

                entity.ToTable("TB_AccountSummary");

                entity.Property(e => e.AccountStatus).HasMaxLength(50);

                entity.Property(e => e.AmountUpdatedDate).HasMaxLength(50);

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.LastBalance).HasMaxLength(50);

                entity.Property(e => e.RecordCreatedBy).HasMaxLength(50);

                entity.Property(e => e.RecordCreatedDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbAge60Full>(entity =>
            {
                entity.HasKey(e => e.Age60FullPkid)
                    .HasName("PK_Age60Full");

                entity.ToTable("TB_Age60Full");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CurrentRankDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.DepartmentPlace).HasMaxLength(500);

                entity.Property(e => e.Dob)
                    .HasColumnName("DOB")
                    .HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.LatestSalary).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcno)
                    .HasColumnName("NRCNo")
                    .HasMaxLength(50);

                entity.Property(e => e.PermanentDate).HasColumnType("datetime");

                entity.Property(e => e.RaceReligion).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);
            });

            modelBuilder.Entity<TbAge60Full1>(entity =>
            {
                entity.HasKey(e => e.Age60FullPkid);

                entity.ToTable("TB_Age60Full1");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CurrentRankDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.DepartmentPlace).HasMaxLength(500);

                entity.Property(e => e.Dob)
                    .HasColumnName("DOB")
                    .HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.LatestSalary).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcno)
                    .HasColumnName("NRCNo")
                    .HasMaxLength(50);

                entity.Property(e => e.PermanentDate).HasColumnType("datetime");

                entity.Property(e => e.RaceReligion).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);
            });

            modelBuilder.Entity<TbAward>(entity =>
            {
                entity.HasKey(e => e.AwardPkid);

                entity.ToTable("TB_Award");

                entity.Property(e => e.AwardDate).HasColumnType("datetime");

                entity.Property(e => e.AwardTypeCode).HasMaxLength(50);

                entity.Property(e => e.AwardYear).HasMaxLength(50);

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Reason).HasMaxLength(500);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbAwardType>(entity =>
            {
                entity.HasKey(e => e.AwardTypePkid);

                entity.ToTable("TB_AwardType");

                entity.Property(e => e.AwardType).HasMaxLength(500);

                entity.Property(e => e.AwardTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbBranch>(entity =>
            {
                entity.HasKey(e => e.BranchPkid);

                entity.ToTable("TB_Branch");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.BranchName).HasMaxLength(200);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbCurrentJobTownship>(entity =>
            {
                entity.HasKey(e => e.CurrentJobTownshipPkid);

                entity.ToTable("TB_CurrentJob_Township");

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbDateSettingForRsdinterest>(entity =>
            {
                entity.HasKey(e => e.DateSettingPkid);

                entity.ToTable("TB_DateSettingForRSDInterest");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EntryDate).HasColumnType("datetime");
            });

            modelBuilder.Entity<TbDepartment>(entity =>
            {
                entity.HasKey(e => e.DepartmentPkid);

                entity.ToTable("TB_Department");

                entity.Property(e => e.Department).HasMaxLength(500);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbDisposal>(entity =>
            {
                entity.HasKey(e => e.DisposalPkid);

                entity.ToTable("TB_Disposal");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.DisposalDate).HasColumnType("datetime");

                entity.Property(e => e.DisposalTypeCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbDisposalType>(entity =>
            {
                entity.HasKey(e => e.DisposalTypePkid);

                entity.ToTable("TB_DisposalType");

                entity.Property(e => e.DisposalType).HasMaxLength(500);

                entity.Property(e => e.DisposalTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbEducation>(entity =>
            {
                entity.HasKey(e => e.EducationPkid);

                entity.ToTable("TB_Education");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndYear).HasMaxLength(50);

                entity.Property(e => e.MainSubject).HasMaxLength(200);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.SchoolName).HasMaxLength(200);

                entity.Property(e => e.StartYear).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbEducationType>(entity =>
            {
                entity.HasKey(e => e.EducationTypePkid);

                entity.ToTable("TB_EducationType");

                entity.Property(e => e.EducationType).HasMaxLength(500);

                entity.Property(e => e.EducationTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbEmployee>(entity =>
            {
                entity.HasKey(e => e.EmployeePkid)
                    .HasName("PK_TB_Employee_1");

                entity.ToTable("TB_Employee");

                entity.Property(e => e.Address).HasMaxLength(200);

                entity.Property(e => e.Ancestor).HasMaxLength(500);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.DearestPerson).HasMaxLength(500);

                entity.Property(e => e.DeleteRequest).HasMaxLength(20);

                entity.Property(e => e.EditRequest).HasMaxLength(20);

                entity.Property(e => e.EducationTypeCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EyeColor).HasMaxLength(50);

                entity.Property(e => e.FatherName)
                    .HasColumnName("Father_Name")
                    .HasMaxLength(50);

                entity.Property(e => e.Gender).HasMaxLength(50);

                entity.Property(e => e.Height).HasMaxLength(50);

                entity.Property(e => e.IsActive).HasMaxLength(50);

                entity.Property(e => e.JoinDate).HasColumnType("datetime");

                entity.Property(e => e.Mark).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MotherName)
                    .HasColumnName("Mother_Name")
                    .HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.Nrcpic).HasColumnName("NRCPic");

                entity.Property(e => e.Occupation).HasMaxLength(50);

                entity.Property(e => e.OtherName).HasMaxLength(50);

                entity.Property(e => e.PlaceOfBirth).HasMaxLength(50);

                entity.Property(e => e.Race).HasMaxLength(50);

                entity.Property(e => e.Religion).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.Status).HasMaxLength(50);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbEmployeeRankType>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("TB_EmployeeRankType");

                entity.Property(e => e.RankPkId)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.RankType)
                    .HasMaxLength(500)
                    .IsFixedLength();

                entity.Property(e => e.RankTypeCode)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbExamResult>(entity =>
            {
                entity.HasKey(e => e.ExamResultPkid);

                entity.ToTable("TB_ExamResult");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ExamDate).HasColumnType("datetime");

                entity.Property(e => e.ExamNumber).HasMaxLength(50);

                entity.Property(e => e.ExamType).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.SubjectCode).HasMaxLength(50);

                entity.Property(e => e.TotalMark).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbFine>(entity =>
            {
                entity.HasKey(e => e.FinePkid);

                entity.ToTable("TB_Fine");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FineRate).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Type).HasMaxLength(50);
            });

            modelBuilder.Entity<TbForm7>(entity =>
            {
                entity.HasKey(e => e.Form7Pkid);

                entity.ToTable("TB_Form7");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.ConfirmLetterDate).HasMaxLength(50);

                entity.Property(e => e.ConfirmLetterNo).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FarmArea).HasMaxLength(50);

                entity.Property(e => e.FarmLocation).HasMaxLength(200);

                entity.Property(e => e.FarmName).HasMaxLength(200);

                entity.Property(e => e.FarmNo).HasMaxLength(50);

                entity.Property(e => e.FarmType).HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(50);

                entity.Property(e => e.UpaingNo)
                    .HasColumnName("UPaingNo")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbHonour>(entity =>
            {
                entity.HasKey(e => e.HonourPkid);

                entity.ToTable("TB_Honour");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(500);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.HonourDate).HasColumnType("datetime");

                entity.Property(e => e.HonourTitle).HasMaxLength(200);

                entity.Property(e => e.LetterNo).HasMaxLength(200);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbHonourType>(entity =>
            {
                entity.HasKey(e => e.HonourTypePkid);

                entity.ToTable("TB_HonourType");

                entity.Property(e => e.HonourType).HasMaxLength(500);

                entity.Property(e => e.HonourTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbIntKnowledge>(entity =>
            {
                entity.HasKey(e => e.IntKnowledgePkid);

                entity.ToTable("TB_IntKnowledge");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CountryName).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(500);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbInterest>(entity =>
            {
                entity.HasKey(e => e.InterestPkid);

                entity.ToTable("TB_Interest");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Type).HasMaxLength(50);
            });

            modelBuilder.Entity<TbItemAndLoanPrice>(entity =>
            {
                entity.HasKey(e => e.ItemPkid);

                entity.ToTable("TB_ItemAndLoanPrice");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.ItemCode).HasMaxLength(50);

                entity.Property(e => e.ItemDescription).HasMaxLength(500);

                entity.Property(e => e.ItemName).HasMaxLength(200);

                entity.Property(e => e.LoanPricePerAcre).HasMaxLength(50);
            });

            modelBuilder.Entity<TbJicaloanMaster>(entity =>
            {
                entity.HasKey(e => e.LoanReturnPkid);

                entity.ToTable("TB_JICALoanMaster");

                entity.Property(e => e.ActualFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChassisNo).HasMaxLength(50);

                entity.Property(e => e.Country).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CustomFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.Dealer).HasMaxLength(200);

                entity.Property(e => e.EngineNo).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.MachineId)
                    .HasColumnName("MachineID")
                    .HasMaxLength(50);

                entity.Property(e => e.Model).HasMaxLength(50);

                entity.Property(e => e.ProposalAmount).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbJicaloanReturnTransactionDetail>(entity =>
            {
                entity.HasKey(e => e.LoanReturnTransactionDetailPkid);

                entity.ToTable("TB_JICALoanReturnTransactionDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.ActualFine).HasMaxLength(50);

                entity.Property(e => e.ActualInterest).HasMaxLength(50);

                entity.Property(e => e.ActualReturn).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfInstallment).HasColumnType("datetime");

                entity.Property(e => e.FineAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.PaidStatus).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasMaxLength(50);

                entity.Property(e => e.RemainingInterest).HasMaxLength(50);

                entity.Property(e => e.RemainingReturn).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate).HasColumnType("datetime");

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbJobExperience>(entity =>
            {
                entity.HasKey(e => e.JobExperiencePkid);

                entity.ToTable("TB_JobExperience");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Duration).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.TotalPoint).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbJobHistory>(entity =>
            {
                entity.HasKey(e => e.JobHistoryPkid)
                    .HasName("PK_TB_JobHistory_1");

                entity.ToTable("TB_JobHistory");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.DepartmentName).HasMaxLength(100);

                entity.Property(e => e.Duration).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.JobDay)
                    .HasColumnName("Job_Day")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobMonth)
                    .HasColumnName("Job_Month")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobYear)
                    .HasColumnName("Job_Year")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode1)
                    .HasColumnName("RankType_Code")
                    .HasMaxLength(50);

                entity.Property(e => e.RankTypeCode11)
                    .HasColumnName("RankType_Code1")
                    .HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbJobPosting>(entity =>
            {
                entity.HasKey(e => e.JobPostingPkid);

                entity.ToTable("TB_JobPosting");

                entity.Property(e => e.Authority).HasMaxLength(100);

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.DepartmentName).HasMaxLength(50);

                entity.Property(e => e.Duration).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.ToDate).HasColumnType("datetime");
            });

            modelBuilder.Entity<TbJoinAccount>(entity =>
            {
                entity.HasKey(e => e.JoinAccountPkid);

                entity.ToTable("TB_JoinAccount");

                entity.Property(e => e.FirstAccountOwnerPkid).HasMaxLength(50);

                entity.Property(e => e.SecondAccountOwnerPkid).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbLeaveApplication>(entity =>
            {
                entity.HasKey(e => e.LeaveApplicationPkid);

                entity.ToTable("TB_LeaveApplication");

                entity.Property(e => e.AppliedDate).HasColumnType("datetime");

                entity.Property(e => e.ApprovedBy).HasMaxLength(50);

                entity.Property(e => e.ApprovedDate).HasColumnType("datetime");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Duration).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.LeaveDate).HasColumnType("datetime");

                entity.Property(e => e.LeaveStatus).HasMaxLength(50);

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbLeaveEntitlement>(entity =>
            {
                entity.HasKey(e => e.LeaveEntitlementPkid);

                entity.ToTable("TB_LeaveEntitlement");

                entity.Property(e => e.ApprovedDate).HasColumnType("datetime");

                entity.Property(e => e.ApprovedNo).HasMaxLength(50);

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate).HasColumnType("datetime");

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Period).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.StartDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbLeaveType>(entity =>
            {
                entity.HasKey(e => e.LeaveTypePkid);

                entity.ToTable("TB_LeaveType");

                entity.Property(e => e.LeaveType).HasMaxLength(500);

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);
            });

            modelBuilder.Entity<TbLoanGroup>(entity =>
            {
                entity.HasKey(e => e.LoanGroupPkid);

                entity.ToTable("TB_LoanGroup");

                entity.Property(e => e.FirstAccount).HasMaxLength(50);

                entity.Property(e => e.SecondAccount).HasMaxLength(50);

                entity.Property(e => e.ThirdAccount).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbLoanInterestRate>(entity =>
            {
                entity.HasKey(e => e.LoanInterestRatePkid);

                entity.ToTable("TB_LoanInterestRate");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbLoanMaster>(entity =>
            {
                entity.HasKey(e => e.LoanReturnPkid)
                    .HasName("PK_TB_LoanReturnTransaction_1");

                entity.ToTable("TB_LoanMaster");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbLoanProposal>(entity =>
            {
                entity.HasKey(e => e.ApplyPkid);

                entity.ToTable("TB_LoanProposal");

                entity.Property(e => e.ApplyDate).HasColumnType("datetime");

                entity.Property(e => e.ApplyStatus).HasMaxLength(50);

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.LoanName).HasMaxLength(50);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.QueueNumber).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbLoanReturnTransactionDetail>(entity =>
            {
                entity.HasKey(e => e.LoanReturnTransactionDetailPkid);

                entity.ToTable("TB_LoanReturnTransactionDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FineInterestAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate).HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbLoanTransaction>(entity =>
            {
                entity.HasKey(e => e.LoanPkid);

                entity.ToTable("TB_LoanTransaction");

                entity.Property(e => e.Amount).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CustomerId)
                    .HasColumnName("CustomerID")
                    .HasMaxLength(50);

                entity.Property(e => e.DueDate).HasColumnType("datetime");

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.LoanItem).HasMaxLength(50);

                entity.Property(e => e.LoanTransactionId)
                    .HasColumnName("LoanTransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionType).HasMaxLength(50);
            });

            modelBuilder.Entity<TbMachine>(entity =>
            {
                entity.HasKey(e => e.MachinePkid);

                entity.ToTable("TB_Machine");

                entity.Property(e => e.MachineId)
                    .HasColumnName("MachineID")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<TbMeb2sloanMaster>(entity =>
            {
                entity.HasKey(e => e.LoanReturnPkid)
                    .HasName("PK_TB_MEB2SLoanReturnTransaction");

                entity.ToTable("TB_MEB2SLoanMaster");

                entity.Property(e => e.ActualFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CustomFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FifthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FirstInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FirstLoanAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FirstLoanDate).HasColumnType("datetime");

                entity.Property(e => e.FourthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanDesc).HasMaxLength(200);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SecondInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SecondLoanAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SecondLoanDate).HasColumnType("datetime");

                entity.Property(e => e.SixthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ThirthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbMeb2sloanReturnTransactionDetail>(entity =>
            {
                entity.HasKey(e => e.LoanReturnTransactionDetailPkid);

                entity.ToTable("TB_MEB2SLoanReturnTransactionDetail");

                entity.Property(e => e.ActualFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfInstallment).HasColumnType("datetime");

                entity.Property(e => e.FineAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FormPrice).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.InterestAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Other).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.PaidStatus).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ReturnAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ReturnDate).HasColumnType("datetime");

                entity.Property(e => e.SavingAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbMeb2spersonalInformation>(entity =>
            {
                entity.HasKey(e => e.PersonPkid);

                entity.ToTable("TB_MEB2SPersonalInformation");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.MemberType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasColumnType("datetime");

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbMessageBox>(entity =>
            {
                entity.HasKey(e => e.MessagePkid);

                entity.ToTable("TB_MessageBox");

                entity.Property(e => e.MessageDate).HasColumnType("datetime");

                entity.Property(e => e.MessageFrom).HasMaxLength(50);

                entity.Property(e => e.MessageId)
                    .HasColumnName("MessageID")
                    .HasMaxLength(50);

                entity.Property(e => e.MessageStatus).HasMaxLength(50);

                entity.Property(e => e.MessageTo).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbMessageContent>(entity =>
            {
                entity.HasKey(e => e.MessageContentPkid);

                entity.ToTable("TB_MessageContent");

                entity.Property(e => e.AttachFileId)
                    .HasColumnName("AttachFileID")
                    .HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.IsUploaded).HasMaxLength(50);

                entity.Property(e => e.MessageId)
                    .HasColumnName("MessageID")
                    .HasMaxLength(50);

                entity.Property(e => e.Title).HasMaxLength(500);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbMoeInterestTransaction>(entity =>
            {
                entity.HasKey(e => e.MoeInterestPkid);

                entity.ToTable("TB_MoeInterestTransaction");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreateBy).HasMaxLength(50);

                entity.Property(e => e.CreateDate).HasColumnType("datetime");

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.InterestCalculationDate).HasMaxLength(50);

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanStartDate).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbMoeKyoInterestTransaction>(entity =>
            {
                entity.HasKey(e => e.MoeKyoInterestPkid);

                entity.ToTable("TB_MoeKyoInterestTransaction");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreateBy).HasMaxLength(50);

                entity.Property(e => e.CreateDate).HasColumnType("datetime");

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.InterestCalculationDate).HasMaxLength(50);

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanStartDate).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbNrc>(entity =>
            {
                entity.HasKey(e => e.Nrcpkid);

                entity.ToTable("TB_NRC");

                entity.Property(e => e.Nrcpkid).HasColumnName("NRCPkid");

                entity.Property(e => e.Nrccode)
                    .HasColumnName("NRCCode")
                    .HasMaxLength(50);

                entity.Property(e => e.NrcenglishCode)
                    .HasColumnName("NRCEnglishCode")
                    .HasMaxLength(50);

                entity.Property(e => e.NrcmyanmarCode)
                    .HasColumnName("NRCMyanmarCode")
                    .HasMaxLength(50);

                entity.Property(e => e.Nrcnumber).HasColumnName("NRCNumber");
            });

            modelBuilder.Entity<TbPension>(entity =>
            {
                entity.HasKey(e => e.PensionPkid);

                entity.ToTable("TB_Pension");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.Department).HasMaxLength(100);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LatestSalary).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MonthlyPension).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.PensionBank).HasMaxLength(50);

                entity.Property(e => e.PensionDate).HasColumnType("datetime");

                entity.Property(e => e.PensionReportNo).HasMaxLength(50);

                entity.Property(e => e.PensionStartDate).HasColumnType("datetime");

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(50);

                entity.Property(e => e.Saving).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbPensionType>(entity =>
            {
                entity.HasKey(e => e.PensionTypePkid);

                entity.ToTable("TB_PensionType");

                entity.Property(e => e.PensionType).HasMaxLength(500);

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbPersonalInformation>(entity =>
            {
                entity.HasKey(e => e.PersonPkid);

                entity.ToTable("TB_PersonalInformation");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .HasColumnName("JICANumber")
                    .HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbPlaceOfBirth>(entity =>
            {
                entity.HasKey(e => e.TownshipPkid);

                entity.ToTable("TB_PlaceOfBirth");

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbPunishment>(entity =>
            {
                entity.HasKey(e => e.PunishmentPkid);

                entity.ToTable("TB_Punishment");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CrimeYear).HasMaxLength(50);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(800);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.OrderDate).HasColumnType("datetime");

                entity.Property(e => e.OrderNo).HasMaxLength(50);

                entity.Property(e => e.PunishmentTypeCode).HasMaxLength(500);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbPunishmentType>(entity =>
            {
                entity.HasKey(e => e.PunishmentTypePkid);

                entity.ToTable("TB_PunishmentType");

                entity.Property(e => e.PunishmentType).HasMaxLength(500);

                entity.Property(e => e.PunishmentTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);

                entity.Property(e => e.YearlyPunishmentTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbRank>(entity =>
            {
                entity.HasKey(e => e.RankPkid);

                entity.ToTable("TB_Rank");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Duration).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate).HasColumnType("datetime");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.OrderTitle).HasMaxLength(500);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.StartDate).HasColumnType("datetime");
            });

            modelBuilder.Entity<TbRankType>(entity =>
            {
                entity.HasKey(e => e.RankTypePkid);

                entity.ToTable("TB_RankType");

                entity.Property(e => e.EmployeeRankTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankDescription).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(500);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbRegion>(entity =>
            {
                entity.HasKey(e => e.RegionPkid);

                entity.ToTable("TB_Region");

                entity.Property(e => e.Region).HasMaxLength(500);

                entity.Property(e => e.RegionCode).HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbRegionSetUp>(entity =>
            {
                entity.HasKey(e => e.RegionPkid);

                entity.ToTable("TB_Region_SetUp");

                entity.Property(e => e.Region).HasMaxLength(500);

                entity.Property(e => e.RegionCode).HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbRelationship>(entity =>
            {
                entity.HasKey(e => e.RelationshipPkid);

                entity.ToTable("TB_Relationship");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.RelationAddress).HasMaxLength(200);

                entity.Property(e => e.RelationDob)
                    .HasColumnName("RelationDOB")
                    .HasColumnType("datetime");

                entity.Property(e => e.RelationFatherName).HasMaxLength(50);

                entity.Property(e => e.RelationMotherName).HasMaxLength(50);

                entity.Property(e => e.RelationName).HasMaxLength(50);

                entity.Property(e => e.RelationOccupation).HasMaxLength(50);

                entity.Property(e => e.RelationType).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbSalary>(entity =>
            {
                entity.HasKey(e => e.SalaryPkid);

                entity.ToTable("TB_Salary");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.IncreaseTimes).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.SalaryAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ToDate).HasColumnType("datetime");
            });

            modelBuilder.Entity<TbSaungInterestTransaction>(entity =>
            {
                entity.HasKey(e => e.SaungInterestPkid);

                entity.ToTable("TB_SaungInterestTransaction");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreateBy).HasMaxLength(50);

                entity.Property(e => e.CreateDate).HasColumnType("datetime");

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.InterestCalculationDate).HasMaxLength(50);

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanStartDate).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbSavingMaster>(entity =>
            {
                entity.HasKey(e => e.SavingMasterPkid);

                entity.ToTable("TB_SavingMaster");

                entity.Property(e => e.CustomerId)
                    .HasColumnName("CustomerID")
                    .HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.TotalAmount).HasMaxLength(50);

                entity.Property(e => e.TotalInterest).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbSkills>(entity =>
            {
                entity.HasKey(e => e.SkillsPkid);

                entity.ToTable("TB_Skills");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Skill).HasMaxLength(200);

                entity.Property(e => e.SkillLevel).HasMaxLength(50);
            });

            modelBuilder.Entity<TbSonAndDaughter>(entity =>
            {
                entity.HasKey(e => e.SonAndDaughterPkid);

                entity.ToTable("TB_SonAndDaughter");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.SonAndDaughterAddress).HasMaxLength(200);

                entity.Property(e => e.SonAndDaughterDob)
                    .HasColumnName("SonAndDaughterDOB")
                    .HasColumnType("datetime");

                entity.Property(e => e.SonAndDaughterName).HasMaxLength(50);

                entity.Property(e => e.SonAndDaughterOccupation).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbStaff>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("TB_Staff");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.Designation).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.JoinedDate).HasColumnType("datetime");

                entity.Property(e => e.MotherName).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.StaffId)
                    .HasColumnName("StaffID")
                    .HasMaxLength(50);

                entity.Property(e => e.StaffPkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<TbStateDivision>(entity =>
            {
                entity.HasKey(e => e.StateDivisionPkid);

                entity.ToTable("TB_StateDivision");

                entity.Property(e => e.StateDivision).HasMaxLength(50);

                entity.Property(e => e.StateDivisionCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbStateDivisionSetUp>(entity =>
            {
                entity.HasKey(e => e.StateDivisionPkid);

                entity.ToTable("TB_StateDivision_SetUp");

                entity.Property(e => e.StateDivision).HasMaxLength(50);

                entity.Property(e => e.StateDivisionCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbStatedivi>(entity =>
            {
                entity.HasNoKey();

                entity.ToTable("tb_statedivi");

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbSubjects>(entity =>
            {
                entity.HasKey(e => e.SubjectPkid);

                entity.ToTable("TB_Subjects");

                entity.Property(e => e.Subject).HasMaxLength(50);

                entity.Property(e => e.SubjectCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbTownAndDivision>(entity =>
            {
                entity.HasKey(e => e.TownId);

                entity.ToTable("TB_TownAndDivision");

                entity.Property(e => e.TownId).HasColumnName("TownID");

                entity.Property(e => e.DiviSionName).HasMaxLength(150);

                entity.Property(e => e.DivisionCode).HasMaxLength(4);

                entity.Property(e => e.GroupNumber).HasMaxLength(50);

                entity.Property(e => e.TownCode).HasMaxLength(10);

                entity.Property(e => e.TownName).HasMaxLength(150);

                entity.Property(e => e.TownOrderCode).HasMaxLength(3);
            });

            modelBuilder.Entity<TbTownship>(entity =>
            {
                entity.HasKey(e => e.TownshipPkid);

                entity.ToTable("TB_Township");

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbTownshipSetup>(entity =>
            {
                entity.HasKey(e => e.TownshipPkid)
                    .HasName("PK_TB_Township_SetUp");

                entity.ToTable("TB_Township_Setup");

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbTrainingHistory>(entity =>
            {
                entity.HasKey(e => e.TrainingHistoryPkid);

                entity.ToTable("TB_TrainingHistory");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate).HasColumnType("datetime");

                entity.Property(e => e.Location).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.SchoolName).HasMaxLength(200);

                entity.Property(e => e.StartDate).HasColumnType("datetime");

                entity.Property(e => e.TrainingTitle).HasMaxLength(200);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<TbTrainingType>(entity =>
            {
                entity.HasKey(e => e.TrainingTypePkid);

                entity.ToTable("TB_TrainingType");

                entity.Property(e => e.TrainingType).HasMaxLength(500);

                entity.Property(e => e.TrainingTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<TbTransaction>(entity =>
            {
                entity.HasKey(e => e.TransactionPkid);

                entity.ToTable("TB_Transaction");

                entity.Property(e => e.Amount).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CustomerId)
                    .HasColumnName("CustomerID")
                    .HasMaxLength(50);

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.InterestTotal).HasMaxLength(50);

                entity.Property(e => e.TransactionDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionType).HasMaxLength(50);
            });

            modelBuilder.Entity<TbTransfer>(entity =>
            {
                entity.HasKey(e => e.TransferPkid);

                entity.ToTable("TB_Transfer");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.FromTownshipCode)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.ToTownshipCode).HasMaxLength(50);

                entity.Property(e => e.TransferDate).HasColumnType("datetime");
            });

            modelBuilder.Entity<TbUser>(entity =>
            {
                entity.HasKey(e => e.UserPkid);

                entity.ToTable("TB_User");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.LoginTime).HasColumnType("datetime");

                entity.Property(e => e.LogoutTime).HasColumnType("datetime");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Password).HasMaxLength(100);

                entity.Property(e => e.Username).HasMaxLength(50);
            });

            modelBuilder.Entity<TbUserLogin>(entity =>
            {
                entity.HasKey(e => e.UserPkid);

                entity.ToTable("TB_UserLogin");

                entity.Property(e => e.AccountType)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.Department)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Office)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Password)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.Status)
                    .IsRequired()
                    .HasMaxLength(15);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasMaxLength(50);

                entity.Property(e => e.UsernameOrEmail)
                    .IsRequired()
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<TbVillage>(entity =>
            {
                entity.HasKey(e => e.VillagePkid);

                entity.ToTable("TB_Village");

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.VillageCode).HasMaxLength(50);

                entity.Property(e => e.VillageName).HasMaxLength(500);
            });

            modelBuilder.Entity<TbYearlyBonus>(entity =>
            {
                entity.HasKey(e => e.YearlyBonusPkid);

                entity.ToTable("TB_YearlyBonus");

                entity.Property(e => e.ApprovedDate).HasColumnType("datetime");

                entity.Property(e => e.ApprovedNo).HasMaxLength(50);

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);

                entity.Property(e => e.YearlyBonusCount).HasMaxLength(50);

                entity.Property(e => e.YearlyBonusDate).HasColumnType("datetime");

                entity.Property(e => e.YearlyBonusSalary).HasMaxLength(50);
            });

            modelBuilder.Entity<TbYearlyPunishmentType>(entity =>
            {
                entity.HasKey(e => e.YearlyPunishmentPkid);

                entity.ToTable("TB_YearlyPunishmentType");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);

                entity.Property(e => e.YearlyPunishmentType).HasMaxLength(50);

                entity.Property(e => e.YearlyPunishmentTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAccountDetailTransaction>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAccountDetailTransaction");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountTransCreatedBy).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Amount).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.Source).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalBalance).HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionType).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAccountDetailTransactionForBalancingChecking>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAccountDetailTransactionForBalancingChecking");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwAccountDetailTransactionOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAccountDetailTransactionOnlineCheck");

                entity.Property(e => e.AccountDetailPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Amount).HasMaxLength(50);

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.Source).HasMaxLength(50);

                entity.Property(e => e.TotalBalance).HasMaxLength(50);

                entity.Property(e => e.TransactionDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionType).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAccountDetailTransactionPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_AccountDetailTransactionPassBook_SelectByAccNo");

                entity.Property(e => e.AccountDetailPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Amount).HasMaxLength(50);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance).HasMaxLength(50);

                entity.Property(e => e.TransactionDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAccountSummaryOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAccountSummaryOnlineCheck");

                entity.Property(e => e.AccountStatus).HasMaxLength(50);

                entity.Property(e => e.AccountSummaryPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.AmountUpdatedDate).HasMaxLength(50);

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.LastBalance).HasMaxLength(50);

                entity.Property(e => e.RecordCreatedBy).HasMaxLength(50);

                entity.Property(e => e.RecordCreatedDate).HasColumnType("datetime");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwAge60Full>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_Age60Full");

                entity.Property(e => e.Age)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRankDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Dob)
                    .IsRequired()
                    .HasColumnName("DOB")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Expr1)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Expr2)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Expr3)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcno)
                    .IsRequired()
                    .HasColumnName("NRCNo")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PlaceOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Race).HasMaxLength(50);

                entity.Property(e => e.RankTypeDescription)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Religion).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAward>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAward");

                entity.Property(e => e.AwardDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AwardPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.AwardType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AwardTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AwardYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Reason).HasMaxLength(500);
            });

            modelBuilder.Entity<VwAwardInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAwardInformationOnlineCheck");

                entity.Property(e => e.AwardDate).HasColumnType("datetime");

                entity.Property(e => e.AwardPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.AwardTypeCode).HasMaxLength(50);

                entity.Property(e => e.AwardYear).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Reason).HasMaxLength(500);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAwardList>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_AwardList");

                entity.Property(e => e.AwardType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AwardYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.JobAddress)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);
            });

            modelBuilder.Entity<VwAwardType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwAwardType");

                entity.Property(e => e.AwardType).HasMaxLength(500);

                entity.Property(e => e.AwardTypeCode).HasMaxLength(50);

                entity.Property(e => e.AwardTypePkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwBranch>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwBranch");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.BranchName).HasMaxLength(200);

                entity.Property(e => e.BranchPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.TownshipCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwCurrentJobTownship>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwCurrentJobTownship");

                entity.Property(e => e.CurrentJobTownshipPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwCurrentJobTownshipInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_CurrentJobTownshipInformationOnlineCheck");

                entity.Property(e => e.CurrentJobTownshipPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwCustomerAccountDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwCustomerAccountDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountStatus).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.AmountUpdatedDate).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LastBalance).HasMaxLength(50);

                entity.Property(e => e.LastBalanceFromAdt)
                    .IsRequired()
                    .HasColumnName("LastBalanceFromADT")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwCustomerForm7Detail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwCustomerForm7Detail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.ConfirmLetterDate).HasMaxLength(50);

                entity.Property(e => e.ConfirmLetterNo).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FarmArea).HasMaxLength(50);

                entity.Property(e => e.FarmLocation).HasMaxLength(200);

                entity.Property(e => e.FarmName).HasMaxLength(200);

                entity.Property(e => e.FarmNo).HasMaxLength(50);

                entity.Property(e => e.FarmType).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Form7CreatedBy).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.UpaingNo)
                    .HasColumnName("UPaingNo")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwDateSettingForRsdinterest>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwDateSettingForRSDInterest");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.DateSettingPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.EntryDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwDeadEmployee>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwDeadEmployee");

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Department)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasColumnName("Father_Name")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LatestSalary)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwDebtPeopleTransactionDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwDebtPeopleTransactionDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineInterestAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate).HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwDepartment>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwDepartment");

                entity.Property(e => e.Department).HasMaxLength(500);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.DepartmentPkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwDisposalInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwDisposalInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DisposalDate).HasColumnType("datetime");

                entity.Property(e => e.DisposalPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.DisposalTypeCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwDisposalType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_DisposalType");

                entity.Property(e => e.DisposalType).HasMaxLength(500);

                entity.Property(e => e.DisposalTypeCode).HasMaxLength(50);

                entity.Property(e => e.DisposalTypePkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwDisposalTypeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwDisposalTypeInformationOnlineCheck");

                entity.Property(e => e.DisposalType).HasMaxLength(500);

                entity.Property(e => e.DisposalTypeCode).HasMaxLength(50);

                entity.Property(e => e.DisposalTypePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwEducationType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_EducationType");

                entity.Property(e => e.EducationType).HasMaxLength(500);

                entity.Property(e => e.EducationTypeCode).HasMaxLength(50);

                entity.Property(e => e.EducationTypePkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwEducationTypeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwEducationTypeInformationOnlineCheck");

                entity.Property(e => e.EducationType).HasMaxLength(500);

                entity.Property(e => e.EducationTypeCode).HasMaxLength(50);

                entity.Property(e => e.EducationTypePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwEmployee>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwEmployee");

                entity.Property(e => e.Address).HasMaxLength(200);

                entity.Property(e => e.Age)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Ancestor).HasMaxLength(500);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRankDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DearestPerson).HasMaxLength(500);

                entity.Property(e => e.EducationType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EducationTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EmployeePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.EyeColor).HasMaxLength(50);

                entity.Property(e => e.FatherName)
                    .HasColumnName("Father_Name")
                    .HasMaxLength(50);

                entity.Property(e => e.Gender).HasMaxLength(50);

                entity.Property(e => e.Height).HasMaxLength(50);

                entity.Property(e => e.IsActive)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Mark).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MotherName)
                    .HasColumnName("Mother_Name")
                    .HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(50);

                entity.Property(e => e.OtherName).HasMaxLength(50);

                entity.Property(e => e.PlaceOfBirth).HasMaxLength(50);

                entity.Property(e => e.PlaceOfBirthCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Race).HasMaxLength(50);

                entity.Property(e => e.Religion).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.SerialNumberMyan)
                    .IsRequired()
                    .HasColumnName("SerialNumber_Myan")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Township)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwEmployeeDecreaseList>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_EmployeeDecreaseList");

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRankDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForArrive)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForDead)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForDismiss)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForPension)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForRemove)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForResign)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeDecreaseDateForTransfer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobAddress)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Remark)
                    .IsRequired()
                    .HasColumnName("remark")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SerialNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SerialNumberMyan)
                    .IsRequired()
                    .HasColumnName("SerialNumber_Myan")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwEmployeeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwEmployeeInformationOnlineCheck");

                entity.Property(e => e.Address).HasMaxLength(200);

                entity.Property(e => e.Ancestor).HasMaxLength(500);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.DearestPerson).HasMaxLength(500);

                entity.Property(e => e.EducationTypeCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EmployeePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.EyeColor).HasMaxLength(50);

                entity.Property(e => e.FatherName)
                    .HasColumnName("Father_Name")
                    .HasMaxLength(50);

                entity.Property(e => e.Gender).HasMaxLength(50);

                entity.Property(e => e.Height).HasMaxLength(50);

                entity.Property(e => e.IsActive).HasMaxLength(50);

                entity.Property(e => e.JoinDate).HasColumnType("datetime");

                entity.Property(e => e.Mark).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MotherName)
                    .HasColumnName("Mother_Name")
                    .HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(50);

                entity.Property(e => e.OtherName).HasMaxLength(50);

                entity.Property(e => e.PlaceOfBirth).HasMaxLength(50);

                entity.Property(e => e.Race).HasMaxLength(50);

                entity.Property(e => e.Religion).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwFine>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwFine");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.FinePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.FineRate).HasMaxLength(50);

                entity.Property(e => e.FromDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.ToDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Type).HasMaxLength(50);
            });

            modelBuilder.Entity<VwForm7OnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwForm7OnlineCheck");

                entity.Property(e => e.ConfirmLetterDate).HasMaxLength(50);

                entity.Property(e => e.ConfirmLetterNo).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FarmArea).HasMaxLength(50);

                entity.Property(e => e.FarmLocation).HasMaxLength(200);

                entity.Property(e => e.FarmName).HasMaxLength(200);

                entity.Property(e => e.FarmNo).HasMaxLength(50);

                entity.Property(e => e.FarmType).HasMaxLength(50);

                entity.Property(e => e.Form7Pkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Township).HasMaxLength(50);

                entity.Property(e => e.UpaingNo)
                    .HasColumnName("UPaingNo")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwGetRegionSelectList>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwGetRegion_SelectList");

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwIntKnowledgeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_IntKnowledgeInformationOnlineCheck");

                entity.Property(e => e.CountryName).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.Description).HasMaxLength(500);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.IntKnowledgePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwInterest>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwInterest");

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.FromDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.InterestPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.InterestRate).HasMaxLength(50);

                entity.Property(e => e.ToDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Type).HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicacustomerAccountDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICACustomerAccountDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountStatus).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.AmountUpdatedDate).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .HasColumnName("JICANumber")
                    .HasMaxLength(50);

                entity.Property(e => e.LastBalance).HasMaxLength(50);

                entity.Property(e => e.LastBalanceFromAdt)
                    .IsRequired()
                    .HasColumnName("LastBalanceFromADT")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicadebtPeopleTransactionDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICADebtPeopleTransactionDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.DateOfInstallment)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .HasColumnName("JICANumber")
                    .HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate)
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicaloanMaster>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanMaster");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChassisNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Country)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CustomFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.Dealer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EngineNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .IsRequired()
                    .HasColumnName("JICANumber")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Model)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProposalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RefundAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicaloanMasterForBalancingChecking>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanMasterForBalancingChecking");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChassisNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Country)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.Dealer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EngineNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .IsRequired()
                    .HasColumnName("JICANumber")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Model)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProposalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RefundAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicaloanMasterOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanMasterOnlineCheck");

                entity.Property(e => e.ActualFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChassisNo).HasMaxLength(50);

                entity.Property(e => e.Country).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CustomFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.Dealer).HasMaxLength(200);

                entity.Property(e => e.EngineNo).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.LoanReturnPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.MachineId)
                    .HasColumnName("MachineID")
                    .HasMaxLength(50);

                entity.Property(e => e.Model).HasMaxLength(50);

                entity.Property(e => e.ProposalAmount).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicaloanMasterPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_JICALoanMasterPassBook_SelectByAccNo");

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.LoanReturnPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwJicaloanReturnTransPeopleGroupByRegion>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanReturnTransPeopleGroupByRegion");

                entity.Property(e => e.DebtPeople)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DebtPeoplePercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PaidPeople)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PeoplePercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalPeople)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwJicaloanReturnTransactionDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanReturnTransactionDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.ActualFine).HasMaxLength(50);

                entity.Property(e => e.ActualInterest).HasMaxLength(50);

                entity.Property(e => e.ActualReturn).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.DateOfInstallment)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .IsRequired()
                    .HasColumnName("JICANumber")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.PaidStatus)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasMaxLength(50);

                entity.Property(e => e.RemainingInterest).HasMaxLength(50);

                entity.Property(e => e.RemainingReturn).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnTransactionCreatedBy).HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicaloanReturnTransactionDetailOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanReturnTransactionDetailOnlineCheck");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.ActualFine).HasMaxLength(50);

                entity.Property(e => e.ActualInterest).HasMaxLength(50);

                entity.Property(e => e.ActualReturn).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfInstallment).HasColumnType("datetime");

                entity.Property(e => e.FineAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.LoanReturnTransactionDetailPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.PaidStatus).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasMaxLength(50);

                entity.Property(e => e.RemainingInterest).HasMaxLength(50);

                entity.Property(e => e.RemainingReturn).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate).HasColumnType("datetime");

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJicaloanReturnTransactionDetailPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_JICALoanReturnTransactionDetailPassBook_SelectByAccNo");

                entity.Property(e => e.FineInterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate).HasColumnType("datetime");

                entity.Property(e => e.ReturnShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType)
                    .IsRequired()
                    .HasMaxLength(13)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwJicaloanReturnTransactionGroupByRegion>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICALoanReturnTransactionGroupByRegion");

                entity.Property(e => e.BalancePercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnedPercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .IsRequired()
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoan)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwJicans7>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJICANS7");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChassisNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Country)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.Dealer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EngineNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Jicanumber)
                    .IsRequired()
                    .HasColumnName("JICANumber")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.MachineType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Model)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProposalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RefundAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwJobExperience>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJobExperience");

                entity.Property(e => e.CurrentJobYear)
                    .HasColumnName("Current_JobYear")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.DepartmentName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.JobDay)
                    .HasColumnName("Job_Day")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobMonth)
                    .HasColumnName("Job_Month")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobYear)
                    .HasColumnName("Job_Year")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(500);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.SerialNumberMyan)
                    .IsRequired()
                    .HasColumnName("SerialNumber_Myan")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalJobDay).HasColumnName("Total_JobDay");

                entity.Property(e => e.TotalJobMonth).HasColumnName("Total_JobMonth");

                entity.Property(e => e.TotalJobYear).HasColumnName("Total_JobYear");
            });

            modelBuilder.Entity<VwJobExperienceList>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_JobExperienceList");

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DepartmentName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.FromDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobDay)
                    .IsRequired()
                    .HasColumnName("Job_Day")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobMonth)
                    .IsRequired()
                    .HasColumnName("Job_Month")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobYear)
                    .IsRequired()
                    .HasColumnName("Job_Year")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.SerialNumberMyan)
                    .IsRequired()
                    .HasColumnName("SerialNumber_Myan")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwJobExperienceListSelectByCurrentRank>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJobExperienceListSelectByCurrentRank");

                entity.Property(e => e.AllTrc)
                    .IsRequired()
                    .HasColumnName("AllTRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.JobDay)
                    .HasColumnName("Job_Day")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobMonth)
                    .HasColumnName("Job_Month")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobYear)
                    .HasColumnName("Job_Year")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JoinDate).HasColumnType("datetime");

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.Township)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwJobHistoryInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwJobHistoryInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.Duration).HasColumnType("decimal(18, 0)");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate).HasColumnType("datetime");

                entity.Property(e => e.JobDay)
                    .HasColumnName("Job_Day")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobHistoryPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.JobMonth)
                    .HasColumnName("Job_Month")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.JobYear)
                    .HasColumnName("Job_Year")
                    .HasColumnType("decimal(18, 0)");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode)
                    .HasColumnName("RankType_Code")
                    .HasMaxLength(50);

                entity.Property(e => e.RankTypeCode1)
                    .HasColumnName("RankType_Code1")
                    .HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.ToDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwJobPosting>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_JobPosting");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentName).HasMaxLength(100);

                entity.Property(e => e.DepartmentName1)
                    .IsRequired()
                    .HasColumnName("Department_Name")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FromDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobDay)
                    .IsRequired()
                    .HasColumnName("Job_Day")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobHistoryPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.JobMonth)
                    .IsRequired()
                    .HasColumnName("Job_Month")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobYear)
                    .IsRequired()
                    .HasColumnName("Job_Year")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankTypeCode)
                    .IsRequired()
                    .HasColumnName("RankType_Code")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.ToDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLeaveEntitlement>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_LeaveEntitlement");

                entity.Property(e => e.ApprovedDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ApprovedNo).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LeaveEntitlementPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Period).HasMaxLength(50);

                entity.Property(e => e.StartDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLeaveEntitlementOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLeaveEntitlementOnlineCheck");

                entity.Property(e => e.ApprovedDate).HasColumnType("datetime");

                entity.Property(e => e.ApprovedNo).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate).HasColumnType("datetime");

                entity.Property(e => e.LeaveEntitlementPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Period).HasMaxLength(50);

                entity.Property(e => e.StartDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwLeaveEntitlementSelectList>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLeaveEntitlement_Select_List");

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EndDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Period).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.StartDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Township)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwLeaveType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_LeaveType");

                entity.Property(e => e.LeaveType).HasMaxLength(500);

                entity.Property(e => e.LeaveTypeCode).HasMaxLength(50);

                entity.Property(e => e.LeaveTypePkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwLoanInterestDetailTransaction>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanInterestDetailTransaction");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Address)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanSeason)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrc)
                    .IsRequired()
                    .HasColumnName("NRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Occupation)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PersonPkid).HasColumnName("PersonPKID");

                entity.Property(e => e.Phone)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegistrationDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .IsRequired()
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasColumnName("TransactionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLoanMaster>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanMaster");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwLoanMasterOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanMasterOnlineCheck");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.LoanReturnPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwLoanMasterPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_LoanMasterPassBook_SelectByAccNo");

                entity.Property(e => e.LoanAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.LoanReturnPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLoanProposal>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_LoanProposal");

                entity.Property(e => e.ApplyDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ApplyStatus)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.BankAccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrc)
                    .IsRequired()
                    .HasColumnName("NRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Phone)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.QueueNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .IsRequired()
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasColumnName("TransactionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLoanReturnDateList>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanReturnDateList");

                entity.Property(e => e.LoanReturnTransactionDetailPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.ReturnDate).HasMaxLength(50);
            });

            modelBuilder.Entity<VwLoanReturnTransPeopleGroupByRegion>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanReturnTransPeopleGroupByRegion");

                entity.Property(e => e.DebtPeople)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DebtPeoplePercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanSeason)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PaidPeople)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PeoplePercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalPeople)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLoanReturnTransactionDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanReturnTransactionDetail");

                entity.Property(e => e.AccountNumber).HasMaxLength(4000);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineInterestAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnTransactionCreatedBy).HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwLoanReturnTransactionDetailOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanReturnTransactionDetailOnlineCheck");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FineInterestAmount).HasMaxLength(50);

                entity.Property(e => e.FormPrice).HasMaxLength(50);

                entity.Property(e => e.InterestAmount).HasMaxLength(50);

                entity.Property(e => e.LoanReturnTransactionDetailPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanSeason).HasMaxLength(50);

                entity.Property(e => e.LoanYear).HasMaxLength(50);

                entity.Property(e => e.Other).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnAmount).HasMaxLength(50);

                entity.Property(e => e.ReturnDate).HasMaxLength(50);

                entity.Property(e => e.SavingAmount).HasMaxLength(50);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwLoanReturnTransactionDetailPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_LoanReturnTransactionDetailPassBook_SelectByAccNo");

                entity.Property(e => e.FineInterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate).HasMaxLength(50);

                entity.Property(e => e.ReturnShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType)
                    .IsRequired()
                    .HasMaxLength(13)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwLoanReturnTransactionGroupByRegion>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwLoanReturnTransactionGroupByRegion");

                entity.Property(e => e.BalancePercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanSeason)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnedPercentage)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .IsRequired()
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoan)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMachine>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMachine");

                entity.Property(e => e.MachineId)
                    .HasColumnName("MachineID")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.MachinePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.MachineType)
                    .HasMaxLength(200)
                    .IsUnicode(false);

                entity.Property(e => e.Manufacturer)
                    .HasMaxLength(200)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMeb2sloanMaster>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanMaster");

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CustomFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FifthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FourthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanDesc).HasMaxLength(200);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.MemberType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.PendingYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SixthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ThirthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMeb2sloanMasterForBalancingChecking>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanMasterForBalancingChecking");

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FirstLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanDesc).HasMaxLength(200);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.MemberType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.PendingYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMeb2sloanMasterForBalancingCheckingWithSaving>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanMasterForBalancingCheckingWithSaving");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDesc)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYearType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.MemberNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrc)
                    .IsRequired()
                    .HasColumnName("NRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PendingYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasColumnName("TransactionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMeb2sloanMasterOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanMasterOnlineCheck");

                entity.Property(e => e.ActualFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CustomFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.CustomReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FifthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FirstInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FirstLoanAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FirstLoanDate).HasColumnType("datetime");

                entity.Property(e => e.FourthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanDesc).HasMaxLength(200);

                entity.Property(e => e.LoanReturnPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.RemainingFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SecondInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SecondLoanAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SecondLoanDate).HasColumnType("datetime");

                entity.Property(e => e.SixthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ThirthInstallment).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMeb2sloanMasterPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_MEB2SLoanMasterPassBook_SelectByAccNo");

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate).HasColumnType("datetime");

                entity.Property(e => e.LoanReturnPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMeb2sloanMasterWithSaving>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanMasterWithSaving");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CustomReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FifthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FourthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDesc)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYearType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.MemberNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrc)
                    .IsRequired()
                    .HasColumnName("NRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PendingYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SixthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ThirthInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasColumnName("TransactionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMeb2sloanReturnTransactionDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanReturnTransactionDetail");

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.DateOfInstallment)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FormPrice)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanDesc).HasMaxLength(200);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.MemberType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Other)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PaidStatus)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ProfitSavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnTransactionCreatedBy).HasMaxLength(50);

                entity.Property(e => e.SavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMeb2sloanReturnTransactionDetailOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanReturnTransactionDetailOnlineCheck");

                entity.Property(e => e.ActualFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ActualReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.BankAccountNumber).HasMaxLength(50);

                entity.Property(e => e.ChalenNumber).HasMaxLength(50);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfInstallment).HasColumnType("datetime");

                entity.Property(e => e.FineAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.FormPrice).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.InterestAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanReturnTransactionDetailPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.NoOfInstallment).HasMaxLength(50);

                entity.Property(e => e.Other).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.PaidStatus).HasMaxLength(50);

                entity.Property(e => e.ProfitSavingAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingFine).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingInterest).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.RemainingReturn).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ReturnAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.ReturnDate).HasColumnType("datetime");

                entity.Property(e => e.SavingAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.SerialNumber).HasMaxLength(50);

                entity.Property(e => e.ShareAmount).HasColumnType("decimal(18, 2)");

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMeb2sloanReturnTransactionDetailPassBookSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_MEB2SLoanReturnTransactionDetailPassBook_SelectByAccNo");

                entity.Property(e => e.FineInterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate).HasColumnType("datetime");

                entity.Property(e => e.ReturnShortDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Source)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalBalance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionType)
                    .IsRequired()
                    .HasMaxLength(13)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMeb2sloanReturnTransactionDetailWithSaving>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SLoanReturnTransactionDetailWithSaving");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ChalenNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FineAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FormPrice)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDesc)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYearType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.MemberNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.NoOfInstallment)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrc)
                    .IsRequired()
                    .HasColumnName("NRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Other)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PaidStatus)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ProfitSavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnTransactionCreatedBy)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SavingAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondLoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SerialNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ShareAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalLoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasColumnName("TransactionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwMeb2smemberDetail>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SMemberDetail");

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.DateOfBirth)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.MemberType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.PersonPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMeb2spersonalInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEB2SPersonalInformationOnlineCheck");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.MemberNumber).HasMaxLength(50);

                entity.Property(e => e.MemberType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.PersonPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasColumnType("datetime");

                entity.Property(e => e.StateDivisionCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMebtslns10>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEBTSLNS10");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.FineAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType).HasMaxLength(50);

                entity.Property(e => e.LoanDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDesc).HasMaxLength(200);

                entity.Property(e => e.LoanType).HasMaxLength(50);

                entity.Property(e => e.LoanYearType).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasColumnType("datetime");

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate)
                    .HasMaxLength(10)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TotalReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwMebtslns10withSaving>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwMEBTSLNS10WithSaving");

                entity.Property(e => e.AccountNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.AccountType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ActualReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Address)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Balance)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Duration)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FineAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.InterestAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanBusinessType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanDesc)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LoanYearType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.MemberNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrc)
                    .IsRequired()
                    .HasColumnName("NRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Occupation)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Phone)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .IsRequired()
                    .HasColumnName("RegionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegistrationDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingFine)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingInterest)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RemainingReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.ReturnDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .IsRequired()
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalReturn)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TotalReturnAmount)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .IsRequired()
                    .HasColumnName("TownshipID")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .IsRequired()
                    .HasColumnName("TransactionID")
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwNrcname>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_NRCName");

                entity.Property(e => e.Nrcname)
                    .IsRequired()
                    .HasColumnName("NRCName")
                    .HasMaxLength(1);

                entity.Property(e => e.Nrcpkid).HasColumnName("NRCPkid");
            });

            modelBuilder.Entity<VwPassBookFrontSelectByAccNo>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPassBookFront_Select ByAccNo");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountStatus).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.BranchName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.FirstMemberFatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstMemberName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstNrc)
                    .IsRequired()
                    .HasColumnName("FirstNRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.FirstPhone)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.NrcofAdan)
                    .IsRequired()
                    .HasColumnName("NRCOfAdan")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.SecondMemberFatherName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondMemberName)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondNrc)
                    .IsRequired()
                    .HasColumnName("SecondNRC")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SecondPhone)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SpecialInstruction)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TodayDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwPension>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_Pension");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Department).HasMaxLength(100);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LatestSalary).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MonthlyPension).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.PensionBank).HasMaxLength(50);

                entity.Property(e => e.PensionDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PensionPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.PensionReportNo).HasMaxLength(50);

                entity.Property(e => e.PensionStartDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PensionType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(50);

                entity.Property(e => e.Saving).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPensionInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPensionInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.Department).HasMaxLength(100);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LatestSalary).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MonthlyPension).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.PensionBank).HasMaxLength(50);

                entity.Property(e => e.PensionDate).HasColumnType("datetime");

                entity.Property(e => e.PensionPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.PensionReportNo).HasMaxLength(50);

                entity.Property(e => e.PensionStartDate).HasColumnType("datetime");

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(50);

                entity.Property(e => e.Saving).HasMaxLength(50);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPensionOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPensionOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasColumnType("datetime");

                entity.Property(e => e.Department).HasMaxLength(100);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.LatestSalary).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.MonthlyPension).HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.PensionBank).HasMaxLength(50);

                entity.Property(e => e.PensionDate).HasColumnType("datetime");

                entity.Property(e => e.PensionPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.PensionReportNo).HasMaxLength(50);

                entity.Property(e => e.PensionStartDate).HasColumnType("datetime");

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(50);

                entity.Property(e => e.Saving).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPensionType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_PensionType");

                entity.Property(e => e.PensionType).HasMaxLength(500);

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.PensionTypePkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwPensionTypeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPensionTypeInformationOnlineCheck");

                entity.Property(e => e.PensionType).HasMaxLength(500);

                entity.Property(e => e.PensionTypeCode).HasMaxLength(50);

                entity.Property(e => e.PensionTypePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPersonalInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPersonalInformationOnlineCheck");

                entity.Property(e => e.AccountNumber).HasMaxLength(50);

                entity.Property(e => e.AccountType).HasMaxLength(50);

                entity.Property(e => e.Address).HasMaxLength(500);

                entity.Property(e => e.CreatedBy).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DateOfBirth).HasMaxLength(50);

                entity.Property(e => e.FatherName).HasMaxLength(50);

                entity.Property(e => e.Jicanumber)
                    .HasColumnName("JICANumber")
                    .HasMaxLength(50);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrc)
                    .HasColumnName("NRC")
                    .HasMaxLength(50);

                entity.Property(e => e.Occupation).HasMaxLength(500);

                entity.Property(e => e.PersonPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.Phone).HasMaxLength(50);

                entity.Property(e => e.RegionCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RegionId)
                    .HasColumnName("RegionID")
                    .HasMaxLength(50);

                entity.Property(e => e.RegistrationDate).HasMaxLength(50);

                entity.Property(e => e.StateDivisionCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.TownshipCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.TransactionId)
                    .HasColumnName("TransactionID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwPlaceOfBirth>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPlaceOfBirth");

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.TownshipPkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwPlaceOfBirthInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_PlaceOfBirthInformationOnlineCheck");

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);

                entity.Property(e => e.TownshipPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwProfileSelect>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_ProfileSelect");

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRankDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.LatestSalary)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name).HasMaxLength(50);

                entity.Property(e => e.Nrcnumber)
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(50);

                entity.Property(e => e.PlaceOfBirth).HasMaxLength(50);

                entity.Property(e => e.Race).HasMaxLength(50);

                entity.Property(e => e.Religion).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPunishment>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPunishment");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CrimeYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(800);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.OrderNo)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PunishmentPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.PunishmentType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PunishmentTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPunishmentInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPunishmentInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.CrimeYear).HasMaxLength(50);

                entity.Property(e => e.Description).HasMaxLength(800);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.OrderDate).HasColumnType("datetime");

                entity.Property(e => e.OrderNo).HasMaxLength(50);

                entity.Property(e => e.PunishmentPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.PunishmentTypeCode).HasMaxLength(500);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwPunishmentType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPunishmentType");

                entity.Property(e => e.PunishmentType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.PunishmentTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.YearlyPunishmentType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.YearlyPunishmentTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwPunishmentTypeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwPunishmentTypeInformationOnlineCheck");

                entity.Property(e => e.PunishmentType).HasMaxLength(500);

                entity.Property(e => e.PunishmentTypeCode).HasMaxLength(50);

                entity.Property(e => e.PunishmentTypePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);

                entity.Property(e => e.YearlyPunishmentTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwRankType>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwRankType");

                entity.Property(e => e.EmployeeRankType)
                    .HasMaxLength(500)
                    .IsFixedLength();

                entity.Property(e => e.EmployeeRankTypeCode)
                    .HasMaxLength(10)
                    .IsFixedLength();

                entity.Property(e => e.RankDescription).HasMaxLength(50);

                entity.Property(e => e.RankLevelMyan)
                    .IsRequired()
                    .HasColumnName("RankLevel_Myan")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankType).HasMaxLength(500);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwRankTypeInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwRankTypeInformationOnlineCheck");

                entity.Property(e => e.EmployeeRankTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankDescription).HasMaxLength(50);

                entity.Property(e => e.RankType).HasMaxLength(500);

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.RankTypePkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwRankTypeSelect>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_RankType_Select");

                entity.Property(e => e.EmployeeRankType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.EmployeeRankTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankDescription)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankLevel)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankLevelMyan)
                    .IsRequired()
                    .HasColumnName("RankLevel_Myan")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankTypeCode)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.RankTypePkid)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<VwRegion>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwRegion");

                entity.Property(e => e.Region).HasMaxLength(500);

                entity.Property(e => e.RegionCode).HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);
            });

            modelBuilder.Entity<VwRelationInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwRelationInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RelationAddress).HasMaxLength(200);

                entity.Property(e => e.RelationDob)
                    .HasColumnName("RelationDOB")
                    .HasColumnType("datetime");

                entity.Property(e => e.RelationFatherName).HasMaxLength(50);

                entity.Property(e => e.RelationMotherName).HasMaxLength(50);

                entity.Property(e => e.RelationName).HasMaxLength(50);

                entity.Property(e => e.RelationOccupation).HasMaxLength(50);

                entity.Property(e => e.RelationType).HasMaxLength(50);

                entity.Property(e => e.RelationshipPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwSonAndDaughterInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwSonAndDaughterInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.SonAndDaughterAddress).HasMaxLength(200);

                entity.Property(e => e.SonAndDaughterDob)
                    .HasColumnName("SonAndDaughterDOB")
                    .HasColumnType("datetime");

                entity.Property(e => e.SonAndDaughterName).HasMaxLength(50);

                entity.Property(e => e.SonAndDaughterOccupation).HasMaxLength(50);

                entity.Property(e => e.SonAndDaughterPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwStateDivision>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwStateDivision");

                entity.Property(e => e.StateDivision).HasMaxLength(50);

                entity.Property(e => e.StateDivisionCode).HasMaxLength(50);

                entity.Property(e => e.StateDivisionPkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwStateDivisionName>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_StateDivisionName");

                entity.Property(e => e.StateDivision).HasMaxLength(50);

                entity.Property(e => e.StateDivisionCode).HasMaxLength(50);

                entity.Property(e => e.StateDivisionPkid).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<VwTownship>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwTownship");

                entity.Property(e => e.StateDivision).HasMaxLength(50);

                entity.Property(e => e.StateDivisionId)
                    .HasColumnName("StateDivisionID")
                    .HasMaxLength(50);

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipCode).HasMaxLength(50);
            });

            modelBuilder.Entity<VwTrainingHistory>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwTrainingHistory");

                entity.Property(e => e.BranchCode).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Location).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.RankTypeCode).HasMaxLength(50);

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.SchoolName).HasMaxLength(200);

                entity.Property(e => e.StartDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.TrainingHistoryPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.TrainingTitle).HasMaxLength(200);
            });

            modelBuilder.Entity<VwTrainingHistoryInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwTrainingHistoryInformationOnlineCheck");

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.EndDate).HasColumnType("datetime");

                entity.Property(e => e.Location).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Remark).HasMaxLength(500);

                entity.Property(e => e.SchoolName).HasMaxLength(200);

                entity.Property(e => e.StartDate).HasColumnType("datetime");

                entity.Property(e => e.TrainingHistoryPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.TrainingTitle).HasMaxLength(200);

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);
            });

            modelBuilder.Entity<VwUser>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwUser");

                entity.Property(e => e.CreatedDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Department).HasMaxLength(500);

                entity.Property(e => e.DepartmentCode).HasMaxLength(50);

                entity.Property(e => e.LoginTime).HasColumnType("datetime");

                entity.Property(e => e.LogoutTime).HasColumnType("datetime");

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.Password).HasMaxLength(100);

                entity.Property(e => e.Username).HasMaxLength(50);
            });

            modelBuilder.Entity<VwVillage>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwVillage");

                entity.Property(e => e.Township).HasMaxLength(500);

                entity.Property(e => e.TownshipId)
                    .HasColumnName("TownshipID")
                    .HasMaxLength(50);

                entity.Property(e => e.VillageCode).HasMaxLength(50);

                entity.Property(e => e.VillageName).HasMaxLength(500);
            });

            modelBuilder.Entity<VwYearlyBonus>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_YearlyBonus");

                entity.Property(e => e.ApprovedDate).HasColumnType("datetime");

                entity.Property(e => e.ApprovedNo).HasMaxLength(50);

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.YearlyBonusCount).HasMaxLength(50);

                entity.Property(e => e.YearlyBonusDate).HasColumnType("datetime");

                entity.Property(e => e.YearlyBonusPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.YearlyBonusSalary).HasMaxLength(50);
            });

            modelBuilder.Entity<VwYearlyBonusInformationOnlineCheck>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vwYearlyBonusInformationOnlineCheck");

                entity.Property(e => e.ApprovedDate).HasColumnType("datetime");

                entity.Property(e => e.ApprovedNo).HasMaxLength(50);

                entity.Property(e => e.CreatedDate).HasColumnType("datetime");

                entity.Property(e => e.EmployeeCode).HasMaxLength(50);

                entity.Property(e => e.ModifiedDate).HasColumnType("datetime");

                entity.Property(e => e.UploadForTownship).HasMaxLength(50);

                entity.Property(e => e.YearlyBonusCount).HasMaxLength(50);

                entity.Property(e => e.YearlyBonusDate).HasColumnType("datetime");

                entity.Property(e => e.YearlyBonusPkid).ValueGeneratedOnAdd();

                entity.Property(e => e.YearlyBonusSalary).HasMaxLength(50);
            });

            modelBuilder.Entity<VwYearlyPunishment>(entity =>
            {
                entity.HasNoKey();

                entity.ToView("vw_YearlyPunishment");

                entity.Property(e => e.CrimeYear)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.CurrentRank)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.DateOfBirth)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JobAddress)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.JoinDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Name)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.Nrcnumber)
                    .IsRequired()
                    .HasColumnName("NRCNumber")
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.OrderDate)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.SerialNumber)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.StateDivision)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);

                entity.Property(e => e.YearlyPunishmentType)
                    .IsRequired()
                    .HasMaxLength(1)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
