<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 200px;
        }

        .wrapper {
            margin: 0px auto;
            width: 900px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <div class="wrapper">
        <div style="width: 900px;">
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" >
                <ItemTemplate>
                    <table cellpadding="0" cellspacing="0" class="auto-style1">
                        <tr>
                            <td style="width: 100%; display: flex; justify-content: center;">
                                <asp:Image ID="Image1" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' runat="server" Height="212px" Width="160px" />
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;" class="auto-style2">
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("PhoneName") %>'></asp:Label>
                            </td>
                        </tr>
                        <tr>
                        <td class="auto-style2" style="text-align:center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;">NRs.&nbsp;
                            <asp:Label ID="lblPrice" Text='<%#Eval("PhonePrice") %>' runat="server"></asp:Label>
                        </td>
                    </tr>
                        <tr>
                        <td class="auto-style2" style="text-align:center; background-color: #FFFFFF; color: #fe980f; font-weight: bolder; font-style: normal; padding-top: 10px; padding-bottom: 10px; height: 20px;">
                            <asp:DropDownList ID="ddlQuantity" runat="server" Width="45px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <asp:Button ID="btnAddtoCart" runat="server" CommandName="addtocart" CommandArgument='<%#Eval("PhoneId") %>' Text="Card" />
                        </td>
                    </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>

