using Microsoft.AspNetCore.Mvc;
using test.Context;
using test.Models;

namespace test.Controllers
{
	public class StudentController : Controller
	{
		private readonly ApplicationDbContext db;
		public StudentController(ApplicationDbContext db) 
		{
			this.db = db;
		}
		public IActionResult Index()
		{
			var data = db.students.ToList();
			return View(data);
		}

		[HttpPost]
		public IActionResult AddStudent(Student s)
		{
			if(s == null)
			{
				return View();
			}
			else
			{
				db.students.Add(s);
				db.SaveChanges();
				return RedirectToAction("Index");
			}
			
		}

		
		public IActionResult DeleteStudent(int id)
		{
		    var data = db.students.Find(id);
			db.students.Remove(data);
			db.SaveChanges();
			return RedirectToAction("Index");
			
		}

    }
}
