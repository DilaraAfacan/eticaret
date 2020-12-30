<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Uye ol.aspx.cs" Inherits="E_Commerce.WebForm2" %>


<!DOCTYPE html>
<html>
<head>
    <link href="StyleSheet1.css" rel="stylesheet" />
	<title>E-Patisseri | Üye Ol</title>

	<style type="text/css">
		* {box-sizing: border-box}

		body{
			background:url("resimler/uye-ol-background-img.jpeg") no-repeat center;
			background-size: 1350px 700px;
			background-attachment: fixed;
      font-family: Arial, Helvetica, sans-serif;
		}

	</style>
</head>
<body>

   <div class="content-uyeol">
       <div class="content-img-uyeol"></div>
     <form id="form1" runat="server">
        <div class="container">
         <asp:TextBox ID="txtisim" runat="server" placeholder="İsim Soyisim"></asp:TextBox>
          <asp:TextBox ID="txtmail" runat="server" placeholder="E-mail adresi"></asp:TextBox>
            <asp:TextBox ID="txtsifre" runat="server" type="password" placeholder="Şİfre"></asp:TextBox>
      
                      <div class="content-button">
            <asp:Button ID="btnkaydol" class="uyeolbtn-girisyap" runat="server" Text="Kaydol" OnClick="btnkaydol_Click" />
          
          </div>
        </div>
       </form>
       
   </div>
  
</body>
</html>