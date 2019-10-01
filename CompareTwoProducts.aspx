<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CompareTwoProducts.aspx.cs" Inherits="CompareTwoProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .wrapper {
             margin: 0px auto;
            width: 700px;
        }
        
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div class="wrapper">
    <table class="auto-style1 table">
    <tr>
        <td class="auto-style7" colspan="2" rowspan="5">
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </td>
        <td class="auto-style1">compare with</td>
        <td class="auto-style2">compare with</td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:TextBox ID="txtCompare" placeholder="Search" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
        </td>
        <td>
            
            <div>
                <div>
                 <asp:TextBox ID="txtCompare1" placeholder="Search" runat="server"></asp:TextBox>
                <asp:Button ID="Search" runat="server" Text="Search" OnClick="Search_Click" />
               </div>
                <div style="max-height:200px; overflow-y:scroll;">
                    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" Text='<%#Eval("PhoneName") %>' runat="server"></asp:LinkButton> 
                        <asp:HiddenField ID="id1"  Value='<%#Eval("PhoneId") %>' runat="server" />
                             </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>
            
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            &nbsp;</td>
        <td>
           
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Label ID="lblPhone" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblPhone1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">
            <asp:Image ID="Image1" runat="server" Height="165px" Width="154px" />
           <%-- <asp:ImageButton ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' ID="ImageButton1" Height="212px" Width="160px" PostBackUrl='<%#"PhoneDetails.aspx?id="+Eval("PhoneId") %>' runat="server" />--%>
        </td>
        <td>
            <asp:Image ID="Image2" runat="server" Height="165px" Width="155px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Design</td>
        <td class="auto-style9">Dimension</td>
        <td class="auto-style1">
            <asp:Label ID="lblDimension" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblDimension1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" rowspan="4">&nbsp;</td>
        <td class="auto-style9">Materials</td>
        <td class="auto-style1">
            <asp:Label ID="lblMaterials" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblMaterials1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Color</td>
        <td class="auto-style1">
            <asp:Label ID="lblColor" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblColor1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style11">Biometrics</td>
        <td class="auto-style1">
            <asp:Label ID="lblBiometrics" runat="server"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblBiometrics1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">OS</td>
        <td class="auto-style1">
            <asp:Label ID="lblOS" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblOS1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Display</td>
        <td class="auto-style9">Physical Size</td>
        <td class="auto-style1">
            <asp:Label ID="lblPhysicalSize" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblPhysicalSize1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" rowspan="3">&nbsp;</td>
        <td class="auto-style9">Resolution</td>
        <td class="auto-style1">
            <asp:Label ID="lblResolution" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblResolution1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Pixel Density</td>
        <td class="auto-style1">
            <asp:Label ID="lblPixelDensity" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblPixelDensity1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Technology</td>
        <td class="auto-style1">
            <asp:Label ID="lblTechnology" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblTechnology1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Camera</td>
        <td class="auto-style9">Camera</td>
        <td class="auto-style1">
            <asp:Label ID="lblCamera" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblCamera1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" rowspan="8">&nbsp;</td>
        <td class="auto-style9">Flash</td>
        <td class="auto-style1">
            <asp:Label ID="lblFlash" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblFlash1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Aperature Size</td>
        <td class="auto-style1">
            <asp:Label ID="lblAperatureSize" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblAperatureSize1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Pixel Size</td>
        <td class="auto-style1">
            <asp:Label ID="lblPixelSize" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblPixelSize1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Hardware Features</td>
        <td class="auto-style1">
            <asp:Label ID="lblHardwareFeatures" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblHardwareFeatures1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Camcorder</td>
        <td class="auto-style1">
            <asp:Label ID="lblCamorder" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblCamorder1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Features</td>
        <td class="auto-style1">
            <asp:Label ID="lblFeatures1" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblFeatures11" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Front-facing Camera</td>
        <td class="auto-style1">
            <asp:Label ID="lblFrontFacingCamera" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblFrontFacingCamera1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Features</td>
        <td class="auto-style1">
            <asp:Label ID="lblFeatures2" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblFeatures22" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Hardware</td>
        <td class="auto-style9">System Chip</td>
        <td class="auto-style1">
            <asp:Label ID="lblSystemChip" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblSystemChip1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style10" rowspan="5"></td>
        <td class="auto-style11">Processor</td>
        <td class="auto-style1">
            <asp:Label ID="lblProcessor" runat="server"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:Label ID="lblProcessor1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Graphics Processor</td>
        <td class="auto-style1">
            <asp:Label ID="lblGraphicsProcessor" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblGraphicsprocessor1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">System Memory</td>
        <td class="auto-style1">
            <asp:Label ID="lblSystemMemory" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblSystemMemory1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Built-in Storage</td>
        <td class="auto-style1">
            <asp:Label ID="lblBuiltInStorage" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblBuiltInStorage1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Storage Expansion</td>
        <td class="auto-style1">
            <asp:Label ID="lblStorageExpansion" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblStorageExpansion1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">Battery</td>
        <td class="auto-style9">Capacity</td>
        <td class="auto-style1">
            <asp:Label ID="lblCapacity" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblCapacity1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8" rowspan="2">&nbsp;</td>
        <td class="auto-style9">Talk Time</td>
        <td class="auto-style1">
            <asp:Label ID="lblTalkTime" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblTalkTime1" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Standby Time</td>
        <td class="auto-style1">
            <asp:Label ID="lblStandbyTime" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblStandbyTime1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

