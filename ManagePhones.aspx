<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="ManagePhones.aspx.cs" Inherits="ManagePhones" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
      <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">Manage Phones</td>
            </tr>
            <tr>
                <td>Manufacturer </td>
                <td>
                    <asp:DropDownList ID="ddlManufacturer" runat="server" Width="123px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Price</td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Photo</td>
                <td>
                    <asp:FileUpload ID="PhotoUpload" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click1" />
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" />
                    <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </form>
</body>
</html>
</asp:Content>

