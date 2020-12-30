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


              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta1.jpeg" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""> <p>FRAMBUAZLI CHEESECAKE</p></a>  
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
           <a href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta2.jpeg" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""><p>KİRAZLI ÇİKOLATALI PASTA</p></a>  
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta3.jpeg" style="width:280px" height="210px"></a>    
             <a class="yazi" href=""><p>ÇİLEKLİ BROWNİE</p> </a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta4.jpeg" style="width:280px" height="210px"></a>
           <a class="yazi" href=""><p>MEYVELİ PASTA</p> </a>  
                </div>
              </div>


              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta5.jpg" style="width:280px" height="210px"></a>     
           <a class="yazi" href=""><p>MUZLU ÇİLEKLİ PASTA</p> </a>  
                </div>
              </div>


              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta6.jpeg" style="width:280px" height="210px"></a>     
              <a class="yazi" href=""><p>ÇİLEKLİ PASTA</p> </a>  
                </div>
              </div>

        

              <div class="w3-col l3 s6">
                <div class="w3-container">
              <a href=""></a>    <img src="..\E-Patisserie\anasayfa-resimler\pasta8.jpeg" style="width:280px" height="210px">
               <a class="yazi" href=""><p>CUPCAKE</p> </a>  
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""></a><img src="..\E-Patisserie\anasayfa-resimler\pasta9.jpeg" style="width:280px" height="210px">
               <a class="yazi" href=""><p>FRAMBUAZLI TART</p> </a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a href=""></a><img src="..\E-Patisserie\anasayfa-resimler\pasta10.jpeg" style="width:280px" height="210px">
               <a class="yazi" href=""><p>MEYVELİ BARDAK PASTA</p> </a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
              <a href=""></a>    <img src="..\E-Patisserie\anasayfa-resimler\pasta11.jpeg" style="width:280px" height="210px">
              <a class="yazi" href=""><p>ÇİLEKLİ BARDAK PASTA</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
                  <img src="..\E-Patisserie\anasayfa-resimler\pasta12.jpeg" style="width:280px" height="210px">
               <a class="yazi" href=""><p>ÇİLEKLİ VİŞNELİ BARDAK PASTA</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\pasta13.jpeg" style="width:280px" height="210px">
           <a class="yazi" href=""><p>ÇİLEKLİ DONDURMA</p></a> 
                </div>
              </div>
          </div>


          <hr>


          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">KAHVALTILIKLAR</p>
              </header>

              <div class="w3-col l3 s6">
                <div class="w3-container">
               <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti1.jpeg" style="width:280px" height="210px"></a> 
                 <a class="yazi" href=""><p>E-Patisserie Kahvaltı Tabağı</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
           <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti2.jpeg" style="width:280px" height="210px"></a> 
          <a class="yazi" href=""><p>Serpme Kahvaltı</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
         <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti3.jpeg" style="width:280px" height="210px"></a> 
           <a class="yazi" href=""><p>Simit, Açma, Poğaça</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti4.jpg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>Sahanda Yumurta</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti5.jpg" style="width:280px" height="210px"></a> 
         <a class="yazi" href=""><p>SİMİT TOST</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
           <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti6.jpeg" style="width:280px" height="210px"></a> 
           <a class="yazi" href=""><p>PANKEK</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\kahvalti7.jpeg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>SÜTLÜ SİMİT</p></a> 
                </div>
              </div>
          </div>

          <hr>

          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">TATLI-TUZLU ATIŞTIRMALILAR</p>
              </header>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu1.jpg" style="width:280px" height="210px"></a> 
          <a class="yazi" href=""><p>AY ÇÖREĞİ</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu2.jpg" style="width:280px" height="210px"></a> 
           <a class="yazi" href=""><p>MİNİ ÇÖREKLER</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu3.jpg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>KAKAOLU FINDIKLI KURABİYE</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu4.jpg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>ŞEKERLİ KURABİYELER</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
          <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu5.jpg" style="width:280px" height="210px"></a> 
        <a class="yazi" href=""><p>TEKLİ ÇİKOLATA TOPU</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu6.jpg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>PEYNİRLİ BÖREK</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
          <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu7.jpg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>TATLI TUZLU KURABİYELER</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
           <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu8.jpg" style="width:280px" height="210px"></a> 
           <a class="yazi" href=""><p>MACAR KEKİ</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\tatlıtuzlu9.jpg" style="width:280px" height="210px"></a> 
           <a class="yazi" href=""><p>E-PATİSSERİE ÖZEL KURABİYESİ</p></a> 
                </div>
              </div>
          </div>



          <hr>



          
          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">İÇECEKLER</p>
              </header>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek1.jpeg" style="width:280px" height="210px"></a> 
            <a class="yazi" href=""><p>LATTE</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
         <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek2.jpeg" style="width:280px" height="210px"></a> 
         <a class="yazi" href=""><p>TÜRK KAHVESİ YANINDA TATLI</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
            <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek3.jpeg" style="width:280px" height="210px"></a> 
          <a class="yazi" href=""><p>TÜRK KAHVESİ</p>
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
             <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek4.jpeg" style="width:280px" height="210px"></a> 
          <a class="yazi" href=""><p>PORTAKAL SUYU</p></a> 
                </div>
              </div>
              

              <div class="w3-col l3 s6">
                <div class="w3-container">
          <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek5.jpeg" style="width:280px" height="210px"></a> 
           <a class="yazi" href=""><p>LİMONATA</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
          <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek6.jpeg" style="width:280px" height="210px"></a> 
          <a class="yazi" href=""><p>PAPATYA ÇAYI</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
         <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek7.jpeg" style="width:280px" height="210px"></a> 
         <a class="yazi" href=""><p>BİTKİ ÇAYLARI</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
          <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek8.jpeg" style="width:280px" height="210px"></a> 
          <a class="yazi" href=""><p>ARABİCA KAHVE</p></a> 
                </div>
              </div>

              <div class="w3-col l3 s6">
                <div class="w3-container">
           <a class="yazi" href=""><img src="..\E-Patisserie\anasayfa-resimler\icecek9.jpeg" style="width:280px" height="210px"></a> 
             <a class="yazi" href=""><p>ROBUSTA KAHVE</p></a> 
                </div>
              </div>
          
          </div>




</div>

    <!--Anasayfa container için script kodları bölümü-->

    </asp:Content>
