using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ShopBanHoa.Models;

namespace ShopBanHoa.Controllers
{
    public class SanPhamController : Controller
    {
        FlowEntities db = new FlowEntities();
        // GET: SanPham
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult getProduct()
        {
            ViewBag.meta = "san-pham";
            var v = from t in db.products
                    where t.hide == true && t.categoryid != 50
                    select t;
            return PartialView(v.ToList());
        }

        public ActionResult getProductHoaCuoi(int? id, string metatitle)
        {
            ViewBag.meta = metatitle;
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 1
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProductHoaTotNghiep()
        {
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 2
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProductHoaSN()
        {
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 3
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProductHoaThangChuc()
        {
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 4
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProductHoaKhaiTruong()
        {
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 5
                    select t;
            return PartialView(v.ToList());
        }
        public ActionResult getProductHoaVieng()
        {
            var v = from t in db.products
                    where t.hide == true && t.categoryid == 6
                    select t;
            return PartialView(v.ToList());
        }

        public ActionResult Detail(long id)
        {
            var v = from t in db.products
                    where t.id == id
                    select t;
            return View(v.FirstOrDefault());
        }
        public ActionResult GetChooseProduct()
        {
            var v = from t in db.Choose_products
                    where t.hide == true 
                    select t;
            return PartialView(v.FirstOrDefault());
        }

    }
}