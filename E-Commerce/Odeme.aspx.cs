using E_Commerce.Managers;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI.WebControls;

namespace E_Commerce
{
    public partial class Odeme : System.Web.UI.Page
    {
        public class SepetUrunDto
        {
            public int id { get; set; }
            public string miktar { get; set; }
        }
        SqlConnection baglanti = DatabaseBaglanti.BaglantiGetir();
        public List<Urun> urunler = new List<Urun>();
        public List<int> sepet = new List<int>();
        public List<SepetUrunDto> sepeturunler = new List<SepetUrunDto>();
        public double ToplamTutar = 5;
        public Dictionary<int, string> urunmikar = new Dictionary<int, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            var sepetqr = (Request.QueryString["sepet"] != null ? Request.QueryString["sepet"].ToString() : "");
            if(!string.IsNullOrEmpty(sepetqr))
            sepeturunler = sepetqr.Split(',').Select(s =>
            {
                var sp = s.Split(':');
                return new SepetUrunDto { id = int.Parse(sp[0]), miktar = sp[1] };
            }).ToList();

            var ids = (Session["sepet_urun_idler"] != null ? Session["sepet_urun_idler"].ToString() : "");
            if (!string.IsNullOrEmpty(ids))
                sepet = ids.Split(',').Select(s => int.Parse(s)).ToList();

            urunler = UrunManager.SepetUrunleriGetir(sepet);

            foreach (var item in urunler)
            {
                var miktar = "1";
                var sepeturun = sepeturunler.FirstOrDefault(s => s.id == item.Id);
                if (sepeturun != null) miktar = sepeturun.miktar;
                ToplamTutar += int.Parse(miktar) * item.Fiyati;
                urunmikar[item.Id] = miktar;
            }
        }

        protected void Kaydet_Click(object sender, EventArgs e)
        {
            var SiparisNumarasi = DateTime.Now.Ticks;
            baglanti.Open();

            SqlCommand cmd = new SqlCommand(@"Insert into Siparisler(Ad,Soyad,EPosta,Adres,Ulke,Sehir,OdemeSekli,ToplamTutar,SiparisNumarasi) 
                values ('" + Ad.Text + "','" + Soyad.Text + "','" + EPosta.Text + "','" + Adres.Text + "','" + Ulke.Text + @"',
                            '" + Sehir.Text + "','" + OdemeSekli.SelectedValue + "'," + ToplamTutar + ",'" + SiparisNumarasi + "')", baglanti);
            cmd.ExecuteNonQuery();

            foreach (var item in urunler)
            {
                var miktar = "1";
                var sepeturun = sepeturunler.FirstOrDefault(s => s.id == item.Id);
                if (sepeturun != null) miktar = sepeturun.miktar;

                SqlCommand cmd2 = new SqlCommand(@"Insert into SiparisUrunler(SiparisNumarasi,UrunId,Miktar,Fiyat) 
                values ('" + SiparisNumarasi + "'," + item.Id + "," + miktar + "," + item.Fiyati + ")", baglanti);
                cmd2.ExecuteNonQuery();
            }


            Response.Redirect("OdemeBasarili.aspx?SiparisNumarasi=" + SiparisNumarasi);

            baglanti.Close();
        }
    }
}