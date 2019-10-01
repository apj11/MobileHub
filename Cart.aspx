<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div>
        <p>You have <asp:Label ID="lblQuantity" runat="server" ForeColor="Red"></asp:Label>
    &nbsp;items on your cart&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Home.aspx">Continue shopping</asp:HyperLink></p>
         <div>

              <table class="auto-style1">
                  <tr>
                      <td>
                          <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="153px" HorizontalAlign="Center" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="1031px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="S.No">
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="PhoneName" HeaderText="Phone Name" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" />
               <asp:TemplateField HeaderText="Image">
                   <ItemTemplate>
                       <asp:Image ID="Image1" ImageUrl='<%#"~/PhoneImages/"+Eval("Photo") %>' Height="100px" Width="100px" runat="server" />
                   </ItemTemplate>
               </asp:TemplateField>
                <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                      </td>
                  </tr>
                  <tr>
                      <td>
                          <span class="pull-right"><asp:Button ID="btnCheckOut" runat="server" CssClass="row" Text="Check Out" OnClick="btnCheckOut_Click" /></span>
                      </td>
                  </tr>
              </table>

        
         

              </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

