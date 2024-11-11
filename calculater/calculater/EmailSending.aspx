<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmailSending.aspx.cs" Inherits="calculater.EmailSending" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            TO
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Subject <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            Body
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <label for="fileAttachments">Attachments:</label>
            <input type="file" id="fileAttachments" name="fileAttachments" multiple="True" />
            <br /><br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
