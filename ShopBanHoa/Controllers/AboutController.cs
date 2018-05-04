using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopBanHoa.Models;

namespace ShopBanHoa.Controllers
{
    public class AboutController : Controller
    {
        FlowEntities db = new FlowEntities();

        // GET: About
        public ActionResult Index()
        {

            return View();

        }
        public ActionResult Getgioithieu()
        {
            var v = from t in db.Gioithieux
                    where t.hide == true
                    orderby t.order ascending
                    select t;
            return PartialView(v.ToList());
        }
    }
}