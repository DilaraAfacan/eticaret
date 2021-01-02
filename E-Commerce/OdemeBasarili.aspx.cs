using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class OdemeBasarili : System.Web.UI.Page
    {
        public string SiparisNo;
        protected void Page_Load(object sender, EventArgs e)
        {
            SiparisNo = Request.QueryString["SiparisNumarasi"];
        }
    }
}