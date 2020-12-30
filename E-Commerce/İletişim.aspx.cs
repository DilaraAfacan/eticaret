using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        SqlConnection baglanti = new SqlConnection(@"Data Source=DESKTOP-TH5KH08\MERT; Initial Catalog=Pastahane; Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Visible = true;
            Label1.Text = "İletiniz Alınmıştır";

            baglanti.Open();

            SqlCommand cmd = new SqlCommand("Insert into İletişim(isim,email,telefon,mesaj) values ('" +TextBox3.Text+ "','" + TextBox2.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "')", baglanti);
             cmd.ExecuteNonQuery();

            Response.Redirect("İletişim.aspx");
            
            baglanti.Close();
          
        }
    }
}