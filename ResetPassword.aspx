<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResetPassword.aspx.cs" Inherits="ResetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>

                                <p>Reset your password.</p>
                                <form id="form1" runat="server">
                                    <div class="form-group">

                                        <asp:TextBox ID="txtUsername" CssClass="form-control" Style="margin: 5px;" placeholder="Username" runat="server"></asp:TextBox>
                                        <asp:TextBox ID="txtNewPassword" CssClass="form-control" Style="margin: 5px;" runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                        <asp:TextBox ID="txtconfirmPassword" runat="server" CssClass="form-control" Style="margin: 5px;" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>

                                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtconfirmPassword" ErrorMessage="Password Mismatch" ForeColor="Red" ValidationGroup="a">*</asp:CompareValidator>
                                        <asp:Button ID="btnChangePassword" Style="margin: 5px;" CssClass="btn btn-lg btn-primary btn-block" runat="server" Text="Change Password" ValidationGroup="a" OnClick="btnChangePassword_Click" />
                                        <asp:Label ID="txtMessage" runat="server"></asp:Label>
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="a" />
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
