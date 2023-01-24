﻿using MADBHR_Data.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace MADBHR_Services.Base
{
    public interface IInternationalKnowledgeServices
    {
        Task<dynamic> SaveIntKnowledge(TbIntKnowledge intKnowledge, int userId, int Id);
        List<TbIntKnowledge> GetIntKnowledge(string? EmployeeCode = null, DateTime? FromDate = null, DateTime? ToDate = null);
        void DeleteIntKnowledge(int intKnowledgePkid, int userId);
    }
}
