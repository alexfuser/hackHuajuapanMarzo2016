using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using MedicalApp.Models;

namespace MedicalApp.Controllers
{
    

    public class HomeController : Controller
    {
        private MedicalAppDBContext db = new MedicalAppDBContext();

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Incidentes()
        {
            var incidente = db.incidente;
            return View(incidente.ToList());
            
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}