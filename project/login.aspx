<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:flex; justify-content:center;align-items:center" >
            <div>      
           <div>
             <h1>Login Form
               </h1>
               <asp:Label ID="Message" runat="server" BorderColor="#00CC00"></asp:Label>
                </div>
                   <div>
                       <asp:Label ID="UserName" runat="server" Text="User Name : "></asp:Label>
                       <asp:TextBox ID="UName" runat="server"></asp:TextBox>
                    </div>
                   <br />
                 <div> 
                   <asp:Label ID="Pass" runat="server" Text="Password Name : "></asp:Label>
                    <asp:TextBox ID="PasswordId" runat="server"></asp:TextBox>
                <div />

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />

                 </div>
        <div />
    </form>
</body>
</html>
