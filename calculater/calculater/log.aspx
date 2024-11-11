<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="calculater.log" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="border: 5px solid black; padding:20px;">

        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <asp:TextBox ID="TextBox1"  class="form-control" runat="server"></asp:TextBox>
        
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">Password</label>
            <asp:TextBox ID="TextBox2" class="form-control" runat="server"></asp:TextBox>

        </div>
        <asp:Button ID="Button1"  class="btn btn-primary" runat="server" Text="Button" />
    </div>
</form>>
</body>
</html>
