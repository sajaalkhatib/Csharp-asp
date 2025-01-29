<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editProfile.aspx.cs" Inherits="task_27_1_2025.editProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                   <h2>Edit User Profile</h2>

            <div class="mb-3">
                <label for="username" class="form-label">Username:</label>
                <asp:TextBox ID="username" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label">Email:</label>
                <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label">Password:</label>
                <asp:TextBox ID="password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>

            <div class="mb-3">
                <label for="confirmPassword" class="form-label">Confirm Password:</label>
                <asp:TextBox ID="confirmPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
            </div>

            <asp:Button ID="saveButton" runat="server" Text="Save Changes" OnClick="saveButton_Click" CssClass="btn btn-primary" />
            <asp:Button ID="cancelButton" runat="server" Text="Cancel" OnClick="cancelButton_Click" CssClass="btn btn-secondary" />
        </div>
       
    </form>
</body>
</html>
