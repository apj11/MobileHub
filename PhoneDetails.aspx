<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="PhoneDetails.aspx.cs" Inherits="PhoneDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 600px;
        }
        .auto-style4 {
            height: 22px;
        }
        .auto-style6 {
            width: 106px;
        }
        .auto-style7 {
            width: 106px;
        }
        .auto-style8 {
            height: 21px;
        }
        .auto-style9 {
            width: 92px;
        }
        .wrapper {
             margin: 0px auto;
            width: 600px;
        }
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    
    <div class="wrapper">
    <table class="auto-style3 table" >
        <tr >
            <td class="auto-style8" colspan="3" style="text-align:center;">
                <asp:Label ID="lblPhone" runat="server"></asp:Label>
            </td>
        </tr>
        <tr >
            <td class="auto-style8" colspan="3" style="width:100%;display:flex;justify-content:center;">
                <asp:Image ID="Image1" runat="server" Height="165px" Width="154px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Design</td>
            <td class="auto-style7">Dimension</td>
            <td>
                <asp:Label ID="lblDimension" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="4">&nbsp;</td>
            <td class="auto-style6">Materials</td>
            <td class="auto-style4">
                <asp:Label ID="lblMaterials" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Colors</td>
            <td>
                <asp:Label ID="lblColors" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Biometrics</td>
            <td>
                <asp:Label ID="lblBiometrics" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">OS</td>
            <td>
                <asp:Label ID="lblOS" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Display</td>
            <td class="auto-style7">Physical Size</td>
            <td>
                <asp:Label ID="lblPhysicalSize" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="3">&nbsp;</td>
            <td class="auto-style7">Resolution</td>
            <td>
                <asp:Label ID="lblResolution" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Pixel Density</td>
            <td>
                <asp:Label ID="lblPixelDensity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Technology</td>
            <td>
                <asp:Label ID="lblTechnology" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Camera</td>
            <td class="auto-style7">Camera</td>
            <td>
                <asp:Label ID="lblCamera" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="8">&nbsp;</td>
            <td class="auto-style7">Flash</td>
            <td>
                <asp:Label ID="lblFlash" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Aperature Size</td>
            <td>
                <asp:Label ID="lblAperatureSize" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Pixel Size</td>
            <td>
                <asp:Label ID="lblPixelSize" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Hardware Features</td>
            <td>
                <asp:Label ID="lblHardwareFeatures" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Camrecorder</td>
            <td>
                <asp:Label ID="lblCamrecorder" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Features</td>
            <td>
                <asp:Label ID="lblFeatures1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Front-facing Camera</td>
            <td>
                <asp:Label ID="lblFrontFacingCamera" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Features</td>
            <td>
                <asp:Label ID="lblFeatures2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Hardware</td>
            <td class="auto-style7">System Chip</td>
            <td>
                <asp:Label ID="lblSystemChip" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="5">&nbsp;</td>
            <td class="auto-style7">Processor</td>
            <td>
                <asp:Label ID="lblProcessor" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Graphics processor</td>
            <td>
                <asp:Label ID="lblGraphicsProcessor" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">System Memory</td>
            <td>
                <asp:Label ID="lblSystemMemory" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Built-in Storage</td>
            <td>
                <asp:Label ID="lblBuiltInStorage" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Storage Expansion</td>
            <td>
                <asp:Label ID="lblStorageExpansion" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Battery</td>
            <td class="auto-style7">Capacity</td>
            <td>
                <asp:Label ID="lblCapacity" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" rowspan="3">&nbsp;</td>
            <td class="auto-style7">Talk Time</td>
            <td>
                <asp:Label ID="lblTalkTime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Standby Time</td>
            <td>
                <asp:Label ID="lblStandbyTime" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td>
                <asp:Button ID="btnCompare" runat="server" OnClick="btnCompare_Click" Text="Compare" />
            </td>
        </tr>
    </table>
        </div>

    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

