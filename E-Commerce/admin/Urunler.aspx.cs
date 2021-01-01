using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.admin
{
    public partial class Urunler : System.Web.UI.Page
    {
        public int Id { get; set; }
        public string Duzenle { get; set; } = "collapsed-card";
        public class urun
        {
            public int Id { get; set; }
            public string Adi { get; set; }
            public double Fiyati { get; set; }
            public int Stok { get; set; }
            public string Resim { get; set; }
            public string Aciklama { get; set; }
        }
        SqlConnection baglanti = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog=Pastahane;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        public List<dynamic> urunler = new List<dynamic>();
        protected void Page_Load(object sender, EventArgs e)
        {
            SilButton.Visible = false;
            string id = Request.QueryString["Id"];
            if (!string.IsNullOrEmpty(id))
            {
                Id = int.Parse(id);
                if ((Session["Urunler_Id"] == null || string.IsNullOrEmpty(Session["Urunler_Id"].ToString())))
                    Duzenle_Click(Request.QueryString["Id"]);
            }


            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Urunler order by Id desc", baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    urunler.Add(new urun
                    {
                        Id = reader.GetInt32(0),
                        Adi = reader.GetString(1),
                        Fiyati = reader.GetDouble(2),
                        Stok = reader.GetInt32(3),
                        Resim = reader.GetString(4),
                        Aciklama = reader.GetString(5),
                    });
                }
            }

            baglanti.Close();
        }
        protected void Kaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            string sql;
            if (Id == 0) sql = @"Insert into Urunler(Adi,Fiyati,Stok,Resim,Aciklama) 
                values ('" + Adi.Text + "'," + Fiyati.Text + "," + Stok.Text + ",'" + Resim.Text + "','" + Aciklama.Text + "')";
            else sql = @"update Urunler set Adi = '" + Adi.Text + @"',Fiyati= " + Fiyati.Text + @",Stok=" + Stok.Text + @",Resim='" + Resim.Text +
                    @"',Aciklama='" + Aciklama.Text + "' where Id = " + Id;

            SqlCommand cmd = new SqlCommand(sql, baglanti);
            cmd.ExecuteNonQuery();
            Session["Urunler_Id"] = null;

            Response.Redirect("Urunler.aspx");

            baglanti.Close();
        }

        protected void Sil_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"delete Urunler where Id = " + Id, baglanti);
            cmd.ExecuteNonQuery();
            Session["Urunler_Id"] = null;

            Response.Redirect("Urunler.aspx");

            baglanti.Close();
        }

        protected void Duzenle_Click(string id)
        {
            Duzenle = "";
            SilButton.Visible = true;
            Session["Urunler_Id"] = id;

            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Urunler where Id = " + Id, baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    Adi.Text = reader.GetString(1);
                    Fiyati.Text = reader.GetDouble(2).ToString();
                    Stok.Text = reader.GetInt32(3).ToString();
                    Resim.Text = reader.GetString(4);
                    Aciklama.Text = reader.GetString(5);
                }
            }

            baglanti.Close();
        }
    }
}