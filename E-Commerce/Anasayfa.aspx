<%@ Page Title="" Language="C#" MasterPageFile="~/sabit.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="E_Commerce.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="StyleSheet2.css" rel="stylesheet" />
    
    <!--slider başlangıcı-->

      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>

        <div class="carousel-inner" >
          <div class="carousel-item active">
            <img id="slider-id1" class="d-block w-100 h-80" src="..\E-Patisserie\anasayfa-resimler\anaresim.jpeg" alt="First slide">
          </div>
          <div class="carousel-item">
            <img id="slider-id1" class="d-block w-100 h-80" src="..\E-Patisserie\anasayfa-resimler\pasta9.jpeg" alt="Second slide">
          </div>
          <div class="carousel-item">
            <img id="slider-id1" class="d-block w-100 h-80" src="..\E-Patisserie\anasayfa-resimler\icecek2.jpeg" alt="Third slide">
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

        <!-- !PAGE CONTENT! -->
        <div class="w3-content" style="max-width:1200px" >
         <hr>
        


        <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">PASTALAR</p>
              </header>
                        <% foreach (var item in urunler.Where(s=>s.Kategori == E_Commerce.admin.UrunKategorileri.PASTALAR.ToString())) { %>

            <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="/resimler/urunler/<%= item.Resim %>" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""> <p><%= item.Adi %></p></a>  
                </div>
              </div>
<% } %>

              
          </div>


          <hr>


          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">KAHVALTILIKLAR</p>
              </header>

              <% foreach (var item in urunler.Where(s=>s.Kategori == E_Commerce.admin.UrunKategorileri.KAHVALTILIKLAR.ToString())) { %>

            <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="/resimler/urunler/<%= item.Resim %>" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""> <p><%= item.Adi %></p></a>  
                </div>
              </div>
<% } %>

              
          </div>

          <hr>

          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">TATLI-TUZLU ATIŞTIRMALILAR</p>
              </header>


               <% foreach (var item in urunler.Where(s=>s.Kategori == E_Commerce.admin.UrunKategorileri.TATLI_TUZLU_ATIŞTIRMALIKLAR.ToString())) { %>

            <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="/resimler/urunler/<%= item.Resim %>" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""> <p><%= item.Adi %></p></a>  
                </div>
              </div>
<% } %>

              
          </div>



          <hr>



          
          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">İÇECEKLER</p>
              </header>


               <% foreach (var item in urunler.Where(s=>s.Kategori == E_Commerce.admin.UrunKategorileri.İÇECEKLER.ToString())) { %>

            <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="/resimler/urunler/<%= item.Resim %>" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""> <p><%= item.Adi %></p></a>  
                </div>
              </div>
<% } %>

             
          
          </div>




</div>

    <!--Anasayfa container için script kodları bölümü-->

    </asp:Content>
