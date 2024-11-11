using mvcproject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace mvcproject.Controllers
{
    public class InfoController : Controller
    {
        // GET: Info
        public ActionResult Index()
        {
			prasadmhasalEntities objc1 = new prasadmhasalEntities();
            List<Info> Infolist = objc1.Infoes.ToList();
			return View(Infolist);
        }
    }
}