<%@ Page Title="" Language="C#" MasterPageFile="~/sabit.Master" AutoEventWireup="true" CodeBehind="ürünler.aspx.cs" Inherits="E_Commerce.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
                <div style="width:100%">
                <div style="width:50%;float:left">
                    <p><%= item.Adi %></p>
               <p><%= item.Fiyati %> ₺</p>
                </div>
                <div style="width:50%;float:right">
                
                    <a class="btn btn-sm <%= sepet.Contains(item.Id)? "btn-success":"btn-primary"  %>" 
                        style="margin-top:10px" href="ürünler.aspx?action=<%= sepet.Contains(item.Id)? "sepettenkaldir":"sepetekle"  %>&id=<%= item.Id %>"> 
                        <%= sepet.Contains(item.Id)? "Sepete Eklendi":"Sepete Ekle"  %></a>  
                </div>
                </div>
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



          <hr>



          <div class="w3-row "> 
            <header class="w3-container w3-xlarge">
                <p class="w3-center">ÇİKOLATALAR</p>
              </header>

               <% foreach (var item in urunler.Where(s=>s.Kategori == E_Commerce.admin.UrunKategorileri.ÇİKOLATALAR.ToString())) { %>

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
                <p class="w3-center">ŞEKERLEMELER</p>
              </header>

               <% foreach (var item in urunler.Where(s=>s.Kategori == E_Commerce.admin.UrunKategorileri.ŞEKERLEMELER.ToString())) { %>

            <div class="w3-col l3 s6">
                <div class="w3-container">
            <a href=""><img src="/resimler/urunler/<%= item.Resim %>" style="width:280px" height="210px"></a>      
               <a class="yazi" href=""> <p><%= item.Adi %></p></a>  
                </div>
              </div>
<% } %>

              

                 
          </div>

          

</div>




</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
