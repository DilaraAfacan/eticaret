<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Giriş.aspx.cs" Inherits="E_Commerce.WebForm1" %>


<!DOCTYPE html>
<html>
<head>
    <link href="StyleSheet1.css" rel="stylesheet" />

	<title>E-Patisseri | Giriş Yap </title>

	<style type="text/css">
		* {box-sizing: border-box}

		body{
			background:url("resimler/giris-yap-background-img.jpeg") no-repeat center;
			background-size: 1350px 700px;
			background-attachment: fixed;
      font-family: Arial, Helvetica, sans-serif;
		}

	</style>
</head>
<body>
    

   <div class="content-girisyap">
       <form id="form1" runat="server">
       <div class="content-img-girisyap"></div>
      
        <div class="container">
        
         
            <asp:TextBox ID="TextBox2" runat="server" placeholder="E-mail adresi"></asp:TextBox>
          
            <asp:TextBox ID="TextBox3" runat="server" type="password" placeholder="Şİfre"></asp:TextBox>
          <div class="content-button">
             
             
            <asp:Button ID="Button1" class="girisbtn-girisyap" runat="server" Text="GİRİŞ" OnClick="Button1_Click" />
            <asp:Button ID="Button2" class="uyeolbtn-girisyap" runat="server" Text="ÜYE OL" OnClick="Button2_Click" />
          </div>
        </div>
           
       </form>
       
   </div>
  
</body>
</html>