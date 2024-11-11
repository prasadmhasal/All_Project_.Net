using Microsoft.AspNetCore.Mvc;
using TaskYadav.Context;
using TaskYadav.Models;

namespace TaskYadav.Controllers
{
    public class EmpController : Controller
    {
        private readonly ApplicationDbContext db;

        public EmpController(ApplicationDbContext db)
        {
            this.db = db;
        }

      
        public IActionResult Index()
        {
            var data = db.Emps.ToList();
            return View(data);
        }

        
        public IActionResult AddEmp(Emp e)
        {
                 db.Emps.Add(e);
                db.SaveChanges();
                return View();
        }
     
    }
}
