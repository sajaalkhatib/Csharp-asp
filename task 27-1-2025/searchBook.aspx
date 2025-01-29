<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchBook.aspx.cs" Inherits="task_27_1_2025.searchBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h2>Search for a Book</h2>
            <div class="mb-3">
                <label for="searchBookID" class="form-label">Book ID:</label>
                <asp:TextBox ID="searchBookID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <asp:Button ID="searchButton" runat="server" Text="Search" OnClick="search_Click" CssClass="btn btn-primary" />
            <asp:Label ID="resultLabel" runat="server" CssClass="mt-3" Visible="false"></asp:Label>
        </div>
    </form>
</body>
</html>
