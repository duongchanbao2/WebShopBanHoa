using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopBanHoa.Models;

namespace ShopBanHoa.Controllers
{
    public class HomeController : Controller
    {
        FlowEntities db = new FlowEntities();
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

        public ActionResult getMenu()
        {
            var v = from t in db.menus
                    where t.hide == true
                    select t;
            return PartialView(v.ToList());
        }

        public ActionResult getBanner()
        {
            var v = from t in db.banners
                    where t.hide == true
                    select t;
            return PartialView(v.ToList());
        }

        public ActionResult getborder()
        {
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 50
                    select t;
            return PartialView(v.ToList());
        }
        
        public ActionResult getCH()
        {
            var v = from t in db.CuaHangs select t;
            return PartialView(v.ToList());
        }

        public ActionResult getCNhanh()
        {
            var v = from t in db.Categories
                    where t.hide == true && t.CN==true
                    select t;
            return PartialView(v.ToList());
        }
    }
}