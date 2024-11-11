using mvcproject.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace mvcproject.Controllers
{
    public class CurdController : Controller
    {

		private prasadmhasalEntities db = new prasadmhasalEntities();

		// GET: Curd
		public ActionResult Index()
        {

			return View(db.Infoes.ToList());
        }

        public ActionResult Details(int? Id)
        {
            if (Id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            }
            Info info = db.Infoes.Find(Id);
            if (Id == null)
            {
                return HttpNotFound();
            }
            return View(info);
        }

        public ActionResult Edit(int? Id)
        {
            if (Id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);

            }
            Info info = db.Infoes.Find(Id);
            if (Id == null)
            {
                return HttpNotFound();
            }
            return View(info);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,Name,LastName,Email,Contact")] Info info)
        {
            if (ModelState.IsValid)
            {
                db.Entry(info).State = EntityState.Modified;
				db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(info);

        }


        public ActionResult Delete(int? Id)
        {
            if (Id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest); 
            }
            Info info = db.Infoes.Find(Id);
            if (Id == null)
            {
                return HttpNotFound();
            }
            return View(info);
        }
		[HttpPost , ActionName("Delete")]
		[ValidateAntiForgeryToken]

        public ActionResult DelectConfirm(int id)
        {
            Info info = db.Infoes.Find(id);
			db.Infoes.Remove(info);
            db.SaveChanges();
            return RedirectToAction("Index");
		}







	}
}