<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Siparisler.aspx.cs" Inherits="E_Commerce.admin.Siparisler" MasterPageFile="~/admin/Admin.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form method="post" runat="server" enctype="multipart/form-data">


        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Sipariş Listesi</h3>

                        <div class="card-tools">
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-hover text-nowrap">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>SiparisNumarasi</th>
                                    <th>Ad</th>
                                    <th>Soyad</th>
                                    <th>EPosta</th>
                                    <th>Adres</th>
                                    <th>Ulke</th>
                                    <th>Sehir</th>
                                    <th>OdemeSekli</th>
                                    <th>ToplamTutar</th>
                                    <th>Detay</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% foreach (var item in siparisler)
                                    { %>
                                <tr>
                                    <td><%= item.Id %></td>
                                    <td><%= item.SiparisNumarasi %></td>
                                    <td><%= item.Ad %></td>
                                    <td><%= item.Soyad %></td>
                                    <td><%= item.EPosta %></td>
                                    <td><%= item.Adres %></td>
                                    <td><%= item.Ulke %></td>
                                    <td><%= item.Sehir %></td>
                                    <td><%= item.OdemeSekli %></td>
                                    <td><%= item.ToplamTutar %></td>
                                    <td><a href="SiparisDetay.aspx?SiparisNumarasi=<%= item.SiparisNumarasi %>" class="btn btn-primary btn-sm">Ürünleri Gör</a></td>
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
