using mvcproject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvcproject.Controllers
{
    public class EmpolyeeController : Controller
    {
        // GET: Empolyee
        public ActionResult Index()
        {
			prasadEntities1 dbContaxt = new prasadEntities1();
            List<empolyee> emplist = dbContaxt.empolyees.ToList();
            return View(emplist);
		}
    }
}