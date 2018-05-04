using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopBanHoa.Models;

namespace ShopBanHoa.Controllers
{
    public class NewController : Controller
    {
        FlowEntities db = new FlowEntities();
       
        // GET: New
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult GetNew(int? id)
        {
            var v = from t in db.news
                    where t.hide == true
                    select t;
            return PartialView(v.ToList());

        }

        public ActionResult Detail(long id)
        {
            var v = from t in db.news
                    where t.id == id
                    select t;
            return View(v.FirstOrDefault());
        }
    }
}