<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="notAuthorized.aspx.vb" Inherits="SmartPoints.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:Panel runat="server">       
          <asp:Label ID="Label1" runat="server" Text="User is Not Authorized for this page selected" Font-Size="18px" ForeColor="Red"></asp:Label>
     </asp:Panel>
        
</asp:Content>
