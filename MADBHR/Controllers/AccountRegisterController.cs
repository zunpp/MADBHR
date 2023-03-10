using MADBHR.Helper;
using MADBHR_Data.Models;
using MADBHR_Services.Base;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using NLog;
using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using X.PagedList;

namespace MADBHR.Controllers
{
    public class AccountRegisterController : Controller
    {
        private readonly MADBAdminSolutionContext _context;
        private readonly IAccountRegisterServices _accountRegisterServices;
        private readonly Pagination _pagination;
        private readonly ILogger<AccountRegisterController> _logger;
        public AccountRegisterController(MADBAdminSolutionContext context, IAccountRegisterServices accountRegisterServices, IOptions<Pagination> pagination,ILogger<AccountRegisterController> logger)
        {
            _context = context;
            _accountRegisterServices = accountRegisterServices;
            _pagination = pagination.Value;
            _logger = logger;
        }
        public void Initialize(TbUserLogin tbUserLogin = null)
        {
            var userId = HttpContext.User.Identity.Name;
            ViewBag.lstLogIn = _context.TbUserLogin.Where(x => x.Status == "Enable" && x.UserPkid == Convert.ToInt32(userId)).FirstOrDefault();
            List<string> accountType = new List<string>();
            accountType.Add("Head Admin");
            accountType.Add("Super Admin");
            accountType.Add("User");
            ViewData["AccountType"] = new SelectList(accountType, tbUserLogin?.AccountType);
            List<string> departments = new List<string>();
            departments.Add("Admin");
            departments.Add("Account");
            departments.Add("Loan");
            departments.Add("JICA TSL");
            departments.Add("HR");
            departments.Add("Banking");
            departments.Add("Budget");
            departments.Add("IT");
            departments.Add("RSD");
            departments.Add("MEB TSL");
            departments.Add("All");
            ViewData["Department"] = new SelectList(departments, tbUserLogin?.Department);
            List<string> office = new List<string>();
            office.Add("Head Office");
            office.Add("Head Region Office");
            office.Add("Region Office");
            ViewData["Office"] = new SelectList(office, tbUserLogin?.Office);
            var stateDivisions = _context.TbStateDivision.Select(x => new { x.StateDivisionCode, x.StateDivision }).ToList();
            ViewData["StateDivisionCode"] = new SelectList(stateDivisions, "StateDivisionCode", "StateDivision", tbUserLogin?.StateDivisionId);
            var stateDivisionsforHeadAdmin = _context.TbStateDivision.Where(x=>x.StateDivisionPkid>=18).Select(x => new { x.StateDivisionCode, x.StateDivision }).ToList();
            ViewData["StateDivisionCodeForHeadAdmin"] = new SelectList(stateDivisionsforHeadAdmin, "StateDivisionCode", "StateDivision", tbUserLogin?.StateDivisionId);
            var townships = _context.TbTownAndDivision.Select(x => new { x.TownCode, x.TownName }).ToList();
            ViewData["TownshipCode"] = new SelectList(townships, "TownCode", "TownName", tbUserLogin?.TownshipId);
        }
        public IActionResult Index(string? StateDivisionCode = null, string? TownshipCode = null,string? UsernameOrEmail=null, int? page = 1)
        {
            Initialize();
            var userId = HttpContext.User.Identity.Name;
            var userInfo = _context.TbUserLogin.Where(x => x.Status == "Enable" && x.UserPkid == Convert.ToInt32(userId)).FirstOrDefault();
            ViewBag.account = userInfo.AccountType;
            ViewBag.TownshipId = userInfo.TownshipId;
            if (userInfo.AccountType == "Super Admin")
            {
                StateDivisionCode = userInfo.StateDivisionId;
                var stateDivisionCodes = _context.TbStateDivision.Where(x => x.StateDivisionCode == userInfo.StateDivisionId).ToList();
                ViewData["StateDivision"] = new SelectList(stateDivisionCodes, "StateDivisionCode", "StateDivision", stateDivisionCodes[0].StateDivisionCode);
            }
            else if (userInfo.AccountType == "Head Admin")
            {
                var stateDivisionCodes = _context.TbStateDivision.Select(x => new { x.StateDivision, x.StateDivisionCode }).ToList();
                ViewData["StateDivision"] = new SelectList(stateDivisionCodes, "StateDivisionCode", "StateDivision");
            }
            else if (userInfo.AccountType == "User")
            {
                TownshipCode = _context.TbTownAndDivision.Where(x => x.TownCode == userInfo.TownshipId).Select(x => x.TownCode).FirstOrDefault();
                StateDivisionCode = userInfo.StateDivisionId;
                TownshipCode = TownshipCode == null ? "0" : TownshipCode;
                var stateDivisionCodes = _context.TbStateDivision.Where(x => x.StateDivisionCode == userInfo.StateDivisionId).ToList();
                ViewData["StateDivision"] = new SelectList(stateDivisionCodes, "StateDivisionCode", "StateDivision", stateDivisionCodes[0].StateDivisionCode);

            }

            TempData["TownshipCode"] = TownshipCode;
            TempData["StateDivisionCode"] = StateDivisionCode;
            TempData["UsernameOrEmail"] = UsernameOrEmail;
            var pageSize = _pagination.PageSize;
            ViewData["Page"] = page;
            ViewData["PageSize"] = pageSize;
            // var EmployeeCode = _context.TbEmployee.Where(x => x.SerialNumber == SerialNumber).Select(x => x.EmployeeCode).FirstOrDefault();

            var accounts = _accountRegisterServices.GetAccount(StateDivisionCode, TownshipCode, UsernameOrEmail);
            return View(accounts.OrderByDescending(x => x.CreatedDate).ToList().ToPagedList((int)page, pageSize));
        }
        public IActionResult Create()
        {
            Initialize();

            return View();
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(TbUserLogin userLogin)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                var userId = HttpContext.User.Identity.Name;
                var userInfo = _context.TbUserLogin.Where(x => x.UserPkid == Convert.ToInt32(userId)).FirstOrDefault();
                MappedDiagnosticsLogicalContext.Set("userId", userInfo.UserPkid);
                try
                {                 
                  
                    userLogin.UserPkid = 0;
                    if(userLogin.StateDivisionIdForUser !=null)
                    {
                        userLogin.StateDivisionId = userLogin.StateDivisionIdForUser;
                    }
                    userLogin.Status = "Enable";
                    var emp = await _accountRegisterServices.SaveAccount(userLogin, Convert.ToInt32(userId), 0);
                    _logger.LogInformation("Successfully Create");
                    return RedirectToAction("Index");
                }
                catch (Exception e)
                {
                    _logger.LogError(e.Message);

                    await transaction.RollbackAsync();
                }
            }

