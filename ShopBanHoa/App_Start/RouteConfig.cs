using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShopBanHoa
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "TrangChu",
                url: "trang-Chu/{action}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "ShopBanHoa.Controllers" }

            );

            routes.MapRoute(
                name: "TinTuc",
                url: "tin-tuc/chi-tiet/{id}",
                defaults: new { controller = "New", action = "Detail", id = UrlParameter.Optional },
                namespaces: new[] { "ShopBanHoa.Controllers" }
            );

            routes.MapRoute(
                name: "HoaCuoi",
                url: "san-pham/chi-tiet/{id}",
                defaults: new { controller = "SanPham", action = "Detail", id = UrlParameter.Optional },
                namespaces: new[] { "ShopBanHoa.Controllers" }
            );
            routes.MapRoute(
                name: "About",
                url: "Ve-chung-toi/{action}",
                defaults: new { controller = "About", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "ShopBanHoa.Controllers" }
           );
            routes.MapRoute(
                name: "LienHe",
                url: "Lien-He/{action}",
                defaults: new { controller = "LienHes", action = "Create", id = UrlParameter.Optional },
                namespaces: new[] { "ShopBanHoa.Controllers" }
            );

            routes.MapRoute(
                name: "SanPham",
                url: "san-pham/{action}",
                defaults: new { controller = "SanPham", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "ShopBanHoa.Controllers" }
            );

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces :new [] {"ShopBanHoa.Controllers"}
            );
        }
    }
}
