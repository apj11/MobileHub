<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>
<html >

  <head>
   
 <meta charset="UTF-8">
 
   <title>Admin Login</title>
      <link href="assets/css/style.css" rel="stylesheet" />

   </head>
<body>

   
 
<form id="f1" runat="server">
 
 <header>Login</header>
 
 <label>Username <span>*</span></label>
 
  <asp:TextBox ID="lblAdminname" runat="server"></asp:TextBox>
 
 
 
 <label>Password <span>*</span></label>
 
 <asp:TextBox ID="tblPassword" runat="server"></asp:TextBox>
  
<br />
    <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="b1_Click" />

  <br />
    <asp:Label ID="l1" runat="server" Text=""></asp:Label>
</form>
    
    
  
  </body>
</html>
