<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="task_27_1_2025.addBook1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Add Book</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container bg-primary d-flex flex-column align-items-center justify-content-center w-50 mt-5 p-5">
                <h2 class="text-white">Add Book</h2>
                <label class="text-white">Book ID:</label>
                <asp:TextBox ID="bookId" runat="server" CssClass="form-control" />
                <br />
                <label class="text-white">Book Name:</label>
                <asp:TextBox ID="bookName" runat="server" CssClass="form-control" />
                <br />
                <label class="text-white">Book Type:</label>
                <asp:TextBox ID="bookType" runat="server" CssClass="form-control" />
                <br />
                <label class="text-white">Book Level:</label>
                <asp:TextBox ID="bookLevel" runat="server" CssClass="form-control" />
                <br />
                <asp:Button CssClass="btn btn-light" ID="add" runat="server" Text="Add Book" OnClick="add_Click" />
                <asp:Label ID="res" runat="server" CssClass="text-white mt-3" Visible="false"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>