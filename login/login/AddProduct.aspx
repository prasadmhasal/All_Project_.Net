<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="login.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="product name"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="product type"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>eletronics</asp:ListItem>
            <asp:ListItem>cloths</asp:ListItem>
            <asp:ListItem>food</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="price"></asp:Label>
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    </p>
    <asp:Label ID="Label5" runat="server" Text="image"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </p>
</asp:Content>
