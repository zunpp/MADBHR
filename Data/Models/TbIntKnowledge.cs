using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using static MADBHR_Data.Models.Attributes.CustomAttribute;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace MADBHR_Data.Models
{
    public partial class TbIntKnowledge
    {
        public int IntKnowledgePkid { get; set; }
        public string EmployeeCode { get; set; }
        public string BranchCode { get; set; }
        public string DepartmentCode { get; set; }
        public string RankTypeCode { get; set; }
        public DateTime? FromDate { get; set; }
        public DateTime? ToDate { get; set; }
        public string CountryName { get; set; }
        public string Description { get; set; }
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
        public string FromDateStr { get; set; }
        [NotMapped]
        [SkipProperty]
        public string ToDateStr { get; set; }

        [NotMapped]
        [SkipProperty]
        public string EmployeeName { get; set; }
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