            return View();
        }

        public IActionResult Edit(int Id)
        {
            var account = _context.TbUserLogin.Where(x => x.UserPkid == Id).FirstOrDefault();
            //award.SerialNumber = _context.TbEmployee.Where(x => x.EmployeeCode == award.EmployeeCode).Select(x => x.SerialNumber).FirstOrDefault();
           
            Initialize(account);
            ViewBag.Password = account.Password;
            ViewBag.account = account.AccountType;
            ViewBag.stateCode = account.StateDivisionId;
            ViewBag.townCode = account.TownshipId;
            return View(account);
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(TbUserLogin account, bool? RedirectToSonAndDaughter = null)
        {
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                var userId = HttpContext.User.Identity.Name;
                var userInfo = _context.TbUserLogin.Where(x => x.UserPkid == Convert.ToInt32(userId)).FirstOrDefault();
                MappedDiagnosticsLogicalContext.Set("userId",userInfo.UserPkid);
                try
                {

                    //if (ModelState.IsValid)
                    //{

                    //account.UploadForTownship = userInfo.TownshipId == null || userInfo.TownshipId == "" ? userInfo.StateDivisionId : userInfo.TownshipId;
                    if (account.StateDivisionIdForUser != null)
                    {
                        account.StateDivisionId = account.StateDivisionIdForUser;
                    }
                    account.Status = "Enable";
                    var emp = await _accountRegisterServices.SaveAccount(account, Convert.ToInt32(userId), 0);
                    _logger.LogInformation("Successfully Edit");
                    return RedirectToAction("Index");

                }
                catch (Exception e)
                {
                    _logger.LogError(e.Message);
                    await transaction.RollbackAsync();
                }
            }

            return View();
        }

