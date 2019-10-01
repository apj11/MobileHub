<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
        .auto-style2 {
        }
        .auto-style4 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:Label ID="Label1" runat="server" Text="Label" style="color: #FF0000">Your Order Information</asp:Label>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="180px" Width="648px" ShowFooter="True">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="S.No" />
            <asp:BoundField DataField="phonename" HeaderText="Phone Name" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" Height="30px" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" Height="40px" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label" style="color: #FF0000">Please Provide Your Information</asp:Label>
    <table class="auto-style1" >
        <tr>
            <td class="auto-style4">State</td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlState" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="StateName" DataValueField="StateId">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MobileHubDBConnectionString %>" SelectCommand="SELECT [StateId], [StateName] FROM [tblState]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">City</td>
            <td>
                <asp:DropDownList ID="ddlCity" runat="server" AppendDataBoundItems="True" DataSourceID="SqlDataSource2" DataTextField="CityName" DataValueField="CityId" EnableViewState="False">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MobileHubDBConnectionString %>" SelectCommand="SELECT [CityId], [CityName] FROM [tblCity] WHERE ([StateId] = @StateId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlState" Name="StateId" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Address</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Required" ForeColor="Red" ValidationGroup="c"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Mobile number</td>
            <td>
                <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="Enter valid Phone number" ForeColor="Red" ValidationExpression="^([9]{1})([0-9]{9})$" ValidationGroup="c"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm Order" ValidationGroup="c" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:HiddenField ID="HiddenDate" runat="server" />
            </td>
            <td>
                <asp:HiddenField ID="HiddenOrderId" runat="server" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

