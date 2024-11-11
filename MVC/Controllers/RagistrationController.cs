using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC.Controllers
{
    public class RagistrationController : Controller
    {
        // GET: Ragistration
        public ActionResult Index()
        {
            return View();
        }

		public ActionResult done()
		{
			return View();
		}
	}
}