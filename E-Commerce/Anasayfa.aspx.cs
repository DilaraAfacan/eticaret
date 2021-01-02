﻿using E_Commerce.Managers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        public List<Urun> urunler = new List<Urun>();

        protected void Page_Load(object sender, EventArgs e)
        {
            urunler = UrunManager.UrunleriGetir();
        }
    }
}