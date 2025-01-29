<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addRoom.aspx.cs" Inherits="task_27_1_2025.addRoom" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />

</head>
<body>
    <form id="form1" runat="server">
        <div>

           <div class="container d-flex justify-content-center align-items-center vh-100">
            <div class="card shadow-lg p-4" style="width: 50%; border-radius: 20px;">
                <h2 class="text-center mb-4 text-primary">
                    <i class="bi bi-house-fill"></i> Add New Room
                </h2>
                <div class="mb-3">
                    <label for="roomId" class="form-label">Room ID:</label>
                    <asp:TextBox ID="roomId" runat="server" CssClass="form-control" placeholder="Enter Room ID"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="roomName" class="form-label">Room Name:</label>
                    <asp:TextBox ID="roomName" runat="server" CssClass="form-control" placeholder="Enter Room Name"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="roomLoc" class="form-label">Book Location:</label>
                    <asp:TextBox ID="roomLoc" runat="server" CssClass="form-control" placeholder="Enter Location"></asp:TextBox>
                </div>
                <div class="mb-3">
                    <label for="capacity" class="form-label">Capacity:</label>
                    <asp:TextBox ID="capacity" runat="server" CssClass="form-control" placeholder="Enter Room Capacity"></asp:TextBox>
                </div>
                <div class="text-center">
                    <asp:Button CssClass="btn btn-primary w-100" ID="add" runat="server" Text="Add Room" OnClick="add_Click" />
                </div>
                <asp:Label ID="res" runat="server" CssClass="text-success mt-3 d-block text-center" Visible="false"></asp:Label>
            </div>
        </div>
        </div>
    </form>
</body>
</html>
