<%@ Page Language="C#" AutoEventWireup="true" CodeFile="validation.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>
                Validtaion Form
            </h1>
            <div>
            <asp:Label ID="label1" runat="server" Text="UserName"></asp:Label>
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="UserName" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
              
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Invalid Email Id " Font-Bold="True" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              
                 <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="Password" runat="server"></asp:TextBox>
               
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Password" ErrorMessage="RegularExpressionValidator" ValidationExpression="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}"></asp:RegularExpressionValidator>
               
                 <br />
            <asp:Label ID="Label4" runat="server" Text="Confirmpassword"></asp:Label>
            <asp:TextBox ID="ConfirmPassword" runat="server"></asp:TextBox>
                
                 <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" ErrorMessage="Invalid Password" Font-Bold="True" ForeColor="#000099"></asp:CompareValidator>
                
                 <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            </div>
        </div>
    </form>
</body>
</html>
