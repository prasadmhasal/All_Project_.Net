using FatechUsignApi.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using System.Net.Security;
using System.Text;

namespace FatechUsignApi.Controllers
{
    public class EmpController : Controller
    { 
        HttpClient client;
        public EmpController() 
        {
            HttpClientHandler clientHandler = new HttpClientHandler();
            clientHandler.ServerCertificateCustomValidationCallback = (seneder , cert , chain , SslPolicyErrors ) => { return true; };
                client = new HttpClient(clientHandler);
        }
        public IActionResult Index()
        {
            List<Emp> empList = new List<Emp>();
            string url = "https://localhost:44328/api/Emp/GetEmp";
            HttpResponseMessage response = client.GetAsync(url).Result;
            if (response.IsSuccessStatusCode)
            {
                var jsondata = response.Content.ReadAsStringAsync().Result;
                var obj = JsonConvert.DeserializeObject<List<Emp>>(jsondata);
                if (obj != null)
                {
                    empList = obj   ;
                }
            }
            return View(empList);
        }

        public IActionResult PostEmp()
        {
            return View();
        }

        [HttpPost]
        public IActionResult PostEmp(Emp e)
        {
            string url = "https://localhost:44328/api/Emp/AddEmp";
            var jsondata = JsonConvert.SerializeObject(e);
            StringContent stringContent = new StringContent(jsondata , Encoding.UTF8 , "application/Json");
            HttpResponseMessage response = client.PostAsync(url, stringContent).Result;
            if (response.IsSuccessStatusCode) 
            {
                return RedirectToAction("Index");
            }
            return View();
        }


        public IActionResult Delete(int  id)
        {
            string url = " https://localhost:44328/api/Emp/DeleteEmp/";
            HttpResponseMessage res = client.DeleteAsync(url + id).Result;
            if (res.IsSuccessStatusCode) 
            {
                return RedirectToAction("Index");
            }

            return View();
        }

        //public IActionResult Edit(int id)
        //{
        //    string url = ""
        //}
    }
}
