using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce.admin
{
    public partial class Siparisler : System.Web.UI.Page
    {
        public class Siparis
        {
            public int Id { get; set; }
            public string Ad { get; set; }
            public string Soyad { get; set; }
            public string EPosta { get; set; }
            public string Adres { get; set; }
            public string Ulke { get; set; }
            public string Sehir { get; set; }
            public string OdemeSekli { get; set; }
            public double ToplamTutar { get; set; }
            public string SiparisNumarasi { get; set; }
        }
        public List<Siparis> siparisler = new List<Siparis>();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = DatabaseBaglanti.BaglantiGetir();
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Siparisler order by Id desc", baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    siparisler.Add(new Siparis
                    {
                        Id = reader.GetInt32(0),
                        Ad = reader.GetString(1),
                        Soyad = reader.GetString(2),
                        EPosta = reader.GetString(3),
                        Adres = reader.GetString(4),
                        Ulke = reader.GetString(5),
                        Sehir = reader.GetString(6),
                        OdemeSekli = reader.GetString(7),
                        ToplamTutar = reader.GetDouble(8),
                        SiparisNumarasi = reader.GetString(9),
                    });
                }
            }

            baglanti.Close();
        }
    }
}