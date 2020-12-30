<%@ Page Title="" Language="C#" MasterPageFile="~/sabit.Master" AutoEventWireup="true" CodeBehind="İletişim.aspx.cs" Inherits="E_Commerce.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="İletişim.css" rel="stylesheet" />

     <div class="container contact-form">
        <div class="contact-image">
            <img src="https://image.ibb.co/kUagtU/rocket_contact.png" alt="rocket_contact"/>
        </div>
        <form method="post" runat="server">
            <h3>Bize Ulaşın</h3>
           <div class="row">
                <div class="col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <div class="form-group">
                 <asp:TextBox ID="TextBox3" runat="server" type="text" class="form-control" placeholder="İsminiz *" value="" ></asp:TextBox>

                    </div>
                    <div class="form-group">
                   <asp:TextBox ID="TextBox2" runat="server" type="text" name="txtPhone" class="form-control" placeholder="E-mail *" value="" ></asp:TextBox>

                    </div>
                    <div class="form-group">
                       
                       
                        <asp:TextBox  ID="TextBox1" runat="server" type="text" name="txtPhone" class="form-control" placeholder="Telefon numaranız *" value="" ></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click" />
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:TextBox  ID="TextBox4" runat="server" type="text" name="txtPhone" class="form-control" placeholder="Mesajınız *" value="" TextMode="MultiLine" Width="300px" Height="50px"></asp:TextBox>
                        
                    </div>
                </div>
            </div>
        </form>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
</asp:Content>
