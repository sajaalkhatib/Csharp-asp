
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="task_27_1_2025.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<head runat="server">
  <title></title>
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
    crossorigin="anonymous"
  />
  <style>
    /* تحكم في أبعاد الصور */
    .carousel-inner img {
      height: 500px; /* الطول المطلوب */
      object-fit: cover; /* لضمان ملء الصورة بشكل مناسب */
    }
  </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
  <nav class="navbar navbar-expand-lg bg-body-tertiary">
              <div class="container-fluid">
                <a class="navbar-brand" href="#">Navbar</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                      </a>
                      <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"/></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                  </ul>
                 <asp:Button CssClass="ms-3 btn btn-success" ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click" />
                 <asp:Button CssClass="ms-3 btn btn-success" ID="signin" runat="server" Text="Sign in" OnClick="signin_Click" />
                </div>
              </div>
            </nav>

            <!-- navbar end-->

            <!-- slider -->
            <div id="carouselExample" class="carousel slide">
              <div class="carousel-inner" style="max-height:70vh">
                <div class="carousel-item active">
                  <img src="img.jpg" class="d-block w-100" alt="..." style="height:70vh"/>
                </div>
                <div class="carousel-item">
                  <img src="img.jpg" class="d-block w-100" alt="..." style="height:70vh"/>
                </div>
                <div class="carousel-item">
                  <img src="img.jpg" class="d-block w-100" alt="..." style="height:70vh"/>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>


        </div>
       
    </form>
</body>
</html>
