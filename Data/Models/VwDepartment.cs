using System;
using System.Collections.Generic;

// Code scaffolded by EF Core assumes nullable reference types (NRTs) are not used or disabled.
// If you have enabled NRTs for your project, then un-comment the following line:
// #nullable disable

namespace MADBHR_Data.Models
{
    public partial class VwDepartment
    {
        public int DepartmentPkid { get; set; }
        public string DepartmentCode { get; set; }
        public string Department { get; set; }
    }
}
