<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display:flex; justify-content:center;align-items:center">
             <div>
                 <div>
                    <h1>Regustration Form
                     </h1>
                     <asp:Label ID="Message" runat="server"></asp:Label>
                  </div>
                  <div>
                      <asp:Label ID="Firstname" runat="server" Text="First Name : "></asp:Label>
                      <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Uname" ErrorMessage="Fill The First Name " Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   </div>
                      <br />
                  <div> 
                      <asp:Label ID="LastName" runat="server" Text="Last Name : "></asp:Label>
                       <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Emailid" ErrorMessage="Last Name is requird " Font-Bold="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                   <div />
                      <br />
                       <div> 
                         <asp:Label ID="Email" runat="server" Text="Email : "></asp:Label>
                          <asp:TextBox ID="Emailid" runat="server"></asp:TextBox>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Emailid" ErrorMessage="Invalid Email Id " Font-Bold="True" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <div />
                           <br />
                           <div> 
                               <asp:Label ID="UserName" runat="server" Text="UserNmae : "></asp:Label>
                                <asp:TextBox ID="Uname" runat="server"></asp:TextBox>
                             <div />
                               <br />
                           <div> 
                               <div> 
                                  <asp:Label ID="Pass" runat="server" Text="Password : "></asp:Label>
                                   <asp:TextBox ID="Password" runat="server"></asp:TextBox>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Password" ErrorMessage="Invalid Password" Font-Bold="True" ForeColor="#CC0000" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@#$%^&amp;+=]).*$"></asp:RegularExpressionValidator>
                                <div />
                                   <br />
                                   <div> 
                                 <asp:Label ID="Confirm" runat="server" Text="Confirmpassword : "></asp:Label>
                                  <asp:TextBox ID="Confirmpass" runat="server"></asp:TextBox>
                                       <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Password" ControlToValidate="Confirmpass" ErrorMessage="Password is Not Match " Font-Bold="True" ForeColor="Red"></asp:CompareValidator>
                               <div />
                                 <br />
                              <div> 
                              <asp:Label ID="ContactId" runat="server" Text="Contact : "></asp:Label>
                              <asp:TextBox ID="Contact" runat="server"></asp:TextBox>
                                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="Contact" ErrorMessage="Contact Number must be 10 digits" ValidationExpression=" ^[+]?[ (]?[0-9]{3}[)]?[-s.]?[0-9]{3}[-s.]?[0-9]{4,6}$"></asp:RegularExpressionValidator>
                            <div />
                               <br />
                 <div />
            
            
         <div/>
             <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
             
        
    </form>
</body>
</html>
