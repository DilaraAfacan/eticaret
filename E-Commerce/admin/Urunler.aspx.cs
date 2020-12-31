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
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Urunler order by Id desc", baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    urunler.Add(new urun
                    { 
                        Id= reader.GetInt32(0), 
                        Adi= reader.GetString(1),
                        Fiyati = reader.GetDouble(2),
                        Stok = reader.GetInt32(3),
                        Resim = reader.GetString(4),
                        Aciklama = reader.GetString(5),
                    });
                }
            }

            baglanti.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"Insert into Urunler(Adi,Fiyati,Stok,Resim,Aciklama) 
                values ('" + Adi.Text + "'," + Fiyati.Text + "," + Stok.Text + ",'" + Resim.Text + "','" + Aciklama.Text + "')", baglanti);
            cmd.ExecuteNonQuery();

            Response.Redirect("Urunler.aspx");

            baglanti.Close();
        }

        protected void Duzenle_Click(object sender, CommandEventArgs e)
        {
            Id = int.Parse(e.CommandArgument.ToString());

            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Urunler where Id = "+Id, baglanti);
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