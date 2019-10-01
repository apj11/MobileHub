<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="contact-page" class="container">
    	<div class="bg">
	    	<div class="row">    		
	    					 		
			</div>   	
    		<div class="row">  	
	    		<div class="col-sm-8">
	    			<div class="contact-form">
	    				<h2 class="title text-center">Get In Touch</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<div>
				            <div class="form-group col-md-6">
				                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtTo" ErrorMessage="Invalid Email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				                <asp:TextBox ID="txtTo" CssClass="form-control" runat="server" Height="45px" Width="100%" placeholder="To"></asp:TextBox>
				            </div>
                            <div class="form-group col-md-12">
				             <asp:TextBox ID="txtSubject" CssClass="form-control"  runat="server" Height="45px" Width="100%" placeholder="Subject"></asp:TextBox>
				            </div>
                             <div class="form-group col-md-12">
				               
				                <asp:TextBox ID="txtMessage" CssClass="form-control"  runat="server" Height="120px" TextMode="MultiLine" Width="100%" placeholder="Message"></asp:TextBox> 
				            </div> 
				            <div class="form-group col-md-6">
				                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invallid Email" Font-Bold="False" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
				               <asp:TextBox ID="txtEmail" CssClass="form-control"  runat="server" Height="45px" Width="100%" placeholder=" Your Email"></asp:TextBox>
				            </div>
                            <div class="form-group col-md-6">
				                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPassword" ErrorMessage="Incorrect Password" ForeColor="Red"></asp:RequiredFieldValidator>
				               <asp:TextBox ID="txtPassword" CssClass="form-control"  runat="server" Height="45px" Width="100%" placeholder="Password" TextMode="Password"></asp:TextBox>
				            </div>
				            
				                                  
				            <div class="form-group col-md-12">
				                <asp:Button ID="btnSubmit" CssClass="btn btn-primary"  runat="server" Height="35px" Text="Submit" Width="20%" BackColor="#FF9900" OnClick="btnSubmit_Click" />
				                <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF9900"></asp:Label>
				            </div>
				        </div>
	    			</div>
	    		</div>
	    		<div class="col-sm-4">
	    			<div class="contact-info">
	    				<h2 class="title text-center">Contact Info</h2>
	    				<address>
	    					<p>Mobile Hub</p>
							<p>Kathmandu Nepal</p>
							<p>Mobile: +97755158812</p>
							<p>Email: mobilehub.smartphones@gmail.com</p>
	    				</address>
	    				<div class="social-networks">
	    					<h2 class="title text-center">Social Networking</h2>
							<ul>
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-google-plus"></i></a>
								</li>
							</ul>
	    				</div>
	    			</div>
    			</div>    			
	    	</div>  
    	</div>	
    </div>
</asp:Content>

