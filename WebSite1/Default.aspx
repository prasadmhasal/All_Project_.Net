<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="labelMessege" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="TextName" runat="server"  ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="TextEmail" runat="server" ></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"  />

        </div>
    </form>
</body>
</html>
