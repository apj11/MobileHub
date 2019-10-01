<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Sony.aspx.cs" Inherits="Sony" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }
        .wrapper {
            margin: 0px auto;
            width: 700px;
        }
        #ContentPlaceHolder2_DataList1
        {
            width:100%;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <div class="brands_products">
                            <!--brands_products-->
                            <h2>Brands</h2>
                            <div class="brands-name">
                                <ul class="nav nav-pills nav-stacked">
                                    <li><a href="Samsung.aspx"><%--<span class="pull-right">(32)</span>--%>Samsung</a></li>
                                    <li><a href="Apple.aspx"><%--<div class="pull-right">(5)</div>--%>Apple</a></li>
                                    <li><a href="Oneplus.aspx"><%--<asp:Image ID="Image1" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' runat="server" Height="212px" Width="160px" />--%>Oneplus</a></li>
                                    <li><a href="Sony.aspx"><%--<span class="pull-right">(32)</span>--%>Sony</a></li>
                                    <li><a href="HTC.aspx"><%--<div class="pull-right">(5)</div>--%>HTC</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--/brands_products-->
                        
                        
                    </div>
                </div>

                <div class="col-sm-9 padding-right">
                    <div class="features_items">
                        <!--features_items-->
                        <h2 class="title text-center">Sony Items</h2>
                        <div class="wrapper">
    <div style="width:700px">
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
            <ItemTemplate>
                <div style="padding:10px;">
                <table cellpadding="0" cellspacing="0" class="auto-style1" style="width: 160px">
                    <tr>
                        <td style="width:100%;display:flex;justify-content:center;">
                            <asp:ImageButton ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' ID="ImageButton1" Height="212px" Width="160px" PostBackUrl='<%#"PhoneDetails.aspx?id="+Eval("PhoneId") %>' runat="server" />
                            <%--<asp:Image ID="Image1" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' runat="server" Height="212px" Width="160px" />--%>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;" class="auto-style2">
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("PhoneName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="text-align:center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;">NRs.
                            <asp:Label ID="lblPrice" Text='<%#Eval("PhonePrice") %>' runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2" style="text-align:center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;">
                            <asp:DropDownList ID="ddlQuantity" runat="server" Width="45px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="btnAddToCart" runat="server" CommandName="addtocart" CommandArgument='<%#Eval("PhoneId") %>' Text="Cart" />
                        </td>
                    </tr>
                </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
        </div>
                    </div>
                   

                </div>
            </div>
        </div>
    </section>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

