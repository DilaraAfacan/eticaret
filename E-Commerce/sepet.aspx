<%@ Page Title="" Language="C#" MasterPageFile="~/sabit.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="E_Commerce.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    



    <style>

    </style>
        <!-- !PAGE CONTENT! -->
        <div class="w3-content" style="max-width:1200px" >
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
                                  <th> </th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td class="col-sm-8 col-md-12">
                                  <div class="media">
                                      <a class="thumbnail pull-left" href="#"> <img class="media-object" src="..\E-Patisserie\anasayfa-resimler\pasta1.jpeg" style="width: 100px; height: 100px;"> </a>
                                      <div class="media-body">
                                          <h4 class="media-heading ml-4 mt-5"><a href="#"> Frambuazlı Cheesecake</a></h4>
                                                                                   
                                      </div>
                                  </div></td>
                                  <td class="col-sm-1 col-md-6" style="text-align: center">
                                  <input type="email" class="form-control" id="exampleInputEmail1" value="3">
                                  </td>
                                  <td class="col-sm-1 col-md-6 text-center"><strong>5.00₺</strong></td>
                                  <td class="col-sm-1 col-md-6 text-center"><strong>14.61₺</strong></td>
                                  <td class="col-sm-1 col-md-6">
                                  <button type="button" class="btn custom">
                                      <span class="glyphicon glyphicon-remove"></span> KALDIR
                                  </button></td>
                              </tr>
                              <tr>
                                  <td class="col-md-6">
                                  <div class="media">
                                      <a class="thumbnail pull-left" href="#"> <img class="media-object" src="..\E-Patisserie\anasayfa-resimler\kahvalti1.jpeg" style="width: 100px; height: 100px;"> </a>
                                      <div class="media-body">
                                          <h4 class="media-heading ml-4 mt-5"><a href="#">E-Patisserie Kahvaltı Tabağı</a></h4>  
                                 </div>
                                  </div></td>
                                  <td class="col-md-1" style="text-align: center">
                                  <input type="email" class="form-control" id="exampleInputEmail1" value="2">
                                  </td>
                                  <td class="col-md-1 text-center"><strong>4.99₺</strong></td>
                                  <td class="col-md-1 text-center"><strong>9.98₺</strong></td>
                                  <td class="col-md-1">
                                  <button type="button" class="btn custom">
                                      <span class="glyphicon glyphicon-remove"></span> KALDIR
                                  </button></td>
                              </tr>
                              <tr>
                                <td class="col-md-6">
                                <div class="media">
                                    <a class="thumbnail pull-left" href="#"> <img class="media-object" src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu1.jpg" style="width: 100px; height: 100px;"> </a>
                                    <div class="media-body">
                                        <h4 class="media-heading ml-4 mt-5"><a href="#">Ay Çöreği</a></h4>  
                               </div>
                                </div></td>
                                <td class="col-md-1" style="text-align: center">
                                <input type="email" class="form-control" id="exampleInputEmail1" value="2">
                                </td>
                                <td class="col-md-1 text-center"><strong>4.99₺</strong></td>
                                <td class="col-md-1 text-center"><strong>9.98₺</strong></td>
                                <td class="col-md-1">
                                <button type="button" class="btn custom">
                                    <span class="glyphicon glyphicon-remove"></span> KALDIR
                                </button></td>
                            </tr>
                              <tr>
                                  <td>  </td>
                                  <td>   </td>
                                  <td>   </td>
                                  <td><h5>Ara Toplam</h5></td>
                                  <td class="text-right"><h5><strong>24.59₺</strong></h5></td>
                              </tr>
                              <tr>
                                  <td>   </td>
                                  <td>   </td>
                                  <td>   </td>
                                  <td><h5>Kargo bedeli</h5></td>
                                  <td class="text-right"><h5><strong>6.94₺</strong></h5></td>
                              </tr>
                              <tr>
                                  <td>   </td>
                                  <td>   </td>
                                  <td>   </td>
                                  <td><h3>Toplam</h3></td>
                                  <td class="text-right"><h3><strong>31.53₺</strong></h3></td>
                              </tr>
                              <tr>
                                  <td>   </td>
                                  <td>   </td>
                                  <td>   </td>
                                  <td>
                                  <button type="button" class="btn custom">
                                  <a href="ürünler.aspx"> <span class="glyphicon glyphicon-shopping-cart"></span> ALIŞVERİŞE DEVAM ET
                                  </button></td>
                                  <td>
                                  <button type="button"    class="btn custom"><a href="ödeme.aspx">
                                      ÖDEME YAP <span class="glyphicon glyphicon-play"></span>
                                  </button></td>
                                  
                              </tr>
                          </tbody>
                      </table>
                  </div> <!--col end-->
              </div> <!--row end-->
          </div> <!--container end-->

</div> <!--w3-content(page content) end-->


   






</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
