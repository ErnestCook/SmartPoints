<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="showError.aspx.vb" Inherits="SmartPoints.showError" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:Panel ID="MessagePanel" runat="server" Height="100%"  Width="100%">
              <br />
    &nbsp;<asp:Label ID="Label1" runat="server" Text="Smart Points Error Page" Font-Size="16px" ForeColor="Red"></asp:Label>
    <br />
               <asp:TextBox ID="MessageTextBox" runat="server" Height="307px" ReadOnly="True" TextMode="MultiLine"
                   Width="97%"></asp:TextBox></asp:Panel>
</asp:Content>
