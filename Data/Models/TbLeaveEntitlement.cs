using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using static MADBHR_Data.Models.Attributes.CustomAttribute;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace MADBHR_Data.Models
{
    public partial class TbLeaveEntitlement
    {
        public int LeaveEntitlementPkid { get; set; }
        public string BranchCode { get; set; }
        public string DepartmentCode { get; set; }
        public string RankTypeCode { get; set; }
        public string EmployeeCode { get; set; }
        public DateTime? ApprovedDate { get; set; }
        public string ApprovedNo { get; set; }
        public DateTime? StartDate { get; set; }
        public DateTime? EndDate { get; set; }
        public string Period { get; set; }
        public string LeaveTypeCode { get; set; }
        public bool? IsDeleted { get; set; }
        public bool? IsRecordEdited { get; set; }
        public DateTime? ModifiedDate { get; set; }
        public DateTime? CreatedDate { get; set; }
        public int? CreatedBy { get; set; }
        public string UploadForTownship { get; set; }
        [NotMapped]
        [SkipProperty]
        public string SerialNumber { get; set; }
        [NotMapped]
        [SkipProperty]
        public string ApproveDateStr { get; set; }
        [NotMapped]
        [SkipProperty]
        public string StartDateStr { get; set; }
        [NotMapped]
        [SkipProperty]
        public string EndDateStr { get; set; }
        [NotMapped]
        [SkipProperty]
        public string EmployeeName { get; set; }
        [NotMapped]
        [SkipProperty]
        public string LeaveType { get; set; }
        [NotMapped]
        [SkipProperty]
        public string StateDivision { get; set; }
        [NotMapped]
        [SkipProperty]
        public string Township { get; set; }
        [NotMapped]
        [SkipProperty]
        public string RankType { get; set; }
        [NotMapped]
        [SkipProperty]
        public string Department { get; set; }
    }
}
