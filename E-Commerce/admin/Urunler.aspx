<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="E_Commerce.admin.Urunler" MasterPageFile="~/admin/Admin.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <form method="post" runat="server" enctype="multipart/form-data">

                    <!-- Default box -->
                    <div class="card <%= Duzenle %>">
                        <div class="card-header">
                            <h3 class="card-title">Ürün Ekle</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-plus"></i>
                                </button>
                                <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                                    <div class="form-group">
                                        <asp:TextBox ID="Adi" runat="server" type="text" class="form-control" placeholder="Adı"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Fiyati" runat="server" type="number" class="form-control" placeholder="Fiyatı"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Stok" runat="server" type="number" class="form-control" placeholder="Stok Bilgisi"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <label>Resim</label>
                                        <input id="oFile" type="file" runat="server" name="oFile">
                                    </div>
                                    <div class="form-group">
                                        <asp:DropDownList class="form-control" runat="server" ID="Kategori" AppendDataBoundItems="true">
                                            <asp:ListItem Text="PASTALAR" Value="PASTALAR" />
                                            <asp:ListItem Text="KAHVALTILIKLAR" Value="KAHVALTILIKLAR" />
                                            <asp:ListItem Text="TATLI_TUZLU_ATIŞTIRMALIKLAR" Value="TATLI_TUZLU_ATIŞTIRMALIKLAR" />
                                            <asp:ListItem Text="İÇECEKLER" Value="İÇECEKLER" />
                                            <asp:ListItem Text="ÇİKOLATALAR" Value="ÇİKOLATALAR" />
                                            <asp:ListItem Text="ŞEKERLEMELER" Value="ŞEKERLEMELER" />
                                        </asp:DropDownList>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox TextMode="MultiLine" ID="Aciklama" runat="server" type="text" class="form-control" placeholder="Açıklama"></asp:TextBox>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                            <asp:Button runat="server" type="submit" Text="Kaydet" class="btn btn-success btn-block" OnClick="Kaydet_Click" />
                            <asp:Button ID="SilButton" runat="server" Text="Sil" class="btn btn-danger btn-block" OnClick="Sil_Click" />
                        </div>
                        <!-- /.card-footer-->
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
                                                <th>İşlemler</th>
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
                                                <td><a href="Urunler.aspx?Id=<%= item.Id %>">Düzenle</a></td>
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
