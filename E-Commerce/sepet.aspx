<%@ Page Title="" Language="C#" MasterPageFile="~/sabit.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="E_Commerce.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">




    <style>
    </style>
    <!-- !PAGE CONTENT! -->
    <div class="w3-content" style="max-width: 1200px">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-12 col-md-offset-1">
                    <table class="table table-hover table-striped">
                        <thead class="thead-style">
                            <tr>
                                <th>Ürün</th>
                                <th class="text-center">Miktar</th>
                                <th class="text-center">Birim Fiyatı</th>
                                <th class="text-center">Ara Toplam</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>

                            <script>
                                var itemmiktar = [];
                            </script>

                            <% foreach (var item in urunler) { %>

                            <tr>
                                <td class="col-sm-8 col-md-12">
                                    <div class="media">
                                        <a class="thumbnail pull-left" href="#">
                                            <img class="media-object" src="/resimler/urunler/<%= item.Resim %>" style="width: 100px; height: 100px;">
                                        </a>
                                        <div class="media-body">
                                            <h4 class="media-heading ml-4 mt-5"><a href="#"><%= item.Adi %></a></h4>

                                        </div>
                                    </div>
                                </td>
                                <td class="col-sm-1 col-md-6" style="text-align: center">
                                    <input type="number" class="form-control" value="1" onchange="fiyathesapla(this,<%= item.Id %>,<%= item.Fiyati %>)" />
                                </td>
                                <td class="col-sm-1 col-md-6 text-center"><strong><%= item.Fiyati %>₺</strong></td>
                                <td class="col-sm-1 col-md-6 text-center"><strong class="itemtoplam" id="toplam_<%= item.Id %>"><%= item.Fiyati %>₺</strong></td>
                                <td class="col-sm-1 col-md-6">
                                    <a  href="sepet.aspx?action=urunkaldir&id=<%= item.Id %>" class="btn btn-sm btn-danger">
                                        <span class="glyphicon glyphicon-remove"></span>KALDIR
                                    </a>
                                </td>
                            </tr>
                            
                            <script>
                                itemmiktar.push({ id:<%= item.Id %>, miktar: 1 });
                            </script>
<% } %>

                            <script>
                                function fiyathesapla(current, id, fiyat) {
                                    $('#toplam_' + id).text((fiyat * parseInt(current.value)) + "₺");

                                    var itemtoplams = $('.itemtoplam').length;
                                    var geneltoplam = 0;
                                    for (var i = 0; i < itemtoplams; i++) {
                                        geneltoplam = geneltoplam  + parseFloat($('.itemtoplam')[i].innerText.replace("₺", ""))
                                    }
                                    $('#aratoplam').text(geneltoplam + "₺")
                                    $('#toplam').text((geneltoplam + 5) + "₺")

                                    var index = itemmiktar.findIndex(s => s.id == id);
                                    itemmiktar[index].miktar = parseInt(current.value);

                                    $('#odemeyap').attr("href", "Odeme.aspx?sepet=" + itemmiktar.map(s => s.id + ":" + s.miktar))
                                }
                            </script>

                            
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <h5>Ara Toplam</h5>
                                </td>
                                <td class="text-right">
                                    <h5><strong id="aratoplam"><%= urunler.Sum(s=>s.Fiyati) %>₺</strong></h5>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <h5>Kargo bedeli</h5>
                                </td>
                                <td class="text-right">
                                    <h5><strong>5₺</strong></h5>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <h3>Toplam</h3>
                                </td>
                                <td class="text-right">
                                    <h3><strong id="toplam"><%= urunler.Sum(s=>s.Fiyati)+5 %>₺</strong></h3>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td>
                                    <button type="button" class="btn custom">
                                        <%--<a href="ürünler.aspx"><span class="glyphicon glyphicon-shopping-cart"></span>ALIŞVERİŞE DEVAM ET
                                    --%></button>
                                </td>
                                <td>
                                    <button type="button" class="btn custom">
                                        <a id="odemeyap" href="Odeme.aspx">ÖDEME YAP <span class="glyphicon glyphicon-play"></span>
                                    </button>
                                </td>

                            </tr>
                        </tbody>
                    </table>
                </div>
                <!--col end-->
            </div>
            <!--row end-->
        </div>
        <!--container end-->

    </div>
    <!--w3-content(page content) end-->









</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
