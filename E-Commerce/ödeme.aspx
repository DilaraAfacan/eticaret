<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ödeme.aspx.cs" Inherits="E_Commerce.ödeme" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.79.0">
    <title>Checkout example · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

    

    <!-- Bootstrap core CSS -->
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <div class="container">
      <main>
        <div class="py-5 text-center">
          <h2 style="color: blueviolet;">Ödeme Sayfası</h2>
          <p class="lead">-------------</p>
        </div>
    
        <div class="row g-3">
          <div class="col-md-5 col-lg-4 order-md-last">
            <h4 class="d-flex justify-content-between align-items-center mb-3">
              <span class="text-muted" style="color: blueviolet;">Toplam Fiyat</span>
             
            </h4>
            <ul class="list-group mb-3">
              
             
              <li class="list-group-item d-flex justify-content-between lh-sm">
                <div>
                  <h6 class="my-0">Kargo ücreti</h6>
                  <small class="text-muted"></small>
                </div>
                <span class="text-muted">5TL</span>
              </li>
              
              <li class="list-group-item d-flex justify-content-between">
                <span>Toplam</span>
                <strong>36.53 TL</strong>
              </li>
            </ul>
    
           
          </div>
          <div class="col-md-7 col-lg-8">
            <h4 class="mb-3">Adres Bilgileri</h4>
            <form class="needs-validation" novalidate>
              <div class="row g-3">
                <div class="col-sm-6">
                  <label for="firstName" class="form-label">İsim</label>
                  <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                  <div class="invalid-feedback">
                    Lütfen bu alanı boş bırakmayınız
                  </div>
                </div>
    
                <div class="col-sm-6">
                  <label for="lastName" class="form-label">Soyisim</label>
                  <input type="text" class="form-control" id="lastName" placeholder="" value="" required>
                  <div class="invalid-feedback">
                    lütfen bu alanı boş bırakmayınız
                  </div>
                </div>
    
               
    
                <div class="col-12">
                  <label for="email" class="form-label">E-posta<span class="text-muted"></span></label>
                  <input type="email" class="form-control" id="email" placeholder="12345@example.com">
                  <div class="invalid-feedback">
                    lütfen e-posta adresinizi giriniz
                  </div>
                </div>
    
                <div class="col-12">
                  <label for="address" class="form-label">Adres</label>
                  <input type="text" class="form-control" id="address" placeholder="lütfen adresinizi giriniz" required>
                  <div class="invalid-feedback">
                    Lütfen adresinizi giriniz
                  </div>
                </div>
    
                
    
                <div class="col-md-5">
                  <label for="country" class="form-label">Ülke</label>
                  <select class="form-select" id="country" required>
                    <option value="">Seçiniz...</option>
                    <option>Türkiye</option>
                    <option>Almanya</option>
                  </select>
                  <div class="invalid-feedback">
                    Lütfen bir Ülke seçiniz
                  </div>
                </div>
    
                <div class="col-md-4">
                  <label for="state" class="form-label">Şehir</label>
                  <select class="form-select" id="state" required>
                    <option value="">Seçiniz...</option>
                    <option>İstanbul</option>
                    <option>İzmir</option>
                    <option>Adana</option>
                    <option>Kayseri</option>
                    <option>Bursa</option>
                    <option>Mersin</option>
                    <option>Antalya</option>
                  </select>
                  <div class="invalid-feedback">
                    Lütfen bir şehir seçiniz
                  </div>
                </div>
    
                <div class="col-md-3">
                  <label for="zip" class="form-label">Alan kodu</label>
                  <input type="text" class="form-control" id="zip" placeholder="" required>
                  <div class="invalid-feedback">
                    Lütfen alan kodunu giriniz
                  </div>
                </div>
              </div>
    
              <hr class="my-4">
    
              
    
              <hr class="my-4">
    
              <h4 class="mb-3">Ödeme Seçenekleri</h4>
    
              <div class="my-3">
                <div class="form-check">
                  <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
                  <label class="form-check-label" for="credit">Kredi Kartı</label>
                </div>
                <div class="form-check">
                  <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
                  <label class="form-check-label" for="debit">Banka Kartı</label>
                </div>
                <div class="form-check">
                  <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
                  <label class="form-check-label" for="paypal">PayPal</label>
                </div>
              </div>
    
              <div class="row gy-3">
                <div class="col-md-6">
                  <label for="cc-name" class="form-label">Kart üzerindeki isim</label>
                  <input type="text" class="form-control" id="cc-name" placeholder="" required>
                  <small class="text-muted">Lütfen tam adınızı yazın</small>
                  <div class="invalid-feedback">
                    Lütfen bu alanı boş bırakmayınız
                  </div>
                </div>
    
                <div class="col-md-6">
                  <label for="cc-number" class="form-label">Kart Numarası</label>
                  <input type="text" class="form-control" id="cc-number" placeholder="" required>
                  <div class="invalid-feedback">
                    Lütfen bu alanı boş bırakmayınız
                  </div>
                </div>
    
                <div class="col-md-3">
                  <label for="cc-expiration" class="form-label">Son K.Tarihi</label>
                  <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
                  <div class="invalid-feedback">
                    Lütfen bu alanı boş bırakmayınız
                  </div>
                </div>
    
                <div class="col-md-3">
                  <label for="cc-cvv" class="form-label">CVV</label>
                  <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
                  <div class="invalid-feedback">
                    Lütfen bu alanı boş bırakmayınız
                  </div>
                </div>
              </div>
    
              <hr class="my-4">
    
              <button class="w-100 btn btn-primary btn-lg" style="background-color: blueviolet;color: white;" type="submit"><a href="Anasayfa.aspx"style="color: white;" >Ödeme yap</a></button><br><br><br><br><br>
            </form>
          </div>
        </div>
      </main>
    
      
    </div>
    
    
        <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    
          <script src="form-validation.js"></script>
      </body>
    </html>
    