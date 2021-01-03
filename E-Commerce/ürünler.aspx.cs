using E_Commerce.Managers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class WebForm7 : Page
    {
        public List<Urun> tumurunler = new List<Urun>();
        public List<Urun> urunler = new List<Urun>();
        public List<int> sepet = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {

            var ids = (Session["sepet_urun_idler"] != null ? Session["sepet_urun_idler"].ToString() : "");
            if (!string.IsNullOrEmpty(ids))
                sepet = ids.Split(',').Select(s => int.Parse(s)).ToList();

            var action = Request.QueryString["action"];
            if (!string.IsNullOrEmpty(action) && action == "sepetekle")
            {
                var id = int.Parse(Request.QueryString["id"]);
                sepet.Add(id);
                Session["sepet_urun_idler"] = string.Join(",", sepet.Distinct());
            }
            tumurunler = UrunManager.UrunleriGetir();
            if (!string.IsNullOrEmpty(action) && action == "ara")
            {

                urunler = tumurunler.Where(s => s.Adi.ToLower().Contains(Request.QueryString["q"].ToLower())).ToList();
            }
            else
            {

                urunler = tumurunler;
            }

        }
    }
}