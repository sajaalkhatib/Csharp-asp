<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="task_27_1_2025.addBook1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add or Edit Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="card shadow-lg p-4" style="width: 40%; border-radius: 20px;">
                <h2 class="text-center text-primary mb-4">
                    <i class="bi bi-book-fill"></i> Add or Edit Book
                </h2>
                <div class="mb-3">
                    <label for="bookId" class="form-label">Book ID:</label>
                    <asp:TextBox ID="bookId" runat="server" CssClass="form-control" placeholder="Enter Book ID"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="bookName" class="form-label">Book Name:</label>
                    <asp:TextBox ID="bookName" runat="server" CssClass="form-control" placeholder="Enter Book Name"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="bookType" class="form-label">Book Type:</label>
                    <asp:TextBox ID="bookType" runat="server" CssClass="form-control" placeholder="Enter Book Type"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="bookLevel" class="form-label">Book Level:</label>
                    <asp:TextBox ID="bookLevel" runat="server" CssClass="form-control" placeholder="Enter Book Level"></asp:TextBox>
                </div>
                <div class="text-center">
                    <asp:Button CssClass="btn btn-primary w-100 mb-2" ID="add" runat="server" Text="Add Book" OnClick="add_Click" />
                    <asp:Button CssClass="btn btn-warning w-100" ID="edit" runat="server" Text="Edit Book" OnClick="edit_Click" />
                </div>
                <asp:Label ID="res" runat="server" CssClass="text-success mt-3 d-block text-center" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
