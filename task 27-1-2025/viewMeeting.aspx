﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewMeeting.aspx.cs" Inherits="task_27_1_2025.viewMeeting" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table class="table">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">room name</th>
                        <th scope="col">location</th>
                        <th scope="col">capacity</th>
                    </tr>
                </thead>
                <tbody id="TableBody" runat="server">
                </tbody>
            </table>
        </div>
    </form>
</body>
</html>
