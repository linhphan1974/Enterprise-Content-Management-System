using CaptureMVC.CustomAttribute;
using System.Web;
using System.Web.Mvc;

namespace CaptureMVC
{
    public class FilterConfig
    {
        public static void RegisterGlobalFilters(GlobalFilterCollection filters)
        {
            filters.Add(new HandleErrorAttribute());
            filters.Add(new CustomAuthorizeAttribute());
        }
    }
}