<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg.aspx.cs" Inherits="Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style=" justify-content:center;">
            <h1>Ragistration Form </h1>
            <div>
                <asp:Label ID="User" runat="server" Text="UserName"></asp:Label>
                <br />
                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            </div>
             <div>
                 <asp:Label ID="Email" runat="server" Text="Email"></asp:Label>
                 <br />
                 <asp:TextBox ID="EmailID" runat="server"></asp:TextBox>
              </div>
             <div>
                 <asp:Label ID="pass" runat="server" Text="Password"></asp:Label>
                 <br />
                 <asp:TextBox ID="Password" runat="server"></asp:TextBox>
             </div>
            <div>
                 <asp:Label ID="Conpass" runat="server" Text="ConfirmPassword"></asp:Label>
                <br />
                 <asp:TextBox ID="Conpassword" runat="server"></asp:TextBox>
            </div>
              <asp:Button ID="Button1" runat="server" Text="Button" />



        </div>
    </form>
</body>
</html>
