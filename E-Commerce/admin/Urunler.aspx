﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="E_Commerce.admin.Urunler" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>E- Patisserie</title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/admin/assets/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/admin/assets/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
    <!-- Site wrapper -->
    <div class="wrapper">
        <!-- Navbar -->
        <nav class="main-header navbar navbar-expand navbar-white navbar-light">
            <!-- Left navbar links -->
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
                </li>
            </ul>


        </nav>
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="../../index3.html" class="brand-link">
                <img src="/admin/assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
                <span class="brand-text font-weight-light">E- Patisserie</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar">
                <!-- Sidebar user (optional) -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="/admin/assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
                    </div>
                    <div class="info">
                        <a href="#" class="d-block">Alexander Pierce</a>
                    </div>
                </div>

                <!-- SidebarSearch Form -->
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                        <div class="input-group-append">
                            <button class="btn btn-sidebar">
                                <i class="fas fa-search fa-fw"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Sidebar Menu -->
                <nav class="mt-2">
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item">
                            <a href="#" class="nav-link">
                                <i class="nav-icon fas fa-tachometer-alt"></i>
                                <p>
                                    Ürünler
                <i class="right fas fa-angle-right"></i>
                                </p>
                            </a>
                           
                        </li>

                    </ul>
                </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Ürünler</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Anasayfa</a></li>
                                <li class="breadcrumb-item active">Ürünler</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                        <form method="post" runat="server">

                <!-- Default box -->
                <div class="card collapsed-card">
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
                                        <asp:TextBox ID="Adi" runat="server" type="text" class="form-control" placeholder="Adı" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Fiyati" runat="server" type="number" class="form-control" placeholder="Fiyatı" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Stok" runat="server" type="number"  class="form-control" placeholder="Stok Bilgisi" ></asp:TextBox>
                                    </div>
                                    <div class="form-group">
                                        <asp:TextBox ID="Resim" runat="server" type="text"  class="form-control" placeholder="Resim Ekle " ></asp:TextBox>
                                    </div>

                                    <div class="form-group">
                                        <asp:TextBox  TextMode="MultiLine" ID="Aciklama" runat="server" type="text"  class="form-control" placeholder="Açıklama" ></asp:TextBox>
                                    </div>

                                </div>
                                
                            </div>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer">
                        <asp:Button ID="Button1" runat="server" Text="Kaydet" class="btn btn-success btn-block" OnClick="Button1_Click" />
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
                      <th>Adı</th>
                      <th>Fiyatı</th>
                      <th>Stok</th>
                      <th>Açıklama</th>
                      <th>İşlemler</th>
                    </tr>
                  </thead>
                  <tbody>
<% foreach (var item in urunler) { %>
  <tr>
    <td><%= item.Id %></td>
    <td><%= item.Adi %></td>
    <td><%= item.Fiyati %></td>
    <td><%= item.Stok %></td>
    <td><%= item.Aciklama %></td>
    <td><asp:Button runat="server" Text="Düzenle" class="btn btn-primary btn-block" CommandArgument='<%= item.Id %>' CommandName='<%= item.Id %>' OnCommand="Duzenle_Click" /></td>
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

            </section>
            <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="/admin/assets/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="/admin/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="/admin/assets/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/admin/assets/dist/js/demo.js"></script>
</body>
</html>
