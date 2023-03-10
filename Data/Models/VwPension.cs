using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace MADBHR_Data.Models
{
    public partial class VwPension
    {
        public int PensionPkid { get; set; }
        public string BranchCode { get; set; }
        public string DepartmentCode { get; set; }
        public string RankTypeCode { get; set; }
        public string EmployeeCode { get; set; }
        public string Name { get; set; }
        public string FatherName { get; set; }
        public string RankType { get; set; }
        public string Department { get; set; }
        public string PensionType { get; set; }
        public string PensionReportNo { get; set; }
        public string DateOfBirth { get; set; }
        public string PensionDate { get; set; }
        public string PensionTypeCode { get; set; }
        public string LatestSalary { get; set; }
        public string MonthlyPension { get; set; }
        public string Saving { get; set; }
        public string PensionStartDate { get; set; }
        public string PensionBank { get; set; }
        public string Remark { get; set; }
        public bool? IsDeleted { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? CreatedBy { get; set; }
    }
}
