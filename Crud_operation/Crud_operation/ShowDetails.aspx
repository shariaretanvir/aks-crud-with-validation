<%@ Page Title="" Language="C#" MasterPageFile="~/CrudMaster.Master" AutoEventWireup="true" CodeBehind="ShowDetails.aspx.cs" Inherits="Crud_operation.ShowDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center">
     <asp:GridView  ID="grd_show" DataKeyNames="Id" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" Width="435px">
         <Columns>
             <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="Crud.aspx?id={0}" Text="Edit" />
             <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="ShowDetails.aspx?id={0}" Text="Delete" />
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
    </div>
</asp:Content>
