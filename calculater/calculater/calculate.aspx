 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="calculater.log" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="mt-5" style="border:2px solid black; border-radius:20px; padding:20px">
                <div class="form-group">
                    <label for="">Enter the first Number</label>
                    <asp:TextBox ID="FirstInput" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="">Enter the Second Number</label>
                    <asp:TextBox ID="SecondInput" class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-check">
                    <label class="form-check-label" class="form-control" for="exampleCheck1">Select the Option </label>
                    <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                        <asp:ListItem>Addition</asp:ListItem>
                        <asp:ListItem>Subtration</asp:ListItem>
                        <asp:ListItem>Multiplication</asp:ListItem>
                        <asp:ListItem>Divide</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </div>
                <div>
                    <asp:TextBox ID="Answer" class="form-control" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" class="btn btn-primary mt-2" runat="server" Text="Button" OnClick="Button1_Click" />
                </div>
                
            </div>
        </div>
    </form>
</body>
</html>
