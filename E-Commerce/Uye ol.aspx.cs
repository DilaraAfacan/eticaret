using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

 


namespace E_Commerce
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-TH5KH08\MERT; Initial Catalog=Pastahane; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnkaydol_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand cmd = new SqlCommand("Insert into Uyeol (isimsoyisim,eposta,şifre) values ('" + txtisim.Text + "','" + txtmail.Text + "','" + txtsifre.Text + "')", baglanti);
            cmd.ExecuteNonQuery();

            Response.Redirect("Giriş.aspx");
            baglanti.Close();
        }
    }
}