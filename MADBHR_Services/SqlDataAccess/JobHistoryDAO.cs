using MADBHR_Common.Extensions;
using MADBHR_Data.Models;
using MADBHR_Models.JobExperience;
using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;

namespace MADBHR_Services.SqlDataAccess
{
    public class JobHistoryDAO:GenericCommonExtensions<TbJobHistory>
    {
        public dynamic SaveJobHistory(IDbCommand cmd, TbJobHistory jobHistory, int userId, int Id)
        {
            try
            {
                cmd.CommandText = "Sp_JobPosting_Save";
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Clear();
                cmd.Connection.Open();

                cmd.AddParameter("@id", Id);
                cmd.AddParameter("@pkid", jobHistory.JobHistoryPkid);
                cmd.AddParameter("@EmployeeCode", jobHistory.EmployeeCode);
                cmd.AddParameter("@DepartmentCode", jobHistory.DepartmentCode);
                cmd.AddParameter("@RankType" ,jobHistory.RankTypeCode1);
                cmd.AddParameter("@FromDate", jobHistory.FromDate);
                cmd.AddParameter("@ToDate", jobHistory.ToDate);
                cmd.AddParameter("@years", jobHistory.JobYear);
                cmd.AddParameter("@months", jobHistory.JobMonth);
                cmd.AddParameter("@days", jobHistory.JobDay);
                cmd.AddParameter("@Duration", jobHistory.Duration);
                cmd.AddParameter("@Remark", jobHistory.Remark);
                cmd.AddParameter("@IsCurrent", jobHistory.IsCurrent);
                cmd.AddParameter("@IsDeleted", false);
                cmd.AddParameter("@CreatedBy", userId);
                cmd.AddParameter("@UploadForTownship", jobHistory.UploadForTownship);


                cmd.ExecuteNonQuery();
                cmd.Connection.Close();
                return jobHistory;
            }
            catch (Exception ex)
            {
                return ex;
            }
        }
        public List<TbJobHistory> GetJobHistory(IDbCommand cmd, string? EmployeeCode = null, DateTime? FromDate = null, DateTime? ToDate = null, string? StateDivisionCode = null, string? TownshipCode = null)
        {

            cmd.CommandText = "Sp_JobPosting_SelectByEmployeeCode";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Connection.Open();
            cmd.AddParameter("@EmployeeCode", EmployeeCode);
            cmd.AddParameter("@FromDate", FromDate);
            cmd.AddParameter("@ToDate", ToDate);


            SqlDataAdapter ResAdapter = new SqlDataAdapter((SqlCommand)cmd);
            DataSet ResDs = new DataSet();
            ResAdapter.Fill(ResDs);
            List<TbJobHistory> lstJobHisotories = new List<TbJobHistory>();
            if (ResDs != null)
            {
                if (ResDs.Tables.Count > 0)
                {
                    if (ResDs.Tables[0] != null)
                    {
                        if (ResDs.Tables[0].Rows.Count > 0)
                        {
                            for (int i = 0; i < ResDs.Tables[0].Rows.Count; i++)
                            {
                                TbJobHistory jobHistory = new TbJobHistory
                                {
                                    JobHistoryPkid = ResDs.Tables[0].Rows[i]["JobHistoryPkid"] != DBNull.Value ? Convert.ToInt32(ResDs.Tables[0].Rows[i]["JobHistoryPkid"]) : 0,
                                    EmployeeCode = ResDs.Tables[0].Rows[i]["EmployeeCode"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["EmployeeCode"].ToString() : "",
                                    FromDateStr = ResDs.Tables[0].Rows[i]["FromDate"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["FromDate"].ToString() : "",
                                    ToDateStr = ResDs.Tables[0].Rows[i]["ToDate"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["ToDate"].ToString() : "",
                                    Department_Name = ResDs.Tables[0].Rows[i]["Department_Name"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Department_Name"].ToString() : "",
                                    RankTypeCode = ResDs.Tables[0].Rows[i]["RankType_Code"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["RankType_Code"].ToString() : "",
                                    RankType = ResDs.Tables[0].Rows[i]["RankType"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["RankType"].ToString() : "",
                                    Duration = ResDs.Tables[0].Rows[i]["Duration"] != DBNull.Value ? Convert.ToInt32(ResDs.Tables[0].Rows[i]["Duration"]) : 0,
                                    IsCurrent = ResDs.Tables[0].Rows[i]["IsCurrent"] != DBNull.Value ? Convert.ToBoolean(ResDs.Tables[0].Rows[i]["IsCurrent"]) :false,
                                    Remark = ResDs.Tables[0].Rows[i]["Remark"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Remark"].ToString() : "",
                                    StateDivision = ResDs.Tables[0].Rows[i]["StateDivision"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["StateDivision"].ToString() : "",
                                    Township = ResDs.Tables[0].Rows[i]["Township"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Township"].ToString() : "",
                                    EmployeeName = ResDs.Tables[0].Rows[i]["Name"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Name"].ToString() : "",
                                    IsDeleted = ResDs.Tables[0].Rows[i]["IsDeleted"] != DBNull.Value ? Convert.ToBoolean(ResDs.Tables[0].Rows[i]["IsDeleted"]) : false,
                                    CreatedDate = ResDs.Tables[0].Rows[i]["CreatedDate"] != DBNull.Value ? Convert.ToDateTime(ResDs.Tables[0].Rows[i]["CreatedDate"]) : DateTime.Now,
                                    CreatedBy = ResDs.Tables[0].Rows[i]["CreatedBy"] != DBNull.Value ? Convert.ToInt32(ResDs.Tables[0].Rows[i]["CreatedBy"]) : 0
                                };

                                lstJobHisotories.Add(jobHistory);
                            }
                        }
                    }
                }
            }
            cmd.Connection.Close();
            return lstJobHisotories;

        }
        public List<TbJobHistory> GetCurrentJobHistory(IDbCommand cmd, string? EmployeeCode = null, string? StateDivisionCode=null,string? TownshipCode=null)
        {

            cmd.CommandText = "Sp_GetCurrentJobPosting";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Connection.Open();
            cmd.AddParameter("@EmployeeCode", EmployeeCode);
            cmd.AddParameter("@DivisionCode", StateDivisionCode);
            cmd.AddParameter("@TownshipCode", TownshipCode);
            SqlDataAdapter ResAdapter = new SqlDataAdapter((SqlCommand)cmd);
            DataSet ResDs = new DataSet();
            ResAdapter.Fill(ResDs);
            List<TbJobHistory> lstJobHisotories = new List<TbJobHistory>();
            if (ResDs != null)
            {
                if (ResDs.Tables.Count > 0)
                {
                    if (ResDs.Tables[0] != null)
                    {
                        if (ResDs.Tables[0].Rows.Count > 0)
                        {
                            for (int i = 0; i < ResDs.Tables[0].Rows.Count; i++)
                            {
                                TbJobHistory jobHistory = new TbJobHistory
                                {
                                    JobHistoryPkid = ResDs.Tables[0].Rows[i]["JobHistoryPkid"] != DBNull.Value ? Convert.ToInt32(ResDs.Tables[0].Rows[i]["JobHistoryPkid"]) : 0,
                                    EmployeeCode = ResDs.Tables[0].Rows[i]["EmployeeCode"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["EmployeeCode"].ToString() : "",
                                    FromDateStr = ResDs.Tables[0].Rows[i]["FromDate"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["FromDate"].ToString() : "",
                                    ToDateStr = ResDs.Tables[0].Rows[i]["ToDate"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["ToDate"].ToString() : "",
                                    Department_Name = ResDs.Tables[0].Rows[i]["Department_Name"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Department_Name"].ToString() : "",
                                    RankTypeCode = ResDs.Tables[0].Rows[i]["RankType_Code"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["RankType_Code"].ToString() : "",
                                    RankType = ResDs.Tables[0].Rows[i]["RankType"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["RankType"].ToString() : "",
                                    Duration = ResDs.Tables[0].Rows[i]["Duration"] != DBNull.Value ? Convert.ToInt32(ResDs.Tables[0].Rows[i]["Duration"]) : 0,
                                    IsCurrent = ResDs.Tables[0].Rows[i]["IsCurrent"] != DBNull.Value ? Convert.ToBoolean(ResDs.Tables[0].Rows[i]["IsCurrent"]) : false,
                                    Remark = ResDs.Tables[0].Rows[i]["Remark"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Remark"].ToString() : "",
                                    StateDivision = ResDs.Tables[0].Rows[i]["StateDivision"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["StateDivision"].ToString() : "",
                                    Township = ResDs.Tables[0].Rows[i]["Township"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Township"].ToString() : "",
                                    EmployeeName = ResDs.Tables[0].Rows[i]["Name"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Name"].ToString() : "",
                                    IsDeleted = ResDs.Tables[0].Rows[i]["IsDeleted"] != DBNull.Value ? Convert.ToBoolean(ResDs.Tables[0].Rows[i]["IsDeleted"]) : false,
                                    CreatedDate = ResDs.Tables[0].Rows[i]["CreatedDate"] != DBNull.Value ? Convert.ToDateTime(ResDs.Tables[0].Rows[i]["CreatedDate"]) : DateTime.Now,
                                    CreatedBy = ResDs.Tables[0].Rows[i]["CreatedBy"] != DBNull.Value ? Convert.ToInt32(ResDs.Tables[0].Rows[i]["CreatedBy"]) : 0
                                };

                                lstJobHisotories.Add(jobHistory);
                            }
                        }
                    }
                }
            }
            cmd.Connection.Close();
            return lstJobHisotories;

        }
        public List<VMJobExperience> GetTotalJobExperience(IDbCommand cmd, string? EmployeeCode = null, string? StateDivisionCode = null, string? TownshipCode = null)
        {

            cmd.CommandText = "SP_GetTotalJobExperience";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Connection.Open();
            cmd.AddParameter("@EmployeeCode", EmployeeCode);
            cmd.AddParameter("@StateDivisionCode", StateDivisionCode);
            cmd.AddParameter("@TownshipCode", TownshipCode);
            SqlDataAdapter ResAdapter = new SqlDataAdapter((SqlCommand)cmd);
            DataSet ResDs = new DataSet();
            ResAdapter.Fill(ResDs);
            List<VMJobExperience> lstJobExperience = new List<VMJobExperience>();
            if (ResDs != null)
            {
                if (ResDs.Tables.Count > 0)
                {
                    if (ResDs.Tables[0] != null)
                    {
                        if (ResDs.Tables[0].Rows.Count > 0)
                        {
                            for (int i = 0; i < ResDs.Tables[0].Rows.Count; i++)
                            {
                                VMJobExperience jobExperience = new VMJobExperience
                                {
                                    SerialNumber= ResDs.Tables[0].Rows[i]["SerialNumber"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["SerialNumber"].ToString() : "",
                                    //EmployeeCode = ResDs.Tables[0].Rows[i]["EmployeeCode"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["EmployeeCode"].ToString() : "",
                                    EmployeeName = ResDs.Tables[0].Rows[i]["EmployeeName"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["EmployeeName"].ToString() : "",
                                    RankType = ResDs.Tables[0].Rows[i]["RankType"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["RankType"].ToString() : "",
                                    Department = ResDs.Tables[0].Rows[i]["Department"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Department"].ToString() : "",
                                    NRC = ResDs.Tables[0].Rows[i]["NRC"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["NRC"].ToString() : "",
                                    JoinDate = ResDs.Tables[0].Rows[i]["JEJoinDate"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JEJoinDate"].ToString() : "",
                                    JExpYear = ResDs.Tables[0].Rows[i]["JExpYear"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JExpYear"].ToString() : "",
                                    JExpMonth = ResDs.Tables[0].Rows[i]["JExpMonth"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JExpMonth"].ToString() : "",
                                    JExpDay = ResDs.Tables[0].Rows[i]["JExpDay"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JExpDay"].ToString() : ""
                                    //TotalExperienceYear = ResDs.Tables[0].Rows[i]["jobExp"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["jobExp"].ToString() : ""

                                };

                                lstJobExperience.Add(jobExperience);
                            }
                        }
                    }
                }
            }
            cmd.Connection.Close();
            return lstJobExperience;

        }
        public List<VMJobExperience> GetCurrentJobExperience(IDbCommand cmd, string? EmployeeCode = null, string? StateDivisionCode = null, string? TownshipCode = null)
        {

            cmd.CommandText = "SP_GetCurrentJobExperience";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Connection.Open();
            cmd.AddParameter("@EmployeeCode", EmployeeCode);
            cmd.AddParameter("@StateDivisionCode", StateDivisionCode);
            cmd.AddParameter("@TownshipCode", TownshipCode);
            SqlDataAdapter ResAdapter = new SqlDataAdapter((SqlCommand)cmd);
            DataSet ResDs = new DataSet();
            ResAdapter.Fill(ResDs);
            List<VMJobExperience> lstJobExperience = new List<VMJobExperience>();
            if (ResDs != null)
            {
                if (ResDs.Tables.Count > 0)
                {
                    if (ResDs.Tables[0] != null)
                    {
                        if (ResDs.Tables[0].Rows.Count > 0)
                        {
                            for (int i = 0; i < ResDs.Tables[0].Rows.Count; i++)
                            {
                                VMJobExperience jobExperience = new VMJobExperience
                                {
                                    SerialNumber = ResDs.Tables[0].Rows[i]["SerialNumber"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["SerialNumber"].ToString() : "",
                                    //EmployeeCode = ResDs.Tables[0].Rows[i]["EmployeeCode"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["EmployeeCode"].ToString() : "",
                                    EmployeeName = ResDs.Tables[0].Rows[i]["EmployeeName"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["EmployeeName"].ToString() : "",
                                    RankType = ResDs.Tables[0].Rows[i]["RankType"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["RankType"].ToString() : "",
                                    Department = ResDs.Tables[0].Rows[i]["Department"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["Department"].ToString() : "",
                                    NRC = ResDs.Tables[0].Rows[i]["NRC"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["NRC"].ToString() : "",
                                    JoinDate = ResDs.Tables[0].Rows[i]["JEJoinDate"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JEJoinDate"].ToString() : "",
                                    JExpYear = ResDs.Tables[0].Rows[i]["JExpYear"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JExpYear"].ToString() : "",
                                    JExpMonth = ResDs.Tables[0].Rows[i]["JExpMonth"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JExpMonth"].ToString() : "",
                                    JExpDay = ResDs.Tables[0].Rows[i]["JExpDay"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["JExpDay"].ToString() : ""
                                    //TotalExperienceYear = ResDs.Tables[0].Rows[i]["jobExp"] != DBNull.Value ? ResDs.Tables[0].Rows[i]["jobExp"].ToString() : ""

                                };

                                lstJobExperience.Add(jobExperience);
                            }
                        }
                    }
                }
            }
            cmd.Connection.Close();
            return lstJobExperience;

        }
        public void DeleteJobHistory(IDbCommand cmd, int jobHistoryPkid, int userId)
        {

            cmd.CommandText = "Sp_JobPosting_Delete";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Clear();
            cmd.Connection.Open();
            cmd.AddParameter("@JobPostingPkid", jobHistoryPkid);
            cmd.AddParameter("@CreatedBy", userId);
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
        }
        protected override void ReadRecord(ref IDataReader aDataReader, ref TbJobHistory aInfo, string prefix)
        { }
    }
}
