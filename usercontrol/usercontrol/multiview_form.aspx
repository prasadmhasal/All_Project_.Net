<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="multiview_form.aspx.cs" Inherits="usercontrol.multiview_form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 39px;
        }
        .auto-style2 {
            margin-left: 31px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Last name"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            </asp:View>
            <br />
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label3" runat="server" Text="address"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="conatct"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                <asp:Button ID="Button3" runat="server" CssClass="auto-style1" OnClick="Button3_Click" Text="Button" Width="74px" />
            </asp:View>
            <br />
            <asp:View ID="View3" runat="server">
                <asp:Label ID="Label5" runat="server" Text="hsc%"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="SSC%"></asp:Label>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" style="height: 29px" Text="Button" Width="66px" />
                <asp:Button ID="Button5" runat="server" CssClass="auto-style2" OnClick="Button5_Click" Text="Button" />
            </asp:View>
            <br />
            <asp:View ID="View4" runat="server">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Button" />
                &nbsp;&nbsp;
                <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="Button" />
            </asp:View>
            <br />
        </asp:MultiView>
        <div>
        </div>
    </form>
</body>
</html>
