using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;

namespace E_Commerce.admin
{
    public enum UrunKategorileri
    {
        PASTALAR,
        KAHVALTILIKLAR,
        TATLI_TUZLU_ATIŞTIRMALIKLAR,
        İÇECEKLER,
        ÇİKOLATALAR,
        ŞEKERLEMELER
    }
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

            public string Kategori { get; set; }
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
            else
            {
                Session["Urunler_Id"] = null;
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
                        Kategori=reader.GetString(6),
                    });
                }
            }

            baglanti.Close();
        }
        protected void Kaydet_Click(object sender, EventArgs e)
        {
            string strFileName;
            string strFilePath;
            string strFolder;
            strFolder = Server.MapPath("../resimler/urunler/");
            // Retrieve the name of the file that is posted.
            strFileName = oFile.PostedFile.FileName;
            strFileName = Path.GetFileName(strFileName);
            if (oFile.Value != "")
            {
                // Create the folder if it does not exist.
                if (!Directory.Exists(strFolder))
                {
                    Directory.CreateDirectory(strFolder);
                }
                // Save the uploaded file to the server.
                strFilePath = strFolder + strFileName;
                if (!File.Exists(strFilePath))
                {
                    oFile.PostedFile.SaveAs(strFilePath);
                }
            }

            baglanti.Open();

            string sql;
            if (Id == 0) sql = @"Insert into Urunler(Adi,Fiyati,Stok,Resim,Aciklama,Kategori) 
                values ('" + Adi.Text + "'," + Fiyati.Text + "," + Stok.Text + ",'" + strFileName + "','" + Aciklama.Text + "','" + Kategori.SelectedValue + "')";
            else sql = @"update Urunler set Adi = '" + Adi.Text + @"',Fiyati= " + Fiyati.Text + @",Stok=" + Stok.Text + (string.IsNullOrEmpty(strFileName) ?"": @",Resim='" + strFileName) +
                    @"',Aciklama='" + Aciklama.Text + "',Kategori='" + Kategori.SelectedValue + "' where Id = " + Id;

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
                    Aciklama.Text = reader.GetString(5);
                    Kategori.SelectedValue = reader.GetString(6);
                    Kategori.Text = reader.GetString(6);
                }
            }

            baglanti.Close();
        }
    }
}