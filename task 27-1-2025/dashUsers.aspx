<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashUsers.aspx.cs" Inherits="task_27_1_2025.dashUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Powers Of Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" 
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="text-center mt-3">Powers Of Students</h1>

            <div class="row d-flex justify-content-center">
                <!-- Card 1: Books -->
                <div class="card m-2" style="width: 18rem;">
                    <img src="books.jpg" class="card-img-top w-100" alt="Book" />
                    <div class="card-body">
                        <h5 class="card-title">Books</h5>
                        <p class="card-text">Explore our collection of books.</p>
                        <asp:Button CssClass="btn btn-primary" ID="goBook" runat="server" Text="See All Books" OnClick="goBook_Click" />
                    </div>
                </div>

                <!-- Card 2: Meeting Rooms -->
                <div class="card m-2" style="width: 18rem;">
                    <img src="meetinwg.jpg" class="card-img-top w-100" alt="Meeting Room" />
                    <div class="card-body">
                        <h5 class="card-title">Meeting Rooms</h5>
                        <p class="card-text">Reserve a meeting room for your discussions.</p>
                        <asp:Button CssClass="btn btn-primary" ID="goMeeting" runat="server" Text="See All Meeting Rooms" OnClick="goMeeting_Click" />
                    </div>
                </div>

                <!-- Card 3: Feedback System -->
                <div class="card m-2" style="width: 18rem;">
                    <img src="feedback.jpg" class="card-img-top w-100" alt="Feedback" />
                    <div class="card-body">
                        <h5 class="card-title">Feedback System</h5>
                        <p class="card-text">Provide your feedback on our services.</p>
                        <asp:Button CssClass="btn btn-primary" ID="goFeedback" runat="server" Text="Give Feedback" OnClick="goFeedback_Click" />
                    </div>
                </div>

                <!-- Card 4: Reserve a Room -->
                <div class="card m-2" style="width: 18rem;">
                    <img src="reserve.jpg" class="card-img-top w-100" alt="Reserve Room" />
                    <div class="card-body">
                        <h5 class="card-title">Reserve a Room</h5>
                        <p class="card-text">Book a room for your events.</p>
                        <asp:Button CssClass="btn btn-primary" ID="goReserve" runat="server" Text="Reserve Now" OnClick="goReserve_Click" />
                    </div>
                </div>
            </div>

            <!-- User Profile Section -->
            <div class="row d-flex justify-content-center">
                <div class="card m-2" style="width: 18rem;">
                    <div class="card-body">
                        <h5 class="card-title">User Profile</h5>
                        <p class="card-text">
                            <strong>Name:</strong> <asp:Label ID="UserName" runat="server"></asp:Label><br />
                            <strong>Email:</strong> <asp:Label ID="UserEmail" runat="server"></asp:Label>
                        </p>
                        <asp:Button CssClass="btn btn-primary" ID="goProfile" runat="server" Text="View Profile" OnClick="goProfile_Click" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
