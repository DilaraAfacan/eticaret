using E_Commerce.Managers;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public List<Urun> urunler = new List<Urun>();
        public List<int> sepet = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var ids = (Session["sepet_urun_idler"] != null ? Session["sepet_urun_idler"].ToString() : "");
            if (!string.IsNullOrEmpty(ids))
                sepet = ids.Split(',').Select(s => int.Parse(s)).ToList();


            var action = Request.QueryString["action"];
            if (!string.IsNullOrEmpty(action) && action == "urunkaldir")
            {
                var id = int.Parse(Request.QueryString["id"]);
                sepet.Remove(id);
                Session["sepet_urun_idler"] = string.Join(",", sepet.Distinct());
            }

            urunler = UrunManager.SepetUrunleriGetir(sepet);

        }

    }
}