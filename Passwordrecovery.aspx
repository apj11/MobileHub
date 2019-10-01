<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Passwordrecovery.aspx.cs" Inherits="Passwordrecovery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link href="bootstrap.css" rel="stylesheet" />
</head>
<body>
   <hr>
<div class="container">
    <div class="row">
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="text-center">
                          <h3><i class="fa fa-lock fa-4x"></i></h3>
                          <h2 class="text-center">Forgot Password?</h2>
                          <p>You can reset your password here.</p>
                            <div class="panel-body">
                              
                              <form class="form" runat="server">
                                <fieldset>
                                    <div class="form-group">
                                    <div class="input-group" style="display:flex; width:100%;">
                                      <span class="input-group-addon" style="padding:5px;width:30px"><i class="glyphicon glyphicon-user color-blue"></i></span>
                                        <asp:TextBox ID="txtUsername" CssClass="form-control"  placeholder="Username" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Email Address" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
                                  </div>
                                        </div>
                                        <div class="form-group">
                                    <div class="input-group" style="display:flex; width:100%;">
                                      <span class="input-group-addon" style="padding:5px;width:30px"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                        <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Please Enter Valid Email" ForeColor="Red" ValidationGroup="a" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                                      
                                    </div>
                                  </div>
                                  <div class="form-group">
                                     
                                       <asp:Button ID="btnRecoverpassword" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Send My Password" OnClick="btnRecoverpassword_Click" ValidationGroup="a" />
                                      <asp:Label ID="lbltxt" runat="server"></asp:Label>
                                      <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="a" />
                                  </div>
                                </fieldset>
                              </form>
                              
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
