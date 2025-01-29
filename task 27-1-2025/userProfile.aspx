<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="task_27_1_2025.userProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
      <h2>User Profile</h2>
            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <asp:TextBox ID="email" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
            </div>
            <asp:Button ID="editButton" runat="server" Text="Edit Profile" OnClick="editButton_Click" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>
