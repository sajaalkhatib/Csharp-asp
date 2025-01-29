<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admen.aspx.cs" Inherits="task_27_1_2025.admen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Powers Of Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center">Powers Of Students</h1>
            <div class="row d-flex justify-content-center">
                <div class="card" style="width: 18rem;">
                    <img src="your-image-url-1.jpg" class="card-img-top w-100" alt="Description of image 1" />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button CssClass="btn btn-primary" ID="addBook" runat="server" Text="Add Books" OnClick="addBook_Click" />
                    </div>
                </div>

                <div class="card" style="width: 18rem;">
                    <img src="your-image-url-2.jpg" class="card-img-top w-100" alt="Description of image 2" />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button CssClass="btn btn-primary" ID="addroom" runat="server" Text="Add Room" OnClick="addroom_Click" />
                    </div>
                </div>

                <div class="card" style="width: 18rem;">
                    <img src="your-image-url-3.jpg" class="card-img-top w-100" alt="Description of image 3" />
                    <div class="card-body">
                        <h5 class="card-title">Search Book</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <asp:Button CssClass="btn btn-primary" ID="searchBook" runat="server" Text="Search Book" OnClick="searchBook_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>