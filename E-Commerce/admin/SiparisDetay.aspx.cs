using E_Commerce.Managers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static E_Commerce.admin.Siparisler;

namespace E_Commerce.admin
{
    public partial class SiparisDetay : System.Web.UI.Page
    {
        public Siparis siparis = new Siparis();
        public List<Urun> urunler = new List<Urun>();

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection baglanti = DatabaseBaglanti.BaglantiGetir();
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Siparisler where SiparisNumarasi="+ Request.QueryString["SiparisNumarasi"].ToString(), baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    siparis = new Siparis
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
                    };
                }
            }
            List<int> sp = new List<int>();
            SqlCommand cmd2 = new SqlCommand(@"select UrunId from SiparisUrunler where SiparisNumarasi = "+ siparis.SiparisNumarasi, baglanti);
            using (SqlDataReader reader = cmd2.ExecuteReader())
            {
                while (reader.Read())
                {
                    sp.Add(reader.GetInt32(0));
                }
            }
            urunler = UrunManager.SepetUrunleriGetir(sp);

            baglanti.Close();
        }
    }
}