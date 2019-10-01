<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Filter.aspx.cs" Inherits="Filter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 192px;
        }

        .wrapper {
            margin: 0px auto;
            width: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">

    <div class="wrapper">
        <div style="width: 700px;">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1">
                <ItemTemplate>
                    <div style="padding: 0px 30px 10px 20px;">
                        <table cellpadding="0" cellspacing="0" class="auto-style1">
                            <tr>
                                <td style="display: flex; justify-content: center;" class="nav-justified">
                                    <a href="#">
                                        <asp:ImageButton ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' ID="ImageButton1" Height="180px" Width="156px" PostBackUrl='<%#"PhoneDetails.aspx?id="+Eval("PhoneId") %>' runat="server" />
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px;">
                                    <a href="#">
                                    <asp:Label ID="lblPhoneName" runat="server" Text='<%#Eval("PhoneName") %>'></asp:Label>
                                    </a>
                                </td>
                                <tr>
                                    <td class="auto-style2" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px;">NRs.
                                        <asp:Label ID="lblPrice" Text='<%#Eval("PhonePrice") %>' runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style2" style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px;">
                                        <asp:DropDownList ID="ddlQuantity" runat="server" Width="45px">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem>5</asp:ListItem>
                                            <asp:ListItem></asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:Button ID="btnAddtoCart" runat="server" CommandArgument='<%# Eval("PhoneId")%>' CommandName="addtocart" Text="Cart" />
                                    </td>
                                </tr>
                            </tr>
                        </table>
                    </div>
                </ItemTemplate>

            </asp:DataList>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

