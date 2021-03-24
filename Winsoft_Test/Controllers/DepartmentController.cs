using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Winsoft_Test.Models;

namespace Winsoft_Test.Controllers
{
    public class DepartmentController : Controller
    {
        WinsoftDBEntities1 db = new WinsoftDBEntities1();
        public ActionResult Index()
        {
            List<Department> departmentList = db.Departments.ToList();
            return View(departmentList);
        }

    //    public ActionResult Editdepartment(string Code, String Department)
    //    {
    //        string result = "Error! Order Is Not Complete!";
    //        if (Code != null && Department != null && order != null)
    //        {
    //            var cutomerId = Guid.NewGuid();
    //            Department model = new Department();
    //            model.Code = Code;
    //            model.Department1 = Department;

    //            db.Departments.

    //            foreach (var item in order)
    //            {
    //                var orderId = Guid.NewGuid();
    //                Order O = new Order();
    //                O.OrderId = orderId;
    //                O.ProductName = item.ProductName;
    //                O.Quantity = item.Quantity;
    //                O.Price = item.Price;
    //                O.Amount = item.Amount;
    //                O.CustomerId = cutomerId;
    //                db.Orders.Add(O);
    //            }
    //            db.SaveChanges();
    //            result = "Success! Order Is Complete!";
    //        }
    //        return Json(result, JsonRequestBehavior.AllowGet);
    //    }
    }
}