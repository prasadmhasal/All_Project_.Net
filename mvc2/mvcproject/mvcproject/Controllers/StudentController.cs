using mvcproject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvcproject.Controllers
{
    public class StudentController : Controller
    {
        // GET: Student
        public ActionResult Index()
        {
			StudentEntities2 db = new StudentEntities2();
            List<Student> stdList = db.Students.ToList(); 

			return View(stdList);
        }
    }
}