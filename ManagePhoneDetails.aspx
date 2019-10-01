<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="ManagePhoneDetails.aspx.cs" Inherits="ManagePhoneDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="c1" Runat="Server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            width: 8px;
        }
        .auto-style3 {
            width: 8px;
            height: 31px;
        }
        .auto-style4 {
            height: 31px;
        }
        .auto-style5 {
            width: 153px;
        }
        .auto-style6 {
            height: 31px;
            width: 153px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="3">Manage Details</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">Phone:</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlDetails" runat="server">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Design</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Dimensions</td>
                <td>
                    <asp:TextBox ID="txtDimension" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Materials</td>
                <td>
                    <asp:TextBox ID="txtMaterials" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Color</td>
                <td>
                    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Biometrics</td>
                <td>
                    <asp:TextBox ID="txtBiometrics" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">OS</td>
                <td>
                    <asp:TextBox ID="txtOS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Display</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Physical Size</td>
                <td>
                    <asp:TextBox ID="txtPhysicalSize" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Resolution</td>
                <td>
                    <asp:TextBox ID="txtResolution" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Pixel Density</td>
                <td>
                    <asp:TextBox ID="txtPixelDensity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Technology</td>
                <td>
                    <asp:TextBox ID="txtTechnology" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Camera</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Camera</td>
                <td>
                    <asp:TextBox ID="txtCamera" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Flash</td>
                <td>
                    <asp:TextBox ID="txtFlash" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Aperature Size</td>
                <td>
                    <asp:TextBox ID="txtAperatureSize" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Pixel Size</td>
                <td>
                    <asp:TextBox ID="txtPixelSize" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Hardware Features</td>
                <td>
                    <asp:TextBox ID="txtHardwareFeatures" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Camcorder</td>
                <td>
                    <asp:TextBox ID="txtCamcorder" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Features</td>
                <td>
                    <asp:TextBox ID="txtFeatures1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Front-facing camera</td>
                <td>
                    <asp:TextBox ID="txtFrontFacingCamera" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Features</td>
                <td>
                    <asp:TextBox ID="txtFeatures2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Hardware</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">System chip</td>
                <td>
                    <asp:TextBox ID="txtSystemChip" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Processor</td>
                <td>
                    <asp:TextBox ID="txtProcessor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style6">Graphics Processor</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtGraphicsProcessor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">System Memory</td>
                <td>
                    <asp:TextBox ID="txtSystemMemory" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Built-In Storage</td>
                <td>
                    <asp:TextBox ID="txtBuiltInStorage" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Storage Expansion</td>
                <td>
                    <asp:TextBox ID="txtStorageExpansion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Battery</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Capacity</td>
                <td>
                    <asp:TextBox ID="txtCapacity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Talk Time</td>
                <td>
                    <asp:TextBox ID="txtTalkTime" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">Stang-by Time</td>
                <td>
                    <asp:TextBox ID="txtStandbyTime" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="btnAddDetails" runat="server" OnClick="btnAddDetails_Click" Text="Add Details" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
</asp:Content>

