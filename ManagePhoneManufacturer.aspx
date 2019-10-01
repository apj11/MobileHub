<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="ManagePhoneManufacturer.aspx.cs" Inherits="ManagePhoneManufacturer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
     <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
        <table class="auto-style1">
            <tr>
                <td colspan="2">Manage Manufacturer</td>
            </tr>
            <tr>
                <td>Name</td>
                <td>
                    <asp:TextBox ID="txtManufacturerName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" />
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

