using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Winsoft_Test.Models;

namespace Winsoft_Test.Controllers
{
    public class NamesController : Controller
    {
        WinsoftDBEntities1 db = new WinsoftDBEntities1();
        public ActionResult Index()
        {
            List<Department> departmentList = db.Departments.ToList();
            return View(departmentList);
        }
    }
}