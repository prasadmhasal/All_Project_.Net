<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="krish1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server" class="container-fluid">
        <div style="width:30%; margin-left:40%;margin-top:10%;">
        <div  style="border:2px solid black; padding:50px; border-radius:10px;">
                <div class="form-group">
                    <label for="exampleInputEmail1">Product Name</label>
                    <asp:TextBox ID="TextBox1" placeholder="Product Name " class="form-control" runat="server"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Product Catagory</label>
                    <asp:DropDownList ID="DropDownList1"  class="form-control" runat="server">
                        <asp:ListItem>phone</asp:ListItem>
                        <asp:ListItem>electronic</asp:ListItem>
                        <asp:ListItem>foods</asp:ListItem>
                        <asp:ListItem>cloths</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Product Image</label>
                    <asp:FileUpload ID="FileUpload1" placeholder="Product image"  class="form-control" runat="server" />
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Product Price</label>
                    <asp:TextBox ID="TextBox2" class="form-control" placeholder="Product Price " runat="server"></asp:TextBox>
                </div>
                <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Save" OnClick="Button1_Click" />
                
        </div>
      </div>
    </form>
</body>
</html>
