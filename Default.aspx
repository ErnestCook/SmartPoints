<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="SmartPoints._Default" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

 <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            setInterval(function () {
                $('[id$=adr]').load(location.href + " #[id$=adr]", "" + Math.random() + "");
            }, 4000);
        });
    </script>

    <link href="Styles/Site.css" rel="stylesheet" type="text/css" />

     
  
    <table class="TopTable" >
    <tr>
    <td align="left" width="600"  valign="top" > <h2> Welcome to Smart Points from Alliance Credit Union!  </h2></td>
     <td >
     <table align="right" class="pts14Bold">
     <tr>
        <td  width="150"></td>
        <td  colspan="2"><asp:Label ID="lblName" runat="server" ></asp:Label></td>
     </tr>
     <tr>
         <td width="150"></td>
         <td ><asp:Label ID="Label1" runat="server" Text="Member Points" ></asp:Label></td>
         <td><asp:Label ID="lblPoints" runat="server" ></asp:Label></td>  
     </tr>
    </table>
    </td>
    </tr>
    
    </table>
    <p>
        &nbsp;
       
        <asp:LoginView ID="LoginView2" runat="server">
            <AnonymousTemplate>
              <table class="style2" width="100%">
            <tr>
                <td colspan ="3"> Welcome to Smart Points. To see your points, log into your account click <a href="Account/Login.aspx">here</a></td>
               
            </tr>
            <tr>
             
                <td > <div class="ads">
                    <asp:AdRotator ID="adr" AdvertisementFile="~/App_LocalResources/home.xml"
                    KeywordFilter="home"
                    Runat="server" />
                    </div>
                   
                    </td>
                    <td>
                    
                   
                   </td>
                <td>
                   
                    </td>
               
            </tr>
        </table>
                            
         
            </AnonymousTemplate>
            <LoggedInTemplate>
                Welcome and thank you for being a member of Smart Points.  
                
      <%--          Here is your current Smart Points statement:  --%>
                <br>
                <br></br>
                <%--               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false"
                DataSource='<%# GetData() %>'>
                <Columns> 
                    <asp:BoundField DataField="mDate" HeaderText="Last Transaction Date" DataFormatString="{0:d}"/> 
                    <asp:BoundField DataField="sPoints" HeaderText="First Name" />
                    </Columns>
                </asp:GridView>
--%><%--                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                    <LocalReport ReportPath="ACUrpt_MemberStatment.rdlc">
                    </LocalReport>
                </rsweb:ReportViewer>--%>
                <br />
                To see a full listing of the transactions affecting your balance, click
                <a href="Member/ACUTransactionDetails.aspx">here</a>
                </br>
             </LoggedInTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Teller">
                    <ContentTemplate>
                        Current Teller logged in: <asp:LoginName ID="LoginName2" runat="server" />
                        Redeem 


                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="member">
                    <ContentTemplate>
    <asp:LoginName ID="LoginName3" runat="server" /> thank you for being a member of Alliance Credit Union's 
    Smart Points.  Here is your current Smart Points statement:
                    {embedded report goes here}&nbsp;
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                .
                .
                .
<%--                <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                    Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                    WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt">
                    <LocalReport ReportPath="ACUrpt_MemberStatment.rdlc">
                    </LocalReport>
                </rsweb:ReportViewer>--%>
                <br />
 <%--                To see a full listing of the transactions affecting your balance, click 
<a href="Member/ACUTransactionDetails.aspx">here</a>
--%>
 
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
          
        </asp:LoginView>
       
    </p>
    <p>
        &nbsp;</p>
    <p>
      
    </p>
</asp:Content>
