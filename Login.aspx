<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <section>
        <!--form-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4 col-sm-offset-1">
                    <div class="login-form">
                        <!--login form-->
                        <h2>Login to your account</h2>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Enter Username" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="form-control" ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="Red" ValidationGroup="a">*</asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="form-control" ID="txtPassword" Text="Password" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <a href="Passwordrecovery.aspx">Forget Password?</a><br />
                            <asp:Button ID="btnlogin" CssClass="btn btn-primary" class="login" runat="server" Text="Login" OnClick="btnlogin_Click" ValidationGroup="a" /><br />
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="a" />

                        </div>
                    </div>
                    <!--/login form-->
                </div>

                <div class="col-sm-1">
                    <h2 class="or">OR</h2>
                </div>
                <div class="col-sm-4">
                    <div class="signup-form">
                        <!--sign up form-->
                        <h2>New User Signup!</h2>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Firstname Required " ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                            <asp:TextBox CssClass="form-control" ID="txtFirstName" placeholder="First Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtLastName" ErrorMessage="Lastname Required" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtLastName" CssClass="form-control" placeholder="Last Name" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuser" ErrorMessage="Username Required" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                            <asp:TextBox ID="txtuser" CssClass="form-control" placeholder="Username" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="b">*</asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtemail" CssClass="form-control" placeholder="Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtemail" ErrorMessage="Email Required" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                             <asp:TextBox ID="txtAddrress" CssClass="form-control" placeholder="Address" runat="server"></asp:TextBox>
<%--                            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Enter valid Phone Number" ForeColor="Red" MaximumValue="10" MinimumValue="10" ValidationGroup="b">*</asp:RangeValidator>--%>
<%--                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhoneNumber" ErrorMessage="Enter Valid Phone Number" ForeColor="Red" ValidationExpression="^[0-9]{0,10}$" ValidationGroup="b">*</asp:RegularExpressionValidator>--%>
                            <%--<asp:TextBox ID="txtPhoneNumber" CssClass="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>--%>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtPass" ErrorMessage="Password Required" ForeColor="Red" ValidationGroup="b">*</asp:RequiredFieldValidator>
                           
                             <asp:TextBox ID="txtPass" CssClass="form-control" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtconfirmPass" ErrorMessage="Password MisMatch" ForeColor="Red" ValidationGroup="b">*</asp:CompareValidator>
                            <asp:TextBox ID="txtconfirmPass" CssClass="form-control" placeholder="ConfirmPassword" TextMode="Password" runat="server"></asp:TextBox>
                            <asp:Button ID="btnSignUp" CssClass="btn btn-primary" Text="SignUp" runat="server" OnClick="btnSignUp_Click" ValidationGroup="b" /><br />
                            <asp:Label ID="lblMessage" ForeColor="Red" runat="server"></asp:Label>
                            <asp:ValidationSummary ID="ValidationSummary2" runat="server" ForeColor="Red" ValidationGroup="b" />
                        </div>

                    </div>
                    <!--/sign up form-->
                </div>
            </div>
        </div>
    </section>
    <!--/form-->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

