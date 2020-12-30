using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-TH5KH08\MERT; Initial Catalog=Pastahane; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand cmd = new SqlCommand("Select * from Uyeol Where eposta='" + TextBox2.Text + "' and şifre='" + TextBox3.Text + "'", baglanti);
            SqlDataReader ds = cmd.ExecuteReader();
            if (ds.Read())
            {
                Session["eposta"] = ds["eposta"].ToString();
                Response.Redirect("Anasayfa.aspx");
            }
            else
            {
                Response.Write("Hatalı eposta ya da şifre girdiniz!");
            }
            baglanti.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Uye ol.aspx");
        }
    }
    }
