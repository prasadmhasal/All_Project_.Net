<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="login.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid d-flex  justify-content-center">
            <div style="border: 2px solid black; padding: 50px; margin-top:10%; border-radius:20px">
                <div class="form-group">
                    <label for="exampleInputEmail1">Email address</label>
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Password</label>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="Login" OnClick="Button2_Click" />
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Create New Account</button>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Username</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Password</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                                

                            </div>
                            <div class="modal-footer">
           
                                <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Register" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
