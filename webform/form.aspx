<%@ Page Language="C#" AutoEventWireup="true" CodeFile="form.aspx.cs" Inherits="form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:CheckBox ID="CheckBox1" runat="server" />
            <asp:CheckBox ID="CheckBox2" runat="server" />
            <asp:CheckBox ID="CheckBox3" runat="server" />
            <asp:CheckBox ID="CheckBox4" runat="server" />
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">Mumbai</asp:ListItem>
                <asp:ListItem Value="2">Thane</asp:ListItem>
                <asp:ListItem Value="3">Pune</asp:ListItem>
                <asp:ListItem Value="4">Nashik</asp:ListItem>
            </asp:DropDownList>
            <asp:FileUpload ID="FileUpload1" runat="server"   />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.bing.com/images/search?q=page+life+cycle+in+asp.net&amp;mmreqh=%2bCWOZbh1hKZn7247Kz6CUiiFX6Xfe9fgLwMtY%2fepAII%3d&amp;cw=1488&amp;ch=708&amp;first=1">HyperLink</asp:HyperLink>
            <asp:Image ID="Image1" runat="server" Height="193px" ImageUrl="~/image/black_car_lamborghini_huracan_sport_supercar_car_4k_hd_cars-3840x2160.jpg" Width="32%" />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="gender"/>
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="gender" />
        </div>
        
    </form>
</body>
</html>
