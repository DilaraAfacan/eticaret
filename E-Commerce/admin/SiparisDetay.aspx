<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiparisDetay.aspx.cs" Inherits="E_Commerce.admin.SiparisDetay"  MasterPageFile="~/admin/Admin.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" enctype="multipart/form-data">


        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Sipariş Ürün Listesi</h3>

                        <div class="card-tools">
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover text-nowrap">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <td><%= siparis.Id %></td>
                                </tr>
                                <tr>
                                    <th>SiparisNumarasi</th>
                                    <td><%= siparis.SiparisNumarasi %></td>
                                </tr>
                                <tr>
                                    <th>Ad</th>
                                    <td><%= siparis.Ad %></td>
                                </tr>
                                <tr>
                                    <th>Soyad</th>
                                    <td><%= siparis.Soyad %></td>
                                </tr>
                                <tr>
                                    <th>EPosta</th>
                                    <td><%= siparis.EPosta %></td>
                                </tr>
                                <tr>
                                    <th>Adres</th>
                                    <td><%= siparis.Adres %></td>
                                </tr>
                                <tr>
                                    <th>Ulke</th>
                                    <td><%= siparis.Ulke %></td>
                                </tr>
                                <tr>
                                    <th>Sehir</th>
                                    <td><%= siparis.Sehir %></td>
                                </tr>
                                <tr>
                                    <th>OdemeSekli</th>
                                    <td><%= siparis.OdemeSekli %></td>
                                </tr>
                                <tr>
                                    <th>ToplamTutar</th>
                                    <td><%= siparis.ToplamTutar %></td>
                                </tr>
                            </thead>
                            
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
        <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-header">
                                    <h3 class="card-title">Ürün Listesi</h3>

                                    <div class="card-tools">
                                    </div>
                                </div>
                                <!-- /.card-header -->
                                <div class="card-body table-responsive p-0">
                                    <table class="table table-hover text-nowrap">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Resim</th>
                                                <th>Adı</th>
                                                <th>Fiyatı</th>
                                                <th>Stok</th>
                                                <th>Kategori</th>
                                                <th>Açıklama</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% foreach (var item in urunler)
                                            { %>
                                            <tr>
                                                <td><%= item.Id %></td>
                                                <td>
                                                    <img style="height: 50px" src="/resimler/urunler/<%= item.Resim %>" /></td>
                                                <td><%= item.Adi %></td>
                                                <td><%= item.Fiyati %></td>
                                                <td><%= item.Stok %></td>
                                                <td><%= item.Kategori %></td>
                                                <td><%= item.Aciklama %></td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.card-body -->
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
        <!-- /.card -->
    </form>
</asp:Content>
