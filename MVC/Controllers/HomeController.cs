using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC.Controllers
{
	public class HomeController : Controller
	{
		public ActionResult Index()
		{
			return View();
		}

		public ActionResult About()
		{
			ViewBag.Message = "Your application description page.";

			return View();
		}

		public ActionResult Contact()
		{
			ViewBag.Message = "Your contact page.";

			return View();
		}
		public ActionResult Rergistraion()
		{
			ViewBag.Message = "Your Rergistraion page.";

			return View();

		}
		public ActionResult profile()
		{
			ViewBag.Message = "Your  profile page.";

			return View();

		}
	}
}