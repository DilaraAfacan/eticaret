using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace E_Commerce.Managers
{
    public class Urun
    {
        public int Id { get; set; }
        public string Adi { get; set; }
        public double Fiyati { get; set; }
        public int Stok { get; set; }
        public string Resim { get; set; }
        public string Aciklama { get; set; }

        public string Kategori { get; set; }
    }
    public class UrunManager
    {
        public static List<Urun> UrunleriGetir()
        {
            SqlConnection baglanti = DatabaseBaglanti.BaglantiGetir();
            List<Urun> urunler = new List<Urun>();
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Urunler order by Id desc", baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    urunler.Add(new Urun
                    {
                        Id = reader.GetInt32(0),
                        Adi = reader.GetString(1),
                        Fiyati = reader.GetDouble(2),
                        Stok = reader.GetInt32(3),
                        Resim = reader.GetString(4),
                        Aciklama = reader.GetString(5),
                        Kategori = reader.GetString(6),
                    });
                }
            }

            baglanti.Close();
            return urunler;
        }
        public static List<Urun> SepetUrunleriGetir(List<int> sepet)
        {
            if (!sepet.Any())
                return new List<Urun>();
            SqlConnection baglanti = DatabaseBaglanti.BaglantiGetir();
            List<Urun> urunler = new List<Urun>();
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"select * from Urunler where Id in ("+ string.Join(",", sepet.Distinct()) + ") order by Id desc", baglanti);
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    urunler.Add(new Urun
                    {
                        Id = reader.GetInt32(0),
                        Adi = reader.GetString(1),
                        Fiyati = reader.GetDouble(2),
                        Stok = reader.GetInt32(3),
                        Resim = reader.GetString(4),
                        Aciklama = reader.GetString(5),
                        Kategori = reader.GetString(6),
                    });
                }
            }

            baglanti.Close();
            return urunler;
        }
    }
}