        [HttpGet]
        public IActionResult GetUserInfo(string useroremail)
        {
            var result = _context.TbUserLogin.Where(x => x.UsernameOrEmail == useroremail && x.Status == "Enable").FirstOrDefault();
            return Json(result);
        }
        [HttpGet]
        public IActionResult GetTownhsipByDivision(string divisonCode)
        {
            var townships = _context.TbTownAndDivision.Where(x => x.DivisionCode == divisonCode).ToList();
            //ViewData["PlaceOfBirth"] = new SelectList(townships, "TownshipCode", "Township");
            return Json(townships);
        }
        [HttpGet]
        public IActionResult GetTownship(string divisonCode, string TownshipCode)
        {
            var townships = _context.TbTownAndDivision.Where(x => x.DivisionCode == divisonCode && x.TownCode == TownshipCode).ToList();
            //ViewData["PlaceOfBirth"] = new SelectList(townships, "TownshipCode", "Township");
            return Json(townships);
        }
        public async Task<IActionResult> UpdateUserStatus(int UserId, int Active)
        {
            var userId = HttpContext.User.Identity.Name;
            using (var transaction = await _context.Database.BeginTransactionAsync())
            {
                var user = _context.TbUserLogin.Where(x => x.UserPkid == UserId).FirstOrDefault();
                if (Active == 1)
                    user.Status = "Enable";
                else
                    user.Status = "Disable";
                await _accountRegisterServices.SaveAccount(user,Convert.ToInt32(userId),0);
                await transaction.CommitAsync();
            }

            return Ok();
        }
        public IActionResult GetAccounts()
        {
            string StateDivisionCode = null;
            string TownshipCode = null;
            var userId = HttpContext.User.Identity.Name;
            var userInfo = _context.TbUserLogin.Where(x => x.Status == "Enable" && x.UserPkid == Convert.ToInt32(userId)).FirstOrDefault();
            ViewBag.account = userInfo.AccountType;
            ViewBag.TownshipId = userInfo.TownshipId;
            if (userInfo.AccountType == "Super Admin")
            {
                StateDivisionCode = userInfo.StateDivisionId;
                var stateDivisionCodes = _context.TbStateDivision.Where(x => x.StateDivisionCode == userInfo.StateDivisionId).ToList();
                ViewData["StateDivision"] = new SelectList(stateDivisionCodes, "StateDivisionCode", "StateDivision", stateDivisionCodes[0].StateDivisionCode);
            }
            else if (userInfo.AccountType == "Head Admin")
            {
                var stateDivisionCodes = _context.TbStateDivision.Select(x => new { x.StateDivision, x.StateDivisionCode }).ToList();
                ViewData["StateDivision"] = new SelectList(stateDivisionCodes, "StateDivisionCode", "StateDivision");
            }
            else if (userInfo.AccountType == "User")
            {
                TownshipCode = _context.TbTownAndDivision.Where(x => x.TownCode == userInfo.TownshipId).Select(x => x.TownCode).FirstOrDefault();
                StateDivisionCode = userInfo.StateDivisionId;
                TownshipCode = TownshipCode == null ? "0" : TownshipCode;
                var stateDivisionCodes = _context.TbStateDivision.Where(x => x.StateDivisionCode == userInfo.StateDivisionId).ToList();
                ViewData["StateDivision"] = new SelectList(stateDivisionCodes, "StateDivisionCode", "StateDivision", stateDivisionCodes[0].StateDivisionCode);

            }

            TempData["TownshipCode"] = TownshipCode;
            TempData["StateDivisionCode"] = StateDivisionCode;
            var pageSize = _pagination.PageSize;
           
            // var EmployeeCode = _context.TbEmployee.Where(x => x.SerialNumber == SerialNumber).Select(x => x.EmployeeCode).FirstOrDefault();

            var accounts = _accountRegisterServices.GetAccount(StateDivisionCode, TownshipCode, null);
            return Ok(accounts);
        }
        [HttpGet]
        public async Task<IActionResult> ExcelExportForIndex()
        {

            string? TownshipCode = TempData["TownshipCode"] == null ? null : TempData["TownshipCode"].ToString();
            string? StateDivisionCode = TempData["StateDivisionCode"] == null ? null : TempData["StateDivisionCode"].ToString();
            string? UserNameorEmail=TempData["UsernameOrEmail"] == null ? null : TempData["UsernameOrEmail"].ToString();
            var accounts = _accountRegisterServices.GetAccount(StateDivisionCode, TownshipCode,UserNameorEmail).ToList();
            var package = new ExcelPackage();

            // Add a new worksheet to the package
            var worksheet = package.Workbook.Worksheets.Add("Data");
            worksheet.Cells[1, 1].Value = "တိုင်းဒေသကြီး";
            worksheet.Cells[1, 2].Value = "မြို့နယ်";
            worksheet.Cells[1, 3].Value = "အမည်";
            worksheet.Cells[1, 4].Value = "User Name or Email";

            for (int i = 0; i < accounts.Count; i++)
            {
                worksheet.Cells[i + 2, 1].Value = accounts[i].StateDivision;
                worksheet.Cells[i + 2, 2].Value = accounts[i].Township;
                worksheet.Cells[i + 2, 3].Value = accounts[i].Name;
                worksheet.Cells[i + 2, 4].Value = accounts[i].UsernameOrEmail;
            }
            var stream = new MemoryStream();
            package.SaveAs(stream);

            // Return the stream as a file
            stream.Position = 0;
            return File(stream, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "AccountRegisterForIndex.xlsx");
        }

    }
}